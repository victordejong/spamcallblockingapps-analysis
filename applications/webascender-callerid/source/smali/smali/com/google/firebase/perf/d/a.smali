.class public Lcom/google/firebase/perf/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lcom/google/firebase/perf/g/a;

.field private static volatile e:Lcom/google/firebase/perf/d/a;


# instance fields
.field private a:Lcom/google/firebase/perf/i/d;

.field private b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

.field private c:Lcom/google/firebase/perf/d/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/g/a;->e()Lcom/google/firebase/perf/g/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/d/a;->d:Lcom/google/firebase/perf/g/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;Lcom/google/firebase/perf/i/d;Lcom/google/firebase/perf/d/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/internal/RemoteConfigManager;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/perf/d/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Lcom/google/firebase/perf/i/d;

    invoke-direct {p2}, Lcom/google/firebase/perf/i/d;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/google/firebase/perf/d/a;->a:Lcom/google/firebase/perf/i/d;

    if-nez p3, :cond_2

    .line 4
    invoke-static {}, Lcom/google/firebase/perf/d/u;->d()Lcom/google/firebase/perf/d/u;

    move-result-object p3

    :cond_2
    iput-object p3, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    return-void
.end method

.method private F(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private G(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ";"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/perf/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private H(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private J(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private K(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private L(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/d/u;->a(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/d/u;->c(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/d/u;->e(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/d/u;->f(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized f()Lcom/google/firebase/perf/d/a;
    .locals 3

    const-class v0, Lcom/google/firebase/perf/d/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/d/a;->e:Lcom/google/firebase/perf/d/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/firebase/perf/d/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/google/firebase/perf/d/a;-><init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;Lcom/google/firebase/perf/i/d;Lcom/google/firebase/perf/d/u;)V

    sput-object v1, Lcom/google/firebase/perf/d/a;->e:Lcom/google/firebase/perf/d/a;

    .line 3
    :cond_0
    sget-object v1, Lcom/google/firebase/perf/d/a;->e:Lcom/google/firebase/perf/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private i()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/j;->e()Lcom/google/firebase/perf/d/j;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->s(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {v2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/d/u;->k(Ljava/lang/String;Z)Z

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 7
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->b(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/j;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private j()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/i;->e()Lcom/google/firebase/perf/d/i;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->v(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/d/u;->j(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->G(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->e(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->G(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->G(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private l(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->a:Lcom/google/firebase/perf/i/d;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/i/d;->b(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method

.method private m(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->a:Lcom/google/firebase/perf/i/d;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/i/d;->c(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method

.method private n(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->a:Lcom/google/firebase/perf/i/d;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/i/d;->e(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method

.method private s(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getBoolean(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method

.method private t(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getFloat(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method

.method private u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getLong(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method

.method private v(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/d/t<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/i/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/d/t;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getString(Ljava/lang/String;)Lcom/google/firebase/perf/i/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/o;->e()Lcom/google/firebase/perf/d/o;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->n(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/d/u;->i(Ljava/lang/String;J)Z

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/o;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public B()F
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/p;->e()Lcom/google/firebase/perf/d/p;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->m(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 5
    invoke-direct {p0, v1}, Lcom/google/firebase/perf/d/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->t(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/d/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/d/u;->h(Ljava/lang/String;F)Z

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 10
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->c(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/d/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/p;->d()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public C()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/q;->e()Lcom/google/firebase/perf/d/q;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/d/u;->i(Ljava/lang/String;J)Z

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/q;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/r;->e()Lcom/google/firebase/perf/d/r;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/d/u;->i(Ljava/lang/String;J)Z

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/r;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public E()F
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/s;->e()Lcom/google/firebase/perf/d/s;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->t(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/d/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/d/u;->h(Ljava/lang/String;F)Z

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->c(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/d/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/s;->d()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/perf/d/a;->h()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/d/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public M(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/firebase/perf/d/a;->d:Lcom/google/firebase/perf/g/a;

    invoke-static {p1}, Lcom/google/firebase/perf/i/j;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/g/a;->h(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/d/u;->g(Landroid/content/Context;)V

    return-void
.end method

.method public N(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/d/a;->M(Landroid/content/Context;)V

    return-void
.end method

.method public O(Lcom/google/firebase/perf/i/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/perf/d/a;->a:Lcom/google/firebase/perf/i/d;

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/d;->e()Lcom/google/firebase/perf/d/d;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/firebase/perf/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/d;->c()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/google/firebase/perf/d/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getRemoteConfigValueOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v2, v3}, Lcom/google/firebase/perf/d/d;->g(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-static {v2, v3}, Lcom/google/firebase/perf/d/d;->f(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/d/u;->j(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    .line 10
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->e(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/b;->e()Lcom/google/firebase/perf/d/b;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->l(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/b;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/perf/d/a;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/d/c;->d()Lcom/google/firebase/perf/d/c;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->b(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 7
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->l(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 10
    :cond_2
    sget-object v0, Lcom/google/firebase/perf/d/a;->d:Lcom/google/firebase/perf/g/a;

    const-string v1, "CollectionEnabled metadata key unknown or value not found in manifest."

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/g/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/d/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/perf/d/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/e;->e()Lcom/google/firebase/perf/d/e;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/d/u;->i(Ljava/lang/String;J)Z

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/e;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/f;->e()Lcom/google/firebase/perf/d/f;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/d/u;->i(Ljava/lang/String;J)Z

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/f;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()F
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/g;->e()Lcom/google/firebase/perf/d/g;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->t(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/d/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/d/u;->h(Ljava/lang/String;F)Z

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->c(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/d/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/g;->d()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public r()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/h;->e()Lcom/google/firebase/perf/d/h;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->L(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/d/u;->i(Ljava/lang/String;J)Z

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->L(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/h;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public w()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/k;->e()Lcom/google/firebase/perf/d/k;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->n(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/d/u;->i(Ljava/lang/String;J)Z

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/k;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/l;->e()Lcom/google/firebase/perf/d/l;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->n(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/d/u;->i(Ljava/lang/String;J)Z

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/l;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/m;->e()Lcom/google/firebase/perf/d/m;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->n(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->K(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->K(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/d/u;->i(Ljava/lang/String;J)Z

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->K(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/m;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/n;->e()Lcom/google/firebase/perf/d/n;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->n(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->u(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/firebase/perf/d/a;->c:Lcom/google/firebase/perf/d/u;

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/d/u;->i(Ljava/lang/String;J)Z

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/d/a;->d(Lcom/google/firebase/perf/d/t;)Lcom/google/firebase/perf/i/e;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/d/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/perf/i/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/n;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
