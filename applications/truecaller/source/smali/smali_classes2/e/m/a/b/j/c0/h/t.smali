.class public Le/m/a/b/j/c0/h/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/a/b/j/y/e;

.field public final c:Le/m/a/b/j/c0/i/a0;

.field public final d:Le/m/a/b/j/c0/h/x;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Le/m/a/b/j/d0/b;

.field public final g:Le/m/a/b/j/e0/a;

.field public final h:Le/m/a/b/j/e0/a;

.field public final i:Le/m/a/b/j/c0/i/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/b/j/y/e;Le/m/a/b/j/c0/i/a0;Le/m/a/b/j/c0/h/x;Ljava/util/concurrent/Executor;Le/m/a/b/j/d0/b;Le/m/a/b/j/e0/a;Le/m/a/b/j/e0/a;Le/m/a/b/j/c0/i/z;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/c0/h/t;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/m/a/b/j/c0/h/t;->b:Le/m/a/b/j/y/e;

    .line 4
    iput-object p3, p0, Le/m/a/b/j/c0/h/t;->c:Le/m/a/b/j/c0/i/a0;

    .line 5
    iput-object p4, p0, Le/m/a/b/j/c0/h/t;->d:Le/m/a/b/j/c0/h/x;

    .line 6
    iput-object p5, p0, Le/m/a/b/j/c0/h/t;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    .line 8
    iput-object p7, p0, Le/m/a/b/j/c0/h/t;->g:Le/m/a/b/j/e0/a;

    .line 9
    iput-object p8, p0, Le/m/a/b/j/c0/h/t;->h:Le/m/a/b/j/e0/a;

    .line 10
    iput-object p9, p0, Le/m/a/b/j/c0/h/t;->i:Le/m/a/b/j/c0/i/z;

    return-void
.end method


# virtual methods
.method public a(Le/m/a/b/j/r;I)V
    .locals 13

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/h/t;->b:Le/m/a/b/j/y/e;

    invoke-virtual {p1}, Le/m/a/b/j/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/m/a/b/j/y/e;->get(Ljava/lang/String;)Le/m/a/b/j/y/m;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v7, v1

    .line 2
    :cond_0
    :goto_0
    iget-object v1, p0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    new-instance v2, Le/m/a/b/j/c0/h/e;

    invoke-direct {v2, p0, p1}, Le/m/a/b/j/c0/h/e;-><init>(Le/m/a/b/j/c0/h/t;Le/m/a/b/j/r;)V

    invoke-interface {v1, v2}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3
    iget-object v1, p0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    new-instance v2, Le/m/a/b/j/c0/h/g;

    invoke-direct {v2, p0, p1}, Le/m/a/b/j/c0/h/g;-><init>(Le/m/a/b/j/c0/h/t;Le/m/a/b/j/r;)V

    .line 4
    invoke-interface {v1, v2}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    .line 5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v3, "Uploader"

    const-string v4, "Unknown backend for %s, deleting event batch for it..."

    .line 6
    invoke-static {v3, v4, p1}, Ln3/g0/y;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Le/m/a/b/j/y/g;->a()Le/m/a/b/j/y/g;

    move-result-object v3

    goto/16 :goto_3

    .line 8
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/b/j/c0/i/g0;

    .line 10
    invoke-virtual {v6}, Le/m/a/b/j/c0/i/g0;->a()Le/m/a/b/j/n;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1}, Le/m/a/b/j/r;->c()[B

    move-result-object v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    .line 12
    iget-object v4, p0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    iget-object v6, p0, Le/m/a/b/j/c0/h/t;->i:Le/m/a/b/j/c0/i/z;

    .line 13
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Le/m/a/b/j/c0/h/o;

    invoke-direct {v9, v6}, Le/m/a/b/j/c0/h/o;-><init>(Le/m/a/b/j/c0/i/z;)V

    invoke-interface {v4, v9}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/b/j/a0/a/a;

    .line 14
    invoke-static {}, Le/m/a/b/j/n;->a()Le/m/a/b/j/n$a;

    move-result-object v6

    iget-object v9, p0, Le/m/a/b/j/c0/h/t;->g:Le/m/a/b/j/e0/a;

    .line 15
    invoke-interface {v9}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Le/m/a/b/j/n$a;->e(J)Le/m/a/b/j/n$a;

    iget-object v9, p0, Le/m/a/b/j/c0/h/t;->h:Le/m/a/b/j/e0/a;

    .line 16
    invoke-interface {v9}, Le/m/a/b/j/e0/a;->a()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Le/m/a/b/j/n$a;->g(J)Le/m/a/b/j/n$a;

    const-string v9, "GDT_CLIENT_METRICS"

    .line 17
    invoke-virtual {v6, v9}, Le/m/a/b/j/n$a;->f(Ljava/lang/String;)Le/m/a/b/j/n$a;

    new-instance v9, Le/m/a/b/j/m;

    .line 18
    new-instance v10, Le/m/a/b/b;

    const-string v11, "proto"

    invoke-direct {v10, v11}, Le/m/a/b/b;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v11, Le/m/a/b/j/p;->a:Le/m/d/r/k/h;

    .line 21
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    :try_start_0
    invoke-virtual {v11, v4, v12}, Le/m/d/r/k/h;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 25
    invoke-direct {v9, v10, v4}, Le/m/a/b/j/m;-><init>(Le/m/a/b/b;[B)V

    .line 26
    invoke-virtual {v6, v9}, Le/m/a/b/j/n$a;->d(Le/m/a/b/j/m;)Le/m/a/b/j/n$a;

    .line 27
    invoke-virtual {v6}, Le/m/a/b/j/n$a;->b()Le/m/a/b/j/n;

    move-result-object v4

    .line 28
    invoke-interface {v0, v4}, Le/m/a/b/j/y/m;->a(Le/m/a/b/j/n;)Le/m/a/b/j/n;

    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_5
    invoke-virtual {p1}, Le/m/a/b/j/r;->c()[B

    move-result-object v4

    .line 31
    new-instance v6, Le/m/a/b/j/y/a;

    const/4 v9, 0x0

    invoke-direct {v6, v3, v4, v9}, Le/m/a/b/j/y/a;-><init>(Ljava/lang/Iterable;[BLe/m/a/b/j/y/a$a;)V

    .line 32
    invoke-interface {v0, v6}, Le/m/a/b/j/y/m;->b(Le/m/a/b/j/y/f;)Le/m/a/b/j/y/g;

    move-result-object v3

    .line 33
    :goto_3
    invoke-virtual {v3}, Le/m/a/b/j/y/g;->c()Le/m/a/b/j/y/g$a;

    move-result-object v4

    sget-object v6, Le/m/a/b/j/y/g$a;->b:Le/m/a/b/j/y/g$a;

    if-ne v4, v6, :cond_6

    .line 34
    iget-object v0, p0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    new-instance v1, Le/m/a/b/j/c0/h/h;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Le/m/a/b/j/c0/h/h;-><init>(Le/m/a/b/j/c0/h/t;Ljava/lang/Iterable;Le/m/a/b/j/r;J)V

    invoke-interface {v0, v1}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Le/m/a/b/j/c0/h/t;->d:Le/m/a/b/j/c0/h/x;

    add-int/2addr p2, v2

    invoke-interface {v0, p1, p2, v2}, Le/m/a/b/j/c0/h/x;->a(Le/m/a/b/j/r;IZ)V

    return-void

    .line 36
    :cond_6
    iget-object v4, p0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    new-instance v6, Le/m/a/b/j/c0/h/j;

    invoke-direct {v6, p0, v5}, Le/m/a/b/j/c0/h/j;-><init>(Le/m/a/b/j/c0/h/t;Ljava/lang/Iterable;)V

    invoke-interface {v4, v6}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v3}, Le/m/a/b/j/y/g;->c()Le/m/a/b/j/y/g$a;

    move-result-object v4

    sget-object v6, Le/m/a/b/j/y/g$a;->a:Le/m/a/b/j/y/g$a;

    if-ne v4, v6, :cond_8

    .line 38
    invoke-virtual {v3}, Le/m/a/b/j/y/g;->b()J

    move-result-wide v3

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 39
    invoke-virtual {p1}, Le/m/a/b/j/r;->c()[B

    move-result-object v3

    if-eqz v3, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    new-instance v2, Le/m/a/b/j/c0/h/l;

    invoke-direct {v2, p0}, Le/m/a/b/j/c0/h/l;-><init>(Le/m/a/b/j/c0/h/t;)V

    invoke-interface {v1, v2}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 41
    :cond_8
    invoke-virtual {v3}, Le/m/a/b/j/y/g;->c()Le/m/a/b/j/y/g$a;

    move-result-object v1

    sget-object v3, Le/m/a/b/j/y/g$a;->d:Le/m/a/b/j/y/g$a;

    if-ne v1, v3, :cond_0

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/b/j/c0/i/g0;

    .line 44
    invoke-virtual {v4}, Le/m/a/b/j/c0/i/g0;->a()Le/m/a/b/j/n;

    move-result-object v4

    invoke-virtual {v4}, Le/m/a/b/j/n;->h()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 47
    :cond_9
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 48
    :cond_a
    iget-object v2, p0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    new-instance v3, Le/m/a/b/j/c0/h/f;

    invoke-direct {v3, p0, v1}, Le/m/a/b/j/c0/h/f;-><init>(Le/m/a/b/j/c0/h/t;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 49
    :cond_b
    iget-object p2, p0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    new-instance v0, Le/m/a/b/j/c0/h/i;

    invoke-direct {v0, p0, p1, v7, v8}, Le/m/a/b/j/c0/h/i;-><init>(Le/m/a/b/j/c0/h/t;Le/m/a/b/j/r;J)V

    invoke-interface {p2, v0}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    return-void
.end method
