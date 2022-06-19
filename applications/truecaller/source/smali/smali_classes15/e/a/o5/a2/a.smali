.class public final Le/a/o5/a2/a;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/b0/e/l;

.field public final d:Le/a/p5/g;

.field public final e:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/p5/g;Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/e/l;",
            "Le/a/p5/g;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "truecallerAccountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventTracker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/o5/a2/a;->c:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/o5/a2/a;->d:Le/a/p5/g;

    iput-object p3, p0, Le/a/o5/a2/a;->e:Le/a/r2/f;

    const-string p1, "ASRWorkAction12"

    .line 2
    iput-object p1, p0, Le/a/o5/a2/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/o5/a2/a;->d:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->w()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_0

    .line 4
    check-cast v3, Ljava/lang/String;

    const-string v2, "Id"

    .line 5
    invoke-static {v2, v4}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v5, Ls1/k;

    invoke-direct {v5, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 v0, 0x0

    throw v0

    .line 9
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    const-string v2, "AppIdentity"

    .line 11
    invoke-virtual {v0, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 12
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 13
    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 14
    iget-object v1, p0, Le/a/o5/a2/a;->e:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a0;

    invoke-interface {v1, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 15
    :cond_2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "ListenableWorker.Result.success()"

    .line 16
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/a2/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/a2/a;->c:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    return v0
.end method
