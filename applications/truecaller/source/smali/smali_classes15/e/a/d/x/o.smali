.class public final Le/a/d/x/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/x/m;
.implements Lq3/a/i0;


# instance fields
.field public volatile a:Lq3/a/p1;

.field public final b:Ls1/w/f;

.field public final c:Le/a/d/g;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/g1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/d/c0/j1;

.field public final f:Le/a/d/c0/y0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/g;Lo3/a;Le/a/d/c0/j1;Le/a/d/c0/y0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/d/g;",
            "Lo3/a<",
            "Le/a/d/c0/g1;",
            ">;",
            "Le/a/d/c0/j1;",
            "Le/a/d/c0/y0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipIdProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/x/o;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/d/x/o;->c:Le/a/d/g;

    iput-object p3, p0, Le/a/d/x/o;->d:Lo3/a;

    iput-object p4, p0, Le/a/d/x/o;->e:Le/a/d/c0/j1;

    iput-object p5, p0, Le/a/d/x/o;->f:Le/a/d/c0/y0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/x/o;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c0/g1;

    const-string v1, "reportedVoipState"

    invoke-interface {v0, v1}, Le/a/d/c0/g1;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized c()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/x/o;->a:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/d/x/o;->a:Lq3/a/p1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lq3/a/p1;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_1
    new-instance v4, Le/a/d/x/n;

    invoke-direct {v4, p0, v1}, Le/a/d/x/n;-><init>(Le/a/d/x/o;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    .line 4
    iput-object v0, p0, Le/a/d/x/o;->a:Lq3/a/p1;

    .line 5
    iget-object v0, p0, Le/a/d/x/o;->a:Lq3/a/p1;

    if-eqz v0, :cond_2

    new-instance v1, Le/a/d/x/o$a;

    invoke-direct {v1, p0}, Le/a/d/x/o$a;-><init>(Le/a/d/x/o;)V

    invoke-interface {v0, v1}, Lq3/a/p1;->I(Ls1/z/b/l;)Lq3/a/v0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/o;->b:Ls1/w/f;

    return-object v0
.end method
