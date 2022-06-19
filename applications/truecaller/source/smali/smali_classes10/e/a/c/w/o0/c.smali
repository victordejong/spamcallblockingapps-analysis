.class public final Le/a/c/w/o0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/o0/b;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/c/c0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/c0/f<",
            "Ljava/util/List<",
            "Le/a/c/a0/b0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/c0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/c0/f<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/a/c/r/j/l;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final d:Le/a/c/c0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/c0/f<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/a/c/r/j/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Le/a/c/r/j/y;

.field public final g:Le/a/c/r/j/x;

.field public final h:Le/a/c/c0/a;

.field public final i:Le/a/c/i/b/a;

.field public final j:Le/a/c/r/h/b;

.field public final k:Le/a/c/b/j;

.field public final l:Le/a/c/a0/z;

.field public final m:Le/a/c/b/e;


# direct methods
.method public constructor <init>(Le/a/c/c0/a;Le/a/c/i/b/a;Le/a/c/r/h/b;Le/a/c/b/j;Le/a/c/a0/z;Le/a/c/b/e;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    const-string v1, "assetsReader"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "firebaseSeedStore"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "insightsBinder"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "insightsStatusProvider"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "senderInfoDataSource"

    invoke-static {p5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "insightsEnvironmentHelper"

    invoke-static {p6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/o0/c;->h:Le/a/c/c0/a;

    iput-object p2, p0, Le/a/c/w/o0/c;->i:Le/a/c/i/b/a;

    iput-object p3, p0, Le/a/c/w/o0/c;->j:Le/a/c/r/h/b;

    iput-object p4, p0, Le/a/c/w/o0/c;->k:Le/a/c/b/j;

    iput-object p5, p0, Le/a/c/w/o0/c;->l:Le/a/c/a0/z;

    iput-object p6, p0, Le/a/c/w/o0/c;->m:Le/a/c/b/e;

    .line 2
    new-instance p2, Le/m/e/k;

    invoke-direct {p2}, Le/m/e/k;-><init>()V

    iput-object p2, p0, Le/a/c/w/o0/c;->a:Le/m/e/k;

    .line 3
    new-instance p2, Le/a/c/c0/f;

    invoke-direct {p2}, Le/a/c/c0/f;-><init>()V

    iput-object p2, p0, Le/a/c/w/o0/c;->b:Le/a/c/c0/f;

    .line 4
    new-instance p2, Le/a/c/c0/f;

    invoke-direct {p2}, Le/a/c/c0/f;-><init>()V

    iput-object p2, p0, Le/a/c/w/o0/c;->c:Le/a/c/c0/f;

    .line 5
    new-instance p2, Le/a/c/c0/f;

    invoke-direct {p2}, Le/a/c/c0/f;-><init>()V

    iput-object p2, p0, Le/a/c/w/o0/c;->d:Le/a/c/c0/f;

    .line 6
    check-cast p1, Le/a/c/c0/b;

    const/4 p2, 0x0

    .line 7
    :try_start_0
    iget-object p3, p1, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    const-string p4, "smartcards/base_filter.json"

    invoke-interface {p3, p4}, Le/a/c/c0/m;->b(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object p4, p1, Le/a/c/c0/b;->a:Le/m/e/k;

    new-instance p5, Le/a/c/c0/c;

    invoke-direct {p5}, Le/a/c/c0/c;-><init>()V

    invoke-virtual {p5}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Le/m/e/k;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    const-string p5, "gson.fromJson(bufferRead\u2026st<GrmFilter>>() {}.type)"

    invoke-static {p4, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    goto :goto_0

    :catchall_1
    move-exception p3

    .line 9
    :goto_0
    iget-object p1, p1, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {p1, p2}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    throw p3

    :catch_0
    move-object p3, p2

    :catch_1
    move-object p4, v0

    :goto_1
    iget-object p1, p1, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {p1, p3}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    .line 10
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 12
    move-object p5, p4

    check-cast p5, Le/a/c/r/j/l;

    .line 13
    invoke-virtual {p5}, Le/a/c/r/j/l;->b()Ljava/lang/String;

    move-result-object p5

    .line 14
    invoke-virtual {p1, p5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    if-nez p6, :cond_0

    .line 15
    invoke-static {p1, p5}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p6

    :cond_0
    check-cast p6, Ljava/util/List;

    .line 16
    invoke-interface {p6, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_1
    iput-object p1, p0, Le/a/c/w/o0/c;->e:Ljava/util/Map;

    .line 18
    :try_start_2
    iget-object p1, p0, Le/a/c/w/o0/c;->h:Le/a/c/c0/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    check-cast p1, Le/a/c/c0/b;

    :try_start_3
    invoke-virtual {p1}, Le/a/c/c0/b;->b()Le/a/c/r/j/y;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 19
    :catch_2
    new-instance p1, Le/a/c/r/j/y;

    invoke-direct {p1, v0}, Le/a/c/r/j/y;-><init>(Ljava/util/List;)V

    .line 20
    :goto_3
    iput-object p1, p0, Le/a/c/w/o0/c;->f:Le/a/c/r/j/y;

    .line 21
    :try_start_4
    iget-object p1, p0, Le/a/c/w/o0/c;->h:Le/a/c/c0/a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    check-cast p1, Le/a/c/c0/b;

    :try_start_5
    invoke-virtual {p1}, Le/a/c/c0/b;->a()Le/a/c/r/j/x;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 22
    :catch_3
    new-instance p1, Le/a/c/r/j/x;

    invoke-direct {p1, v0}, Le/a/c/r/j/x;-><init>(Ljava/util/List;)V

    .line 23
    :goto_4
    iput-object p1, p0, Le/a/c/w/o0/c;->g:Le/a/c/r/j/x;

    .line 24
    iget-object p1, p0, Le/a/c/w/o0/c;->k:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->J()Z

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Le/a/c/w/o0/c;->i:Le/a/c/i/b/a;

    invoke-interface {p1}, Le/a/c/i/b/a;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_5

    :cond_2
    move p1, p3

    goto :goto_6

    :cond_3
    :goto_5
    move p1, p4

    :goto_6
    if-nez p1, :cond_4

    .line 25
    iget-object p1, p0, Le/a/c/w/o0/c;->a:Le/m/e/k;

    iget-object p2, p0, Le/a/c/w/o0/c;->i:Le/a/c/i/b/a;

    invoke-interface {p2}, Le/a/c/i/b/a;->f()Ljava/lang/String;

    move-result-object p2

    new-instance p5, Le/a/c/w/o0/d;

    invoke-direct {p5}, Le/a/c/w/o0/d;-><init>()V

    invoke-virtual {p5}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "gson.fromJson(firebaseSe\u2026SenderIdInfo>>() {}.type)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    goto :goto_8

    .line 26
    :cond_4
    iget-object p1, p0, Le/a/c/w/o0/c;->h:Le/a/c/c0/a;

    check-cast p1, Le/a/c/c0/b;

    .line 27
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :try_start_6
    iget-object p5, p1, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    const-string p6, "smartcards/sender_filter.json"

    invoke-interface {p5, p6}, Le/a/c/c0/m;->b(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p2

    .line 29
    iget-object p5, p1, Le/a/c/c0/b;->a:Le/m/e/k;

    new-instance p6, Le/a/c/c0/d;

    invoke-direct {p6}, Le/a/c/c0/d;-><init>()V

    invoke-virtual {p6}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p6

    invoke-virtual {p5, p2, p6}, Le/m/e/k;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p5

    const-string p6, "gson.fromJson(bufferRead\u2026SenderIdInfo>>() {}.type)"

    invoke-static {p5, p6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v0, p5

    goto :goto_7

    :catchall_2
    move-exception p3

    .line 30
    iget-object p1, p1, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {p1, p2}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    throw p3

    :catch_4
    :goto_7
    iget-object p1, p1, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {p1, p2}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    move-object p1, v0

    .line 31
    :goto_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/c/r/j/a0;

    .line 32
    invoke-virtual {p2}, Le/a/c/r/j/a0;->c()Ljava/util/List;

    move-result-object p5

    .line 33
    invoke-virtual {p2}, Le/a/c/r/j/a0;->a()Ljava/lang/String;

    move-result-object p6

    .line 34
    iget-object v0, p0, Le/a/c/w/o0/c;->e:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 35
    invoke-virtual {p2}, Le/a/c/r/j/a0;->b()Le/a/c/r/j/w;

    move-result-object p2

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/r/j/l;

    if-eqz p2, :cond_a

    .line 37
    new-instance v2, Le/a/c/r/j/l;

    .line 38
    new-instance v3, Le/a/c/r/j/w;

    .line 39
    invoke-virtual {p2}, Le/a/c/r/j/w;->c()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v1}, Le/a/c/r/j/l;->a()Le/a/c/r/j/w;

    move-result-object v4

    invoke-virtual {v4}, Le/a/c/r/j/w;->c()Ljava/util/List;

    move-result-object v4

    .line 40
    :goto_9
    invoke-virtual {p2}, Le/a/c/r/j/w;->b()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    goto :goto_a

    :cond_8
    invoke-virtual {v1}, Le/a/c/r/j/l;->a()Le/a/c/r/j/w;

    move-result-object v5

    invoke-virtual {v5}, Le/a/c/r/j/w;->b()Ljava/util/List;

    move-result-object v5

    .line 41
    :goto_a
    invoke-virtual {p2}, Le/a/c/r/j/w;->a()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9

    goto :goto_b

    :cond_9
    invoke-virtual {v1}, Le/a/c/r/j/l;->a()Le/a/c/r/j/w;

    move-result-object v1

    invoke-virtual {v1}, Le/a/c/r/j/w;->a()Ljava/util/List;

    move-result-object v6

    .line 42
    :goto_b
    invoke-direct {v3, v4, v5, v6}, Le/a/c/r/j/w;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 43
    invoke-direct {v2, p6, v3}, Le/a/c/r/j/l;-><init>(Ljava/lang/String;Le/a/c/r/j/w;)V

    move-object v1, v2

    .line 44
    :cond_a
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    iget-object v4, p0, Le/a/c/w/o0/c;->c:Le/a/c/c0/f;

    invoke-virtual {v4, v3}, Le/a/c/c0/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_b

    goto :goto_d

    :cond_b
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    :goto_d
    invoke-virtual {v1}, Le/a/c/r/j/l;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_e

    :cond_c
    move v5, p3

    goto :goto_f

    :cond_d
    :goto_e
    move v5, p4

    :goto_f
    if-eqz v5, :cond_e

    .line 47
    invoke-virtual {v1}, Le/a/c/r/j/l;->b()Ljava/lang/String;

    move-result-object v5

    new-array v6, p4, [Le/a/c/r/j/l;

    aput-object v1, v6, p3

    invoke-static {v6}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 48
    :cond_e
    invoke-virtual {v1}, Le/a/c/r/j/l;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_f

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_f
    :goto_10
    iget-object v5, p0, Le/a/c/w/o0/c;->c:Le/a/c/c0/f;

    invoke-virtual {v5, v3, v4}, Le/a/c/c0/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v4, p0, Le/a/c/w/o0/c;->d:Le/a/c/c0/f;

    invoke-virtual {v4, v3}, Le/a/c/c0/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_10

    goto :goto_11

    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    :goto_11
    invoke-virtual {v4, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v5, p0, Le/a/c/w/o0/c;->d:Le/a/c/c0/f;

    invoke-virtual {v5, v3, v4}, Le/a/c/c0/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/w/o0/c;->k:Le/a/c/b/j;

    invoke-interface {p2}, Le/a/c/b/j;->H()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_b

    .line 2
    iget-object p2, p0, Le/a/c/w/o0/c;->g:Le/a/c/r/j/x;

    invoke-virtual {p2}, Le/a/c/r/j/x;->a()Ljava/util/List;

    move-result-object p2

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/String;

    .line 6
    iget-object v4, p0, Le/a/c/w/o0/c;->e:Ljava/util/Map;

    if-eqz v4, :cond_1

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    move p2, v1

    goto :goto_3

    .line 9
    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 10
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v2, v1

    goto :goto_2

    .line 11
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/r/j/l;

    .line 12
    invoke-virtual {v3}, Le/a/c/r/j/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    move v2, v0

    .line 15
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    move p2, v0

    .line 17
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x3c31460e

    if-eq v2, v3, :cond_9

    goto :goto_4

    :cond_9
    const-string v2, "GRM_OTP"

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Le/a/c/w/o0/c;->k:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->M()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    move v0, v1

    .line 19
    :cond_b
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/w/o0/c$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/w/o0/c$e;

    iget v1, v0, Le/a/c/w/o0/c$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/o0/c$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/o0/c$e;

    invoke-direct {v0, p0, p2}, Le/a/c/w/o0/c$e;-><init>(Le/a/c/w/o0/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/w/o0/c$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/o0/c$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iput v3, v0, Le/a/c/w/o0/c$e;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/c/w/o0/c;->l(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    const-string p1, "$this$isGrmAllBlockedByUser"

    .line 4
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/a0/b0;

    .line 7
    iget-object v2, v1, Le/a/c/a0/b0;->e:Ljava/util/List;

    const-string v4, "ALL"

    .line 8
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    iget-object v2, v1, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 10
    sget-object v4, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne v2, v4, :cond_6

    .line 11
    iget-object v1, v1, Le/a/c/a0/b0;->f:Lcom/truecaller/insights/source/SourceType;

    .line 12
    sget-object v2, Lcom/truecaller/insights/source/SourceType;->USER:Lcom/truecaller/insights/source/SourceType;

    if-ne v1, v2, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    if-eqz v1, :cond_5

    move p1, v3

    goto :goto_4

    :cond_7
    :goto_3
    move p1, v0

    :goto_4
    if-eqz p1, :cond_c

    const-string p1, "$this$hasUserEnabledSmartSms"

    .line 13
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    .line 15
    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/c/a0/b0;

    .line 16
    iget-object v1, p2, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 17
    sget-object v2, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->DEFAULT:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne v1, v2, :cond_a

    .line 18
    iget-object p2, p2, Le/a/c/a0/b0;->f:Lcom/truecaller/insights/source/SourceType;

    .line 19
    sget-object v1, Lcom/truecaller/insights/source/SourceType;->USER:Lcom/truecaller/insights/source/SourceType;

    if-ne p2, v1, :cond_a

    move p2, v3

    goto :goto_5

    :cond_a
    move p2, v0

    :goto_5
    if-eqz p2, :cond_9

    move p1, v3

    goto :goto_7

    :cond_b
    :goto_6
    move p1, v0

    :goto_7
    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    move v3, v0

    .line 20
    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/w/o0/c$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/w/o0/c$d;

    iget v1, v0, Le/a/c/w/o0/c$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/o0/c$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/o0/c$d;

    invoke-direct {v0, p0, p3}, Le/a/c/w/o0/c$d;-><init>(Le/a/c/w/o0/c;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/w/o0/c$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/o0/c$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/c/w/o0/c$d;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iput-object p1, v0, Le/a/c/w/o0/c$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/w/o0/c$d;->e:I

    invoke-virtual {p0, p2, v0}, Le/a/c/w/o0/c;->l(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    const-string p2, "$this$isGrmAllowedByUser"

    .line 4
    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grm"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-string v1, "ALL"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/a0/b0;

    .line 7
    iget-object v5, v4, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 8
    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 9
    iget-object v5, v4, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 10
    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 11
    :cond_6
    iget-object v5, v4, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 12
    sget-object v6, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->DEFAULT:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne v5, v6, :cond_7

    .line 13
    iget-object v4, v4, Le/a/c/a0/b0;->f:Lcom/truecaller/insights/source/SourceType;

    .line 14
    sget-object v5, Lcom/truecaller/insights/source/SourceType;->USER:Lcom/truecaller/insights/source/SourceType;

    if-ne v4, v5, :cond_7

    move v4, v3

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_2
    if-eqz v4, :cond_5

    move v0, v3

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v2

    :goto_4
    if-nez v0, :cond_f

    const-string v0, "$this$isGrmBlocked"

    .line 15
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_6

    .line 17
    :cond_9
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/c/a0/b0;

    .line 18
    iget-object v0, p3, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 20
    iget-object v0, p3, Le/a/c/a0/b0;->e:Ljava/util/List;

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 22
    :cond_b
    iget-object p3, p3, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 23
    sget-object v0, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne p3, v0, :cond_c

    move p3, v3

    goto :goto_5

    :cond_c
    move p3, v2

    :goto_5
    if-eqz p3, :cond_a

    move p1, v3

    goto :goto_7

    :cond_d
    :goto_6
    move p1, v2

    :goto_7
    if-nez p1, :cond_e

    goto :goto_8

    :cond_e
    move v3, v2

    .line 24
    :cond_f
    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/a/c/r/j/l;",
            ">;"
        }
    .end annotation

    const-string v0, "senderId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/w/o0/c;->c:Le/a/c/c0/f;

    const-string v1, "*"

    .line 2
    invoke-virtual {v0, v1}, Le/a/c/c0/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Le/a/c/c0/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Le/a/c/c0/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    invoke-static {p1}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/c/w/o0/c;->e:Ljava/util/Map;

    if-eqz v0, :cond_3

    const-string v1, "GRM_OTP"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    :cond_3
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public e(Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Z
    .locals 5

    const-string v0, "pdo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/c/w/o0/c;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/c/r/j/l;

    .line 4
    invoke-virtual {v3}, Le/a/c/r/j/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/c/r/h/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    return v0

    .line 6
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Le/a/c/r/j/l;

    .line 9
    invoke-virtual {v2}, Le/a/c/r/j/l;->a()Le/a/c/r/j/w;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0, p1}, Le/a/c/w/o0/c;->i(Ljava/util/List;Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/c/r/j/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/w/o0/c;->f:Le/a/c/r/j/y;

    invoke-virtual {v0}, Le/a/c/r/j/y;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Le/a/c/w/o0/c;->e:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/ModelType;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/source/ModelType;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/source/SmartSMSFeatureStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/c/w/o0/c$c;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/c/w/o0/c$c;

    iget v1, v0, Le/a/c/w/o0/c$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/o0/c$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/o0/c$c;

    invoke-direct {v0, p0, p4}, Le/a/c/w/o0/c$c;-><init>(Le/a/c/w/o0/c;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/c/w/o0/c$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/o0/c$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/c/w/o0/c$c;->i:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/truecaller/insights/source/ModelType;

    iget-object p1, v0, Le/a/c/w/o0/c$c;->h:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Le/a/c/w/o0/c$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/w/o0/c;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/c/w/o0/c$c;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/w/o0/c$c;->h:Ljava/lang/Object;

    iput-object p3, v0, Le/a/c/w/o0/c$c;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/c/w/o0/c$c;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/c/w/o0/c;->l(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p4, Ljava/lang/Iterable;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le/a/c/a0/b0;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_7

    if-eq v5, v3, :cond_6

    :goto_3
    move v5, v2

    goto :goto_4

    .line 10
    :cond_6
    iget-object v5, v4, Le/a/c/a0/b0;->e:Ljava/util/List;

    const-string v6, "ALL_UPDATES"

    .line 11
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_4

    .line 12
    :cond_7
    iget-object v5, v4, Le/a/c/a0/b0;->e:Ljava/util/List;

    const-string v6, "ALL_PARSER"

    .line 13
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    :goto_4
    if-nez v5, :cond_9

    .line 14
    iget-object v5, v4, Le/a/c/a0/b0;->e:Ljava/util/List;

    const-string v6, "ALL"

    .line 15
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 16
    iget-object v4, v4, Le/a/c/a0/b0;->e:Ljava/util/List;

    if-eqz p2, :cond_8

    .line 17
    :try_start_0
    invoke-static {p2}, Le/a/c/r/h/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-object v5, p2

    .line 18
    :goto_5
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_6

    :cond_8
    move v4, v3

    :goto_6
    if-eqz v4, :cond_a

    :cond_9
    move v2, v3

    .line 19
    :cond_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 24
    move-object v1, v0

    check-cast v1, Le/a/c/a0/b0;

    .line 25
    iget-object v1, v1, Le/a/c/a0/b0;->f:Lcom/truecaller/insights/source/SourceType;

    .line 26
    sget-object v4, Lcom/truecaller/insights/source/SourceType;->USER:Lcom/truecaller/insights/source/SourceType;

    if-ne v1, v4, :cond_c

    move v1, v3

    goto :goto_8

    :cond_c
    move v1, v2

    .line 27
    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 29
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 30
    :cond_d
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 31
    :cond_e
    invoke-virtual {p1, p2, v3}, Le/a/c/w/o0/c;->k(Ljava/util/List;Z)Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    move-result-object p2

    if-eqz p2, :cond_f

    goto :goto_9

    .line 32
    :cond_f
    invoke-virtual {p1, p3, v2}, Le/a/c/w/o0/c;->k(Ljava/util/List;Z)Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    move-result-object p2

    :goto_9
    return-object p2
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sender"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/w/o0/c;->b:Le/a/c/c0/f;

    invoke-virtual {v0, p1}, Le/a/c/c0/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i(Ljava/util/List;Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/r/j/w;",
            ">;",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ")Z"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "filter"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pdo"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_4

    check-cast v4, Le/a/c/r/j/w;

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v4}, Le/a/c/r/j/w;->c()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/c/r/j/v;

    .line 6
    invoke-virtual {v7}, Le/a/c/r/j/v;->b()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Le/a/c/w/o0/c;->j:Le/a/c/r/h/b;

    invoke-virtual {v7}, Le/a/c/r/j/v;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, p2, v7}, Le/a/c/r/h/b;->e(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7
    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v4}, Le/a/c/r/j/w;->b()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 10
    iget-object v7, p0, Le/a/c/w/o0/c;->j:Le/a/c/r/h/b;

    invoke-interface {v7, p2, v6}, Le/a/c/r/h/b;->e(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    move v3, v5

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 p1, 0x0

    throw p1

    .line 13
    :cond_5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic j(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/a0/b0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/w/o0/c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/w/o0/c$a;

    iget v1, v0, Le/a/c/w/o0/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/o0/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/o0/c$a;

    invoke-direct {v0, p0, p2}, Le/a/c/w/o0/c$a;-><init>(Le/a/c/w/o0/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/w/o0/c$a;->d:Ljava/lang/Object;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v0, Le/a/c/w/o0/c$a;->e:I

    const/4 v9, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v9, :cond_1

    iget-object p1, v0, Le/a/c/w/o0/c$a;->i:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iget-object v1, v0, Le/a/c/w/o0/c$a;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Le/a/c/w/o0/c$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/w/o0/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/w/o0/c$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v1, v0, Le/a/c/w/o0/c$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/c/w/o0/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Le/a/c/w/o0/c;->l:Le/a/c/a0/z;

    sget-object v3, Lcom/truecaller/insights/source/SourceType;->USER:Lcom/truecaller/insights/source/SourceType;

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    iput-object p0, v0, Le/a/c/w/o0/c$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/w/o0/c$a;->h:Ljava/lang/Object;

    iput v2, v0, Le/a/c/w/o0/c$a;->e:I

    move-object v2, p1

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Le/a/c/p/a;->K0(Le/a/c/a0/z;Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v8, :cond_4

    return-object v8

    :cond_4
    move-object v1, p0

    .line 5
    :goto_1
    check-cast p2, Ljava/util/Collection;

    .line 6
    iget-object v2, v1, Le/a/c/w/o0/c;->l:Le/a/c/a0/z;

    sget-object v3, Lcom/truecaller/insights/source/SourceType;->FIREBASE:Lcom/truecaller/insights/source/SourceType;

    iget-object v4, v1, Le/a/c/w/o0/c;->m:Le/a/c/b/e;

    invoke-interface {v4}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v1, v0, Le/a/c/w/o0/c$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/w/o0/c$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/w/o0/c$a;->i:Ljava/lang/Object;

    iput v9, v0, Le/a/c/w/o0/c$a;->e:I

    check-cast v2, Le/a/c/a0/a0;

    invoke-virtual {v2, p1, v3, v4, v0}, Le/a/c/a0/a0;->a(Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_5

    return-object v8

    :cond_5
    move-object v10, v1

    move-object v1, p1

    move-object p1, p2

    move-object p2, v0

    move-object v0, v10

    :goto_2
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 7
    iget-object p2, v0, Le/a/c/w/o0/c;->b:Le/a/c/c0/f;

    invoke-virtual {p2, v1, p1}, Le/a/c/c0/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final k(Ljava/util/List;Z)Lcom/truecaller/insights/source/SmartSMSFeatureStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/a0/b0;",
            ">;Z)",
            "Lcom/truecaller/insights/source/SmartSMSFeatureStatus;"
        }
    .end annotation

    const-string v0, "$this$getBlacklistedPref"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/c/a0/b0;

    .line 3
    iget-object v5, v5, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 4
    sget-object v6, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne v5, v6, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v4

    .line 5
    :goto_1
    check-cast v1, Le/a/c/a0/b0;

    if-eqz v1, :cond_3

    .line 6
    iget-object v0, v1, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    const-string v0, "$this$getWhitelistedPref"

    .line 7
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/c/a0/b0;

    .line 9
    iget-object v5, v5, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 10
    sget-object v6, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->ALLOWED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne v5, v6, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_6
    move-object v1, v4

    .line 11
    :goto_3
    check-cast v1, Le/a/c/a0/b0;

    if-eqz v1, :cond_7

    .line 12
    iget-object v0, v1, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    goto :goto_4

    :cond_7
    move-object v0, v4

    :goto_4
    if-eqz v0, :cond_8

    move-object v4, v0

    goto :goto_7

    :cond_8
    if-eqz p2, :cond_c

    const-string p2, "$this$getUserAllowedPref"

    .line 13
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Le/a/c/a0/b0;

    .line 15
    iget-object v1, v0, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 16
    sget-object v5, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->DEFAULT:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne v1, v5, :cond_a

    .line 17
    iget-object v0, v0, Le/a/c/a0/b0;->f:Lcom/truecaller/insights/source/SourceType;

    .line 18
    sget-object v1, Lcom/truecaller/insights/source/SourceType;->USER:Lcom/truecaller/insights/source/SourceType;

    if-ne v0, v1, :cond_a

    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v3

    :goto_5
    if-eqz v0, :cond_9

    goto :goto_6

    :cond_b
    move-object p2, v4

    .line 19
    :goto_6
    check-cast p2, Le/a/c/a0/b0;

    if-eqz p2, :cond_c

    .line 20
    iget-object v4, p2, Le/a/c/a0/b0;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    :cond_c
    :goto_7
    return-object v4
.end method

.method public final synthetic l(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/a0/b0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/w/o0/c$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/w/o0/c$b;

    iget v1, v0, Le/a/c/w/o0/c$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/o0/c$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/o0/c$b;

    invoke-direct {v0, p0, p2}, Le/a/c/w/o0/c$b;-><init>(Le/a/c/w/o0/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/w/o0/c$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/o0/c$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, p0, Le/a/c/w/o0/c;->b:Le/a/c/c0/f;

    invoke-virtual {p2, p1}, Le/a/c/c0/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    iput v3, v0, Le/a/c/w/o0/c$b;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/c/w/o0/c;->j(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    :goto_2
    return-object p2
.end method
