.class public final Le/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le/b/a/p<",
        "Le/b/a/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/a/g;->a:Landroid/content/Context;

    iput-object p2, p0, Le/b/a/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/a/g;->a:Landroid/content/Context;

    iget-object v1, p0, Le/b/a/g;->b:Ljava/lang/String;

    .line 2
    new-instance v2, Le/b/a/z/c;

    invoke-direct {v2, v0, v1}, Le/b/a/z/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget-object v0, Le/b/a/z/a;->c:Le/b/a/z/a;

    iget-object v1, v2, Le/b/a/z/c;->c:Le/b/a/z/b;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    :try_start_0
    iget-object v4, v1, Le/b/a/z/b;->b:Ljava/lang/String;

    .line 6
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Le/b/a/z/b;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    sget-object v7, Le/b/a/z/a;->b:Le/b/a/z/a;

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Le/b/a/z/b;->a(Ljava/lang/String;Le/b/a/z/a;Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v1, v1, Le/b/a/z/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v4, v0, v8}, Le/b/a/z/b;->a(Ljava/lang/String;Le/b/a/z/a;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    if-nez v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v6, ".zip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v7, v0

    .line 12
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    sget-object v4, Le/b/a/c;->a:Ljava/util/Set;

    .line 14
    new-instance v4, Ln3/k/h/c;

    invoke-direct {v4, v7, v1}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    :goto_1
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_4

    goto :goto_4

    .line 15
    :cond_4
    iget-object v1, v4, Ln3/k/h/c;->a:Ljava/lang/Object;

    check-cast v1, Le/b/a/z/a;

    .line 16
    iget-object v4, v4, Ln3/k/h/c;->b:Ljava/lang/Object;

    check-cast v4, Ljava/io/InputStream;

    if-ne v1, v0, :cond_5

    .line 17
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v1, v2, Le/b/a/z/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Le/b/a/f;->e(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Le/b/a/p;

    move-result-object v0

    goto :goto_3

    .line 18
    :cond_5
    iget-object v0, v2, Le/b/a/z/c;->b:Ljava/lang/String;

    invoke-static {v4, v0}, Le/b/a/f;->b(Ljava/io/InputStream;Ljava/lang/String;)Le/b/a/p;

    move-result-object v0

    .line 19
    :goto_3
    iget-object v0, v0, Le/b/a/p;->a:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 20
    move-object v3, v0

    check-cast v3, Le/b/a/e;

    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    .line 21
    new-instance v0, Le/b/a/p;

    invoke-direct {v0, v3}, Le/b/a/p;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    .line 22
    :cond_7
    sget-object v0, Le/b/a/c;->a:Ljava/util/Set;

    .line 23
    :try_start_1
    invoke-virtual {v2}, Le/b/a/z/c;->a()Le/b/a/p;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 24
    new-instance v1, Le/b/a/p;

    invoke-direct {v1, v0}, Le/b/a/p;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_5
    return-object v0
.end method
