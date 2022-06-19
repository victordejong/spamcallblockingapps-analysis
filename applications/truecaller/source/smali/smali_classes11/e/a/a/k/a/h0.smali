.class public final Le/a/a/k/a/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/g0;


# instance fields
.field public a:Lp3/a/q1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/q1/h<",
            "Lcom/truecaller/api/services/messenger/v1/events/Event$Ack;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Runnable;

.field public c:Landroid/os/HandlerThread;

.field public d:Le/a/a/k/a/w1;

.field public e:Z

.field public final f:Le/a/p5/c;

.field public final g:Le/a/a/k/a/b;

.field public final h:Le/a/a/k/a/s1;

.field public final i:Le/a/a/k/a/p;

.field public final j:Le/a/a/k/a/i1;

.field public final k:Le/a/b0/e/l;

.field public final l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/x0;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/p5/c;Le/a/a/k/a/b;Le/a/a/k/a/s1;Le/a/a/k/a/p;Le/a/a/k/a/i1;Le/a/b0/e/l;Le/a/r2/f;Le/a/r2/f;Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/c;",
            "Le/a/a/k/a/b;",
            "Le/a/a/k/a/s1;",
            "Le/a/a/k/a/p;",
            "Le/a/a/k/a/i1;",
            "Le/a/b0/e/l;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/x0;",
            ">;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stubManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imEventProcessor"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imVersionManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imUnsupportedEventManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/h0;->f:Le/a/p5/c;

    iput-object p2, p0, Le/a/a/k/a/h0;->g:Le/a/a/k/a/b;

    iput-object p3, p0, Le/a/a/k/a/h0;->h:Le/a/a/k/a/s1;

    iput-object p4, p0, Le/a/a/k/a/h0;->i:Le/a/a/k/a/p;

    iput-object p5, p0, Le/a/a/k/a/h0;->j:Le/a/a/k/a/i1;

    iput-object p6, p0, Le/a/a/k/a/h0;->k:Le/a/b0/e/l;

    iput-object p7, p0, Le/a/a/k/a/h0;->l:Le/a/r2/f;

    iput-object p8, p0, Le/a/a/k/a/h0;->m:Le/a/r2/f;

    iput-object p9, p0, Le/a/a/k/a/h0;->n:Le/a/r2/f;

    .line 2
    new-instance p1, Le/a/a/k/a/h0$b;

    invoke-direct {p1, p0}, Le/a/a/k/a/h0$b;-><init>(Le/a/a/k/a/h0;)V

    iput-object p1, p0, Le/a/a/k/a/h0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/a/k/a/h0;->a:Lp3/a/q1/h;

    .line 2
    iget-boolean v1, p0, Le/a/a/k/a/h0;->e:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Le/a/a/k/a/h0;->g:Le/a/a/k/a/b;

    iget-object v2, p0, Le/a/a/k/a/h0;->f:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->a()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Le/a/a/k/a/b;->a(JZ)J

    move-result-wide v1

    .line 4
    iget-object p1, p0, Le/a/a/k/a/h0;->d:Le/a/a/k/a/w1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/a/k/a/h0;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "handler"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/a/k/a/h0;->c:Landroid/os/HandlerThread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    :goto_0
    return-void

    :cond_2
    const-string p1, "thread"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/a/k/a/h0;->e:Z

    .line 2
    iget-object v0, p0, Le/a/a/k/a/h0;->d:Le/a/a/k/a/w1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Le/a/a/k/a/h0;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Le/a/a/k/a/h0;->a:Lp3/a/q1/h;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lp3/a/q1/h;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/a/k/a/h0;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "thread"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "handler"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "im_subscription"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/k/a/h0;->c:Landroid/os/HandlerThread;

    const-string v1, "thread"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Le/a/a/k/a/w1;

    iget-object v3, p0, Le/a/a/k/a/h0;->c:Landroid/os/HandlerThread;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v3, "thread.looper"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Le/a/a/k/a/w1;-><init>(Le/a/a/k/a/h0;Landroid/os/Looper;)V

    iput-object v0, p0, Le/a/a/k/a/h0;->d:Le/a/a/k/a/w1;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Le/a/a/k/a/h0;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string v0, "handler"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a/h0;->d:Le/a/a/k/a/w1;

    if-eqz v0, :cond_0

    new-instance v1, Le/a/a/k/a/h0$a;

    invoke-direct {v1, p0}, Le/a/a/k/a/h0$a;-><init>(Le/a/a/k/a/h0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string v0, "handler"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
