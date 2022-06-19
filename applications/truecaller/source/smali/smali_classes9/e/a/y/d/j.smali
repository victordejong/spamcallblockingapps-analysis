.class public final Le/a/y/d/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/d/i;


# instance fields
.field public final a:Ln3/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/f<",
            "Ljava/lang/String;",
            "Le/a/y/d/h;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ln3/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/f<",
            "Ljava/lang/String;",
            "Le/a/y/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Le/a/y/d/n;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;

.field public final e:Ls1/w/f;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;)V
    .locals 6

    const-string v0, "managerContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/d/j;->d:Landroid/content/Context;

    iput-object p2, p0, Le/a/y/d/j;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/y/d/j;->f:Ls1/w/f;

    .line 2
    new-instance p1, Ln3/g/f;

    const/16 p2, 0x100

    invoke-direct {p1, p2}, Ln3/g/f;-><init>(I)V

    iput-object p1, p0, Le/a/y/d/j;->a:Ln3/g/f;

    .line 3
    new-instance p1, Ln3/g/f;

    invoke-direct {p1, p2}, Ln3/g/f;-><init>(I)V

    iput-object p1, p0, Le/a/y/d/j;->b:Ln3/g/f;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/y/d/j;->c:Ljava/util/Map;

    .line 5
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v3, Le/a/y/d/k;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/y/d/k;-><init>(Le/a/y/d/j;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public static final d(Le/a/y/d/j;Ljava/util/List;)Ljava/util/Collection;
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Le/a/y/g/d;

    .line 6
    iget-object v2, v2, Le/a/y/g/d;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Le/a/y/d/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ( ? )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 9
    iget-object p0, p0, Le/a/y/d/j;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 10
    sget-object v5, Le/a/y/d/l;->c:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 p0, 0x0

    new-array v2, p0, [Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v8, v1

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 12
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_3

    .line 13
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "number"

    .line 15
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 16
    :cond_2
    :try_start_2
    invoke-static {v1, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_6

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-static {v1, p0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-object p1, v1

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 17
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 18
    :cond_4
    :try_start_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    goto :goto_5

    .line 19
    :catch_1
    :goto_3
    :try_start_6
    new-instance p0, Lcom/truecaller/log/UnmutedException$f;

    const-string v1, "Failed to Query in Flash"

    invoke-direct {p0, v1}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p1, :cond_5

    .line 20
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_4
    return-object v0

    :goto_5
    move-object v1, p1

    :goto_6
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/y/g/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "flashStateList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/y/d/j;->f:Ls1/w/f;

    new-instance v4, Le/a/y/d/j$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/y/d/j$c;-><init>(Le/a/y/d/j;Ljava/util/List;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Ljava/lang/String;)Le/a/y/g/d;
    .locals 3

    const-string v0, "phoneWithoutPlus"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/d/j;->b:Ln3/g/f;

    invoke-virtual {v0, p1}, Ln3/g/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/y/g/d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Le/a/y/g/d;

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v2, v1}, Le/a/y/g/d;-><init>(Ljava/lang/String;IZI)V

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;JLcom/truecaller/flashsdk/models/Flash;)V
    .locals 9

    const-string v0, "phone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flash"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/d/j;->a:Ln3/g/f;

    invoke-virtual {v0, p1}, Ln3/g/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/d/h;

    if-eqz v0, :cond_0

    const-string v1, "historyCache.get(phone) ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v0, v0, Le/a/y/d/h;->b:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Le/a/y/d/h;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    iget-object v1, p4, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v2, "flash.payload"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v8}, Le/a/y/d/h;-><init>(Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/y/d/j;->a:Ln3/g/f;

    .line 7
    iget-object p2, v0, Le/a/y/d/h;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p2, v0}, Ln3/g/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/y/d/j;->f:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/y/d/j$b;

    const/4 p1, 0x0

    invoke-direct {v4, p0, v0, p1}, Le/a/y/d/j$b;-><init>(Le/a/y/d/j;Le/a/y/d/h;Ls1/w/d;)V

    const/4 v5, 0x2

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Le/a/y/d/h;
    .locals 13

    const-string v0, "phone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/d/j;->a:Ln3/g/f;

    invoke-virtual {v0, p1}, Ln3/g/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/d/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/a/y/d/h;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Le/a/y/d/h;-><init>(Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/y/d/j;->a:Ln3/g/f;

    invoke-virtual {v1, p1, v0}, Ln3/g/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v7, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v8, p0, Le/a/y/d/j;->f:Ls1/w/f;

    const/4 v9, 0x0

    new-instance v10, Le/a/y/d/j$a;

    const/4 v1, 0x0

    invoke-direct {v10, p0, p1, v1}, Le/a/y/d/j$a;-><init>(Le/a/y/d/j;Ljava/lang/String;Ls1/w/d;)V

    const/4 v11, 0x2

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-object v0
.end method
