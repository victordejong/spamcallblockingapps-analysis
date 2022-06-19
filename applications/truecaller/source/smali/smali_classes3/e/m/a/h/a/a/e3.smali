.class public final synthetic Le/m/a/h/a/a/e3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/f3;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/f3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/e3;->a:Le/m/a/h/a/a/f3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Le/m/a/h/a/a/e3;->a:Le/m/a/h/a/a/f3;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/a/f3;->b:Le/m/a/h/a/d/f1;

    .line 2
    invoke-interface {v1}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/a/s3;

    iget-object v2, v0, Le/m/a/h/a/a/f3;->a:Le/m/a/h/a/a/e0;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    .line 4
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v4, Ljava/util/HashMap;

    .line 6
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 7
    :try_start_0
    invoke-virtual {v2}, Le/m/a/h/a/a/e0;->h()Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v7, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 8
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {v2, v9}, Le/m/a/h/a/a/e0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v11, Ljava/io/File;

    const-string v12, "assets"

    .line 10
    invoke-direct {v11, v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_2

    sget-object v9, Le/m/a/h/a/a/e0;->c:Le/m/a/h/a/d/g;

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v11, v12, v5

    const-string v11, "Failed to find assets directory: %s"

    .line 12
    invoke-virtual {v9, v11, v12}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    .line 14
    new-instance v11, Le/m/a/h/a/a/i0;

    .line 15
    invoke-direct {v11, v5, v9, v10}, Le/m/a/h/a/a/i0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v10, v11

    :goto_1
    if-eqz v10, :cond_0

    .line 16
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v8, Le/m/a/h/a/a/e0;->c:Le/m/a/h/a/d/g;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v5

    const-string v5, "Could not process directory while scanning installed packs: %s"

    .line 17
    invoke-virtual {v8, v5, v6}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 18
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v5}, Le/m/a/h/a/a/e0;->l(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 20
    :cond_4
    invoke-interface {v1, v3}, Le/m/a/h/a/a/s3;->d(Ljava/util/Map;)Le/m/a/h/a/h/r;

    move-result-object v1

    iget-object v2, v0, Le/m/a/h/a/a/f3;->d:Le/m/a/h/a/d/f1;

    .line 21
    invoke-interface {v2}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, v0, Le/m/a/h/a/a/f3;->a:Le/m/a/h/a/a/e0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Le/m/a/h/a/a/d3;

    invoke-direct {v4, v3}, Le/m/a/h/a/a/d3;-><init>(Le/m/a/h/a/a/e0;)V

    .line 22
    invoke-virtual {v1, v2, v4}, Le/m/a/h/a/h/r;->b(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/c;)Le/m/a/h/a/h/r;

    iget-object v0, v0, Le/m/a/h/a/a/f3;->d:Le/m/a/h/a/d/f1;

    .line 23
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    sget-object v2, Le/m/a/h/a/a/c3;->a:Le/m/a/h/a/a/c3;

    .line 24
    invoke-virtual {v1, v0, v2}, Le/m/a/h/a/h/r;->a(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/b;)Le/m/a/h/a/h/r;

    return-void
.end method
