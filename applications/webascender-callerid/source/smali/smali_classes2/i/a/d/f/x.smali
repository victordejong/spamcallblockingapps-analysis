.class final Li/a/d/f/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Li/a/d/c/d;

.field private final c:Li/a/d/f/h;

.field private final d:Li/a/d/e/d;

.field private final e:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Li/a/d/f/s;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Li/a/d/f/b0/h;

.field private final g:Li/a/d/f/v;

.field private volatile h:Li/a/d/c/e;


# direct methods
.method constructor <init>(Li/a/d/c/d;Li/a/d/f/h;Li/a/d/e/d;Ljava/util/function/Supplier;Li/a/d/f/b0/h;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/d/c/d;",
            "Li/a/d/f/h;",
            "Li/a/d/e/d;",
            "Ljava/util/function/Supplier<",
            "Li/a/d/f/s;",
            ">;",
            "Li/a/d/f/b0/h;",
            "Ljava/util/List<",
            "Li/a/d/f/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li/a/d/f/x;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Li/a/d/f/x;->h:Li/a/d/c/e;

    .line 4
    iput-object p1, p0, Li/a/d/f/x;->b:Li/a/d/c/d;

    .line 5
    iput-object p2, p0, Li/a/d/f/x;->c:Li/a/d/f/h;

    .line 6
    iput-object p3, p0, Li/a/d/f/x;->d:Li/a/d/e/d;

    .line 7
    iput-object p4, p0, Li/a/d/f/x;->e:Ljava/util/function/Supplier;

    .line 8
    iput-object p5, p0, Li/a/d/f/x;->f:Li/a/d/f/b0/h;

    .line 9
    invoke-static {p6}, Li/a/d/f/u;->d(Ljava/lang/Iterable;)Li/a/d/f/v;

    move-result-object p1

    iput-object p1, p0, Li/a/d/f/x;->g:Li/a/d/f/v;

    return-void
.end method


# virtual methods
.method a()Li/a/d/f/v;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/x;->g:Li/a/d/f/v;

    return-object v0
.end method

.method b()Li/a/d/c/d;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/x;->b:Li/a/d/c/d;

    return-object v0
.end method

.method c()Li/a/d/f/h;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/x;->c:Li/a/d/f/h;

    return-object v0
.end method

.method d()Li/a/d/e/d;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/x;->d:Li/a/d/e/d;

    return-object v0
.end method

.method e()Li/a/d/f/b0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/x;->f:Li/a/d/f/b0/h;

    return-object v0
.end method

.method f()Li/a/d/f/s;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/x;->e:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/d/f/s;

    return-object v0
.end method

.method g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/x;->h:Li/a/d/c/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method h()Li/a/d/c/e;
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/f/x;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/a/d/f/x;->h:Li/a/d/c/e;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Li/a/d/f/x;->h:Li/a/d/c/e;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget-object v1, p0, Li/a/d/f/x;->g:Li/a/d/f/v;

    invoke-interface {v1}, Li/a/d/f/v;->shutdown()Li/a/d/c/e;

    move-result-object v1

    iput-object v1, p0, Li/a/d/f/x;->h:Li/a/d/c/e;

    .line 5
    iget-object v1, p0, Li/a/d/f/x;->h:Li/a/d/c/e;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
