Forum(#id, name, description, createdAt)
User(#id, name, password, description, isAdmin, createdAt)

Vote(↑#postId, ↑#commentId, ↑#userId, score)

Comment(#id, description, deleted, createdAt, ↑userId, ↑postId, ↑parentId)
Post(#id, title, description, deleted, createdAt, ↑userId, ↑forumId, ↑embedId)

Embed(#id, url, title, description, ↑mediaId)
Media(#id, url, ty‎pe, alt, width, height)