.class public final Le/a/a/k/d0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/d0/a;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Lu3/e0;

.field public final c:Le/a/b0/q/b;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lu3/e0;Le/a/b0/q/b;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentStoreHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/d0/b;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/k/d0/b;->b:Lu3/e0;

    iput-object p3, p0, Le/a/a/k/d0/b;->c:Le/a/b0/q/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/GifEntity;)Lcom/truecaller/messaging/data/types/Entity;
    .locals 14

    const-string v0, "entity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    const-string v1, "$this$toHttpUrlOrNull"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "$this$toHttpUrl"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lu3/a0$a;

    invoke-direct {v2}, Lu3/a0$a;-><init>()V

    invoke-virtual {v2, v1, v0}, Lu3/a0$a;->f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {v2}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-object v7, v1

    :goto_0
    if-eqz v7, :cond_0

    .line 5
    new-instance v0, Le/a/a/k/c0/a;

    const-wide/16 v3, -0x1

    iget-wide v5, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "Uri.EMPTY"

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    iget-object v11, p1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    iget-object v12, p1, Lcom/truecaller/messaging/data/types/ImageEntity;->x:Landroid/net/Uri;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Le/a/a/k/c0/a;-><init>(JJLu3/a0;Landroid/net/Uri;JLjava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Le/a/a/k/d0/b;->b(Le/a/a/k/c0/a;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    .line 6
    instance-of v2, v0, Lcom/truecaller/messaging/data/types/GifEntity;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/truecaller/messaging/data/types/GifEntity;

    .line 7
    iget-object v13, p1, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    const-string p1, "newSource"

    .line 8
    invoke-static {v13, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/truecaller/messaging/data/types/GifEntity;

    .line 10
    iget-wide v2, v0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    .line 11
    iget-object v4, v0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 12
    iget v5, v0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    .line 13
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v1, "content.toString()"

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget v7, v0, Lcom/truecaller/messaging/data/types/ImageEntity;->v:I

    .line 15
    iget v8, v0, Lcom/truecaller/messaging/data/types/ImageEntity;->w:I

    .line 16
    iget-wide v10, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    .line 17
    iget-boolean v9, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->j:Z

    .line 18
    iget-object v12, v0, Lcom/truecaller/messaging/data/types/ImageEntity;->x:Landroid/net/Uri;

    move-object v1, p1

    .line 19
    invoke-direct/range {v1 .. v13}, Lcom/truecaller/messaging/data/types/GifEntity;-><init>(JLjava/lang/String;ILjava/lang/String;IIZJLandroid/net/Uri;Ljava/lang/String;)V

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public b(Le/a/a/k/c0/a;)Lcom/truecaller/messaging/data/types/Entity;
    .locals 13

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "GET"

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v4, p1, Le/a/a/k/c0/a;->c:Lu3/a0;

    const-string v6, "url"

    .line 4
    invoke-static {v4, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 5
    invoke-interface {v3, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, [Ljava/lang/String;

    .line 6
    new-instance v6, Lu3/z;

    invoke-direct {v6, v3, v0}, Lu3/z;-><init>([Ljava/lang/String;Ls1/z/c/f;)V

    .line 7
    invoke-static {v2}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 8
    new-instance v2, Lu3/g0;

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    .line 9
    iget-object v3, p0, Le/a/a/k/d0/b;->b:Lu3/e0;

    invoke-virtual {v3, v2}, Lu3/e0;->a(Lu3/g0;)Lu3/f;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v2, Lu3/p0/g/e;

    :try_start_1
    invoke-virtual {v2}, Lu3/p0/g/e;->execute()Lu3/k0;

    move-result-object v0

    .line 10
    iget-object v2, v0, Lu3/k0;->h:Lu3/l0;

    .line 11
    invoke-virtual {v0}, Lu3/k0;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    iget-object v3, p1, Le/a/a/k/c0/a;->f:Ljava/lang/String;

    const-string v4, "contentType"

    .line 13
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "tenor/gif"

    const/4 v5, 0x1

    .line 14
    invoke-static {v4, v3, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    iget-object v4, p0, Le/a/a/k/d0/b;->c:Le/a/b0/q/b;

    .line 16
    iget-wide v5, p1, Le/a/a/k/c0/a;->b:J

    .line 17
    iget-object v7, p1, Le/a/a/k/c0/a;->f:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 18
    new-instance v10, Le/a/a/k/d0/b$a;

    invoke-direct {v10, v2}, Le/a/a/k/d0/b$a;-><init>(Lu3/l0;)V

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Le/a/n/g0;->L0(Le/a/b0/q/b;JLjava/lang/String;ZILs1/z/b/l;ILjava/lang/Object;)Ls1/k;

    move-result-object v2

    .line 19
    iget-object v3, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 20
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 21
    invoke-virtual {p0, p1, v1}, Le/a/a/k/d0/b;->c(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object p1

    goto :goto_0

    .line 22
    :cond_1
    iget-object v3, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 23
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 24
    iget-wide v7, p1, Le/a/a/k/c0/a;->b:J

    .line 25
    iget-object v2, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 26
    move-object v9, v2

    check-cast v9, Landroid/net/Uri;

    .line 27
    iget-object v10, p1, Le/a/a/k/c0/a;->c:Lu3/a0;

    move-object v4, p0

    .line 28
    invoke-virtual/range {v4 .. v10}, Le/a/a/k/d0/b;->d(JJLandroid/net/Uri;Lu3/a0;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object p1

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0, p1, v1}, Le/a/a/k/d0/b;->c(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lu3/k0;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    .line 31
    :cond_3
    :goto_1
    :try_start_3
    iget v2, v0, Lu3/k0;->e:I

    if-eq v2, v1, :cond_4

    .line 32
    invoke-virtual {p0, p1, v1}, Le/a/a/k/d0/b;->c(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    .line 33
    invoke-virtual {p0, p1, v2}, Le/a/a/k/d0/b;->c(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lu3/k0;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_3

    .line 35
    :cond_5
    :try_start_5
    new-instance v2, Ls1/p;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v2, v3}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 36
    :goto_3
    :try_start_6
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 37
    invoke-virtual {p0, p1, v1}, Le/a/a/k/d0/b;->c(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_6

    .line 38
    :try_start_7
    invoke-virtual {v0}, Lu3/k0;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    :cond_6
    return-object p1

    :goto_4
    if-eqz v0, :cond_7

    :try_start_8
    invoke-virtual {v0}, Lu3/k0;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 39
    :catch_4
    :cond_7
    throw p1
.end method

.method public final c(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/Entity;
    .locals 25

    move-object/from16 v0, p1

    move/from16 v5, p2

    .line 1
    sget-object v1, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    .line 2
    iget-wide v2, v0, Le/a/a/k/c0/a;->b:J

    .line 3
    iget-object v6, v0, Le/a/a/k/c0/a;->d:Landroid/net/Uri;

    .line 4
    iget-wide v10, v0, Le/a/a/k/c0/a;->e:J

    const-string v4, "application/octet-stream"

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3ff00

    .line 5
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    return-object v0
.end method

.method public final d(JJLandroid/net/Uri;Lu3/a0;)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 18

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v1, p0

    .line 3
    :try_start_0
    iget-object v2, v1, Le/a/a/k/d0/b;->a:Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v3, p5

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x0

    .line 4
    invoke-static {v2, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v3, p5

    .line 5
    :catch_1
    :goto_0
    new-instance v2, Lcom/truecaller/messaging/data/types/GifEntity;

    const/4 v9, 0x0

    .line 6
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v3, "uri.toString()"

    invoke-static {v10, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 8
    iget v12, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v13, 0x0

    .line 9
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "Uri.EMPTY"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p6

    .line 10
    iget-object v3, v3, Lu3/a0;->j:Ljava/lang/String;

    const-string v8, "image/gif"

    move-object v5, v2

    move-wide/from16 v6, p3

    move-wide/from16 v14, p1

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .line 11
    invoke-direct/range {v5 .. v17}, Lcom/truecaller/messaging/data/types/GifEntity;-><init>(JLjava/lang/String;ILjava/lang/String;IIZJLandroid/net/Uri;Ljava/lang/String;)V

    return-object v2
.end method
