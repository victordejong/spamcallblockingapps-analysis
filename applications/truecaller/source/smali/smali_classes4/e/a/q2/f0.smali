.class public final Le/a/q2/f0;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/a0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/i/a0/c;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/a0;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installedPackagesDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/q2/f0;->c:Lo3/a;

    iput-object p2, p0, Le/a/q2/f0;->d:Lo3/a;

    iput-object p3, p0, Le/a/q2/f0;->e:Lo3/a;

    iput-object p4, p0, Le/a/q2/f0;->f:Landroid/content/Context;

    const-string p1, "InstalledAppsHeartbeatWorkAction"

    .line 2
    iput-object p1, p0, Le/a/q2/f0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 12

    const-string v0, "Result.failure()"

    .line 1
    :try_start_0
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->USERAPPS:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/i/a0/f;

    invoke-static {v1, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/a0/f;

    invoke-interface {v1}, Le/a/i/a0/f;->get()Lx3/b;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Lx3/b;->execute()Lx3/a0;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3
    invoke-virtual {v1}, Lx3/a0;->b()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Result.success()"

    if-nez v2, :cond_3

    .line 4
    :try_start_1
    iget-object v1, v1, Lx3/a0;->a:Lu3/k0;

    .line 5
    iget v1, v1, Lu3/k0;->e:I

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 6
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 7
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x257

    const/16 v3, 0x1f4

    if-le v3, v1, :cond_1

    goto :goto_0

    :cond_1
    if-lt v2, v1, :cond_2

    .line 8
    new-instance v1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v2, "Result.retry()"

    .line 9
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    new-instance v1, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 11
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v1

    .line 12
    :cond_3
    iget-object v1, v1, Lx3/a0;->b:Ljava/lang/Object;

    .line 13
    check-cast v1, Le/a/i/a0/e;

    if-eqz v1, :cond_11

    .line 14
    invoke-virtual {v1}, Le/a/i/a0/e;->b()I

    move-result v2

    if-gtz v2, :cond_4

    .line 15
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 16
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 17
    :cond_4
    invoke-virtual {v1}, Le/a/i/a0/e;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 18
    iget-object v4, p0, Le/a/q2/f0;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_f

    const/4 v5, 0x0

    .line 19
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 20
    invoke-static {v4}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v4

    .line 21
    new-instance v6, Le/a/q2/f0$a;

    invoke-direct {v6, v2}, Le/a/q2/f0$a;-><init>(Ljava/util/List;)V

    invoke-static {v4, v6}, Ls1/e0/x;->g(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v2

    .line 22
    sget-object v4, Le/a/q2/f0$b;->b:Le/a/q2/f0$b;

    invoke-static {v2, v4}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v2

    .line 23
    invoke-static {v2}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v6

    :goto_2
    if-eqz v2, :cond_f

    .line 25
    iget-object v4, p0, Le/a/q2/f0;->d:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/i/a0/c;

    invoke-interface {v4}, Le/a/i/a0/c;->getAll()Ljava/util/List;

    move-result-object v4

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Le/a/i/a0/b;

    .line 28
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Le/a/i/a0/e;->b()I

    move-result v8

    invoke-static {v7, v8}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    .line 29
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v2, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 31
    check-cast v10, Le/a/i/a0/b;

    .line 32
    iget-object v10, v10, Le/a/i/a0/b;->a:Ljava/lang/String;

    .line 33
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 34
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Le/a/i/a0/b;

    .line 36
    iget-object v11, v11, Le/a/i/a0/b;->a:Ljava/lang/String;

    .line 37
    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 38
    :cond_a
    iget-object v4, p0, Le/a/q2/f0;->d:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/i/a0/c;

    invoke-interface {v4, v7}, Le/a/i/a0/c;->b(Ljava/util/List;)V

    .line 39
    iget-object v4, p0, Le/a/q2/f0;->d:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/i/a0/c;

    invoke-interface {v4, v2}, Le/a/i/a0/c;->a(Ljava/util/List;)V

    .line 40
    invoke-virtual {v1}, Le/a/i/a0/e;->c()I

    move-result v1

    invoke-static {v7, v1}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 43
    check-cast v7, Le/a/i/a0/b;

    .line 44
    iget-object v7, v7, Le/a/i/a0/b;->a:Ljava/lang/String;

    .line 45
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 46
    :cond_b
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v7, 0x1

    xor-int/2addr v2, v7

    if-eqz v2, :cond_d

    .line 47
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v5, :cond_c

    .line 48
    invoke-virtual {p0, v2, v4}, Le/a/q2/f0;->d(Ljava/util/List;Ljava/util/List;)V

    move v5, v7

    goto :goto_7

    .line 49
    :cond_c
    invoke-virtual {p0, v2, v6}, Le/a/q2/f0;->d(Ljava/util/List;Ljava/util/List;)V

    goto :goto_7

    .line 50
    :cond_d
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0, v1, v4}, Le/a/q2/f0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 51
    :cond_e
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 52
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 53
    :cond_f
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 54
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 55
    :cond_10
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 56
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 57
    :cond_11
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 58
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 59
    :cond_12
    new-instance v1, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 60
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 61
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_13

    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_13

    .line 62
    invoke-static {v1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 63
    :cond_13
    new-instance v1, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 64
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/f0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/q2/f0;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->j:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/i/a0/b;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Le/a/i/a0/b;

    .line 4
    new-instance v8, Le/a/l5/a/z3;

    .line 5
    iget-object v3, v1, Le/a/i/a0/b;->a:Ljava/lang/String;

    .line 6
    iget-object v4, v1, Le/a/i/a0/b;->b:Ljava/lang/String;

    .line 7
    iget v2, v1, Le/a/i/a0/b;->c:I

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    iget-wide v6, v1, Le/a/i/a0/b;->d:J

    .line 10
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-wide v1, v1, Le/a/i/a0/b;->e:J

    .line 12
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    .line 13
    invoke-direct/range {v2 .. v7}, Le/a/l5/a/z3;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Le/a/l5/a/z0;->e:Lorg/apache/avro/Schema;

    new-instance p1, Le/a/l5/a/z0$b;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Le/a/l5/a/z0$b;-><init>(Le/a/l5/a/z0$a;)V

    .line 15
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 16
    iput-object v0, p1, Le/a/l5/a/z0$b;->a:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 18
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {p1, v0, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 19
    iput-object p2, p1, Le/a/l5/a/z0$b;->b:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v1, p2, v2

    .line 21
    invoke-virtual {p1}, Le/a/l5/a/z0$b;->a()Le/a/l5/a/z0;

    move-result-object p1

    .line 22
    iget-object p2, p0, Le/a/q2/f0;->e:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    invoke-interface {p2, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
