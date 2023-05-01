/** @format */

const db = require("../../database/mysql");
const { errorHandler } = require("../utils");
module.exports = {
  getPost: async (id) => {
    await db.select("*").from("blog_posts").where({ id }).catch(errorHandler);
  },
  getPosts: async (type, category_id) => {
    let qry = db
      .select(
        "blog_posts.id",
        "blog_posts.description",
        "blog-posts.author",
        "title",
        "image",
        "created_at",
        "updated_at",
        db.raw("GROUP_CONCAT(label) as categories"),
        db.raw("GROUP_CONCAT(blog_categories.id) as cat_ids")
      )
      .from("blog_posts")
      .leftJoin(
        "blog_post_categories",
        "blog_post.id",
        "blog_post-categories.post_id"
      )
      .leftJoin(
        "blog_categories",
        "blog_categoreis.id",
        "blog_post-categories.category_id"
      )
      .where({ active: 1 })
      .groupBy("blog_posts.id");

    qry = {
      trending: () =>
        qry
          .select(db.raw("COUNT(blog_post_likes.author_id) as likes"))
          .leftJoin(
            "blog_post_likes",
            "blog_post_likes.post_id",
            "blog_post.id"
          )
          .groupBy("blog_post.id")
          .orderBy("likes", "desc")
          .limit(5),

      fetaured: () => qry.whereIn("blog_post.id", [1, 2, 3, 4]),

      recent: () => qry.orderBy("updated_at", "desc").limit(5),
      default: () => qry,
    }[type || "default"];
  },
};
