.class public final Le/a/t/a/u/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/u/j;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t/a/u/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Le/a/t/a/u/f;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->notOnMainThread([Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Le/a/t/a/u/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "emojis.bin"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "context.resources.assets.open(\"emojis.bin\")"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v1, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v2

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Le/a/t/a/u/a;->b(Ljava/io/DataInputStream;)[Le/a/t/a/u/d;

    move-result-object v2

    .line 4
    new-instance v3, Le/a/t/a/u/f;

    .line 5
    invoke-virtual {p0, v0, v2}, Le/a/t/a/u/a;->d(Ljava/io/DataInputStream;[Le/a/t/a/u/d;)Le/a/t/a/u/c;

    move-result-object v4

    .line 6
    invoke-virtual {p0, v0, v2}, Le/a/t/a/u/a;->c(Ljava/io/DataInputStream;[Le/a/t/a/u/d;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-direct {v3, v4, v2}, Le/a/t/a/u/f;-><init>(Le/a/t/a/u/c;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final b(Ljava/io/DataInputStream;)[Le/a/t/a/u/d;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 2
    new-array v1, v0, [Le/a/t/a/u/d;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v4

    new-array v5, v4, [I

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v4

    new-array v6, v4, [Le/a/t/a/u/d;

    move v7, v2

    :goto_2
    if-ge v7, v4, :cond_1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aget-object v8, v1, v8

    invoke-static {v8}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5
    :cond_1
    new-instance v4, Le/a/t/a/u/d;

    invoke-direct {v4, v5, v6}, Le/a/t/a/u/d;-><init>([I[Le/a/t/a/u/d;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final c(Ljava/io/DataInputStream;[Le/a/t/a/u/d;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "[",
            "Le/a/t/a/u/d;",
            ")",
            "Ljava/util/List<",
            "Le/a/t/a/u/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/t/a/u/b;->a:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Le/a/t/a/u/e;

    .line 5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    new-array v4, v3, [Le/a/t/a/u/d;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    aget-object v6, p2, v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6
    :cond_0
    iget v3, v2, Le/a/t/a/u/e;->a:I

    iget v2, v2, Le/a/t/a/u/e;->b:I

    const-string v5, "emojis"

    .line 7
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Le/a/t/a/u/e;

    invoke-direct {v5, v3, v2, v4}, Le/a/t/a/u/e;-><init>(II[Le/a/t/a/u/d;)V

    .line 8
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final d(Ljava/io/DataInputStream;[Le/a/t/a/u/d;)Le/a/t/a/u/c;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 2
    new-array v1, v0, [Le/a/t/a/u/c;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    new-array v5, v4, [Ls1/k;

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aget-object v8, p2, v8

    .line 4
    new-instance v9, Ls1/k;

    invoke-direct {v9, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v5}, Ls1/u/i;->Y0([Ls1/k;)Ljava/util/Map;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    new-array v6, v5, [Ls1/k;

    move v7, v2

    :goto_2
    if-ge v7, v5, :cond_1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    aget-object v9, v1, v9

    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 7
    new-instance v10, Ls1/k;

    invoke-direct {v10, v8, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    aput-object v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    invoke-static {v6}, Ls1/u/i;->Y0([Ls1/k;)Ljava/util/Map;

    move-result-object v5

    .line 9
    new-instance v6, Le/a/t/a/u/c;

    invoke-direct {v6, v4, v5}, Le/a/t/a/u/c;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->N1([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast p1, Le/a/t/a/u/c;

    return-object p1
.end method
