.class public Le/p/b/r;
.super Le/p/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/b/r$a;
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "orientation"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/p/b/r;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/p/b/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Le/p/b/x;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Le/p/b/x;->c:Landroid/net/Uri;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Le/p/b/x;I)Le/p/b/z$a;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    sget-object v8, Le/p/b/r$a;->f:Le/p/b/r$a;

    sget-object v9, Lcom/squareup/picasso/Picasso$d;->c:Lcom/squareup/picasso/Picasso$d;

    iget-object v2, v1, Le/p/b/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2
    iget-object v11, v0, Le/p/b/x;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 3
    :try_start_0
    sget-object v12, Le/p/b/r;->b:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v7

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 4
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v10, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v3

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7
    :cond_2
    throw v0

    :catch_0
    move-object v3, v6

    :catch_1
    if-eqz v3, :cond_3

    .line 8
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    move v10, v2

    .line 9
    :goto_3
    iget-object v3, v0, Le/p/b/x;->c:Landroid/net/Uri;

    invoke-virtual {v7, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x1

    if-eqz v3, :cond_4

    const-string v4, "video/"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v12, v11

    goto :goto_4

    :cond_4
    move v12, v2

    .line 11
    :goto_4
    invoke-virtual/range {p1 .. p1}, Le/p/b/x;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 12
    iget v2, v0, Le/p/b/x;->f:I

    iget v3, v0, Le/p/b/x;->g:I

    .line 13
    sget-object v4, Le/p/b/r$a;->d:Le/p/b/r$a;

    const/16 v5, 0x60

    if-gt v2, v5, :cond_5

    if-gt v3, v5, :cond_5

    :goto_5
    move-object v13, v4

    goto :goto_6

    .line 14
    :cond_5
    sget-object v4, Le/p/b/r$a;->e:Le/p/b/r$a;

    const/16 v5, 0x200

    if-gt v2, v5, :cond_6

    const/16 v2, 0x180

    if-gt v3, v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v13, v8

    :goto_6
    if-nez v12, :cond_7

    if-ne v13, v8, :cond_7

    .line 15
    iget-object v2, v1, Le/p/b/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 16
    iget-object v0, v0, Le/p/b/x;->c:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 17
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->p3(Ljava/io/InputStream;)Lv3/b0;

    move-result-object v0

    .line 18
    new-instance v2, Le/p/b/z$a;

    invoke-direct {v2, v6, v0, v9, v10}, Le/p/b/z$a;-><init>(Landroid/graphics/Bitmap;Lv3/b0;Lcom/squareup/picasso/Picasso$d;I)V

    return-object v2

    .line 19
    :cond_7
    iget-object v2, v0, Le/p/b/x;->c:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 20
    invoke-static/range {p1 .. p1}, Le/p/b/z;->d(Le/p/b/x;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 21
    iput-boolean v11, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 22
    iget v2, v0, Le/p/b/x;->f:I

    iget v3, v0, Le/p/b/x;->g:I

    iget v4, v13, Le/p/b/r$a;->b:I

    iget v6, v13, Le/p/b/r$a;->c:I

    move-object/from16 v16, v5

    move v5, v6

    const/4 v11, 0x0

    move-object/from16 v6, v16

    move-object v11, v7

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v7}, Le/p/b/z;->a(IIIILandroid/graphics/BitmapFactory$Options;Le/p/b/x;)V

    if-eqz v12, :cond_9

    if-ne v13, v8, :cond_8

    move-object/from16 v3, v16

    const/4 v2, 0x1

    goto :goto_7

    .line 23
    :cond_8
    iget v2, v13, Le/p/b/r$a;->a:I

    move-object/from16 v3, v16

    .line 24
    :goto_7
    invoke-static {v11, v14, v15, v2, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_8

    :cond_9
    move-object/from16 v3, v16

    .line 25
    iget v2, v13, Le/p/b/r$a;->a:I

    .line 26
    invoke-static {v11, v14, v15, v2, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_8
    if-eqz v2, :cond_a

    .line 27
    new-instance v0, Le/p/b/z$a;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v9, v10}, Le/p/b/z$a;-><init>(Landroid/graphics/Bitmap;Lv3/b0;Lcom/squareup/picasso/Picasso$d;I)V

    return-object v0

    .line 28
    :cond_a
    iget-object v2, v1, Le/p/b/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 29
    iget-object v0, v0, Le/p/b/x;->c:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 30
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->p3(Ljava/io/InputStream;)Lv3/b0;

    move-result-object v0

    .line 31
    new-instance v2, Le/p/b/z$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v9, v10}, Le/p/b/z$a;-><init>(Landroid/graphics/Bitmap;Lv3/b0;Lcom/squareup/picasso/Picasso$d;I)V

    return-object v2
.end method
