.class public final Le/a/p5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p5/a;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 5

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    invoke-static {v1, p2, p2}, Le/a/e/a2;->b0(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-object p2, v0

    goto :goto_6

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    .line 4
    invoke-static {p2, v2, v3, v4}, Le/a/e/a2;->l(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    move-object v2, v0

    .line 6
    :goto_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object p1

    :goto_3
    move-object v0, p2

    :goto_4
    move-object p2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object p2, v0

    :goto_5
    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    if-eqz p2, :cond_6

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    throw p1

    :catch_1
    move-object p2, v0

    move-object v1, p2

    :catch_2
    :goto_6
    if-eqz v1, :cond_7

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    if-eqz p2, :cond_8

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    return-object v0
.end method
