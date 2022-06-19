.class public Lp3/a/n1/m1$p;
.super Lp3/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/m1$p$e;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lp3/a/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Lp3/a/d;

.field public final synthetic d:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Ljava/lang/String;Lp3/a/n1/m1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    invoke-direct {p0}, Lp3/a/d;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    sget-object p3, Lp3/a/n1/m1;->m0:Lp3/a/c0;

    .line 4
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lp3/a/n1/m1$p;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance p1, Lp3/a/n1/m1$p$a;

    invoke-direct {p1, p0}, Lp3/a/n1/m1$p$a;-><init>(Lp3/a/n1/m1$p;)V

    iput-object p1, p0, Lp3/a/n1/m1$p;->c:Lp3/a/d;

    const-string p1, "authority"

    .line 6
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/m1$p;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/p0<",
            "TReqT;TRespT;>;",
            "Lp3/a/c;",
            ")",
            "Lp3/a/f<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$p;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lp3/a/n1/m1;->m0:Lp3/a/c0;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lp3/a/n1/m1$p;->i(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance v2, Lp3/a/n1/m1$p$b;

    invoke-direct {v2, p0}, Lp3/a/n1/m1$p$b;-><init>(Lp3/a/n1/m1$p;)V

    .line 5
    iget-object v3, v0, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v4, "runnable is null"

    invoke-static {v2, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lp3/a/k1;->a()V

    .line 7
    iget-object v0, p0, Lp3/a/n1/m1$p;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2}, Lp3/a/n1/m1$p;->i(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    iget-object v0, p0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 10
    iget-object v0, v0, Lp3/a/n1/m1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance p1, Lp3/a/n1/m1$p$c;

    invoke-direct {p1, p0}, Lp3/a/n1/m1$p$c;-><init>(Lp3/a/n1/m1$p;)V

    return-object p1

    .line 13
    :cond_2
    invoke-static {}, Lp3/a/q;->l()Lp3/a/q;

    move-result-object v0

    .line 14
    new-instance v1, Lp3/a/n1/m1$p$e;

    invoke-direct {v1, p0, v0, p1, p2}, Lp3/a/n1/m1$p$e;-><init>(Lp3/a/n1/m1$p;Lp3/a/q;Lp3/a/p0;Lp3/a/c;)V

    .line 15
    iget-object p1, p0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    iget-object p1, p1, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance p2, Lp3/a/n1/m1$p$d;

    invoke-direct {p2, p0, v1}, Lp3/a/n1/m1$p$d;-><init>(Lp3/a/n1/m1$p;Lp3/a/n1/m1$p$e;)V

    .line 16
    iget-object v0, p1, Lp3/a/k1;->b:Ljava/util/Queue;

    invoke-static {p2, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p1}, Lp3/a/k1;->a()V

    return-object v1
.end method

.method public final i(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/p0<",
            "TReqT;TRespT;>;",
            "Lp3/a/c;",
            ")",
            "Lp3/a/f<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$p;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lp3/a/c0;

    if-nez v2, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/m1$p;->c:Lp3/a/d;

    invoke-virtual {v0, p1, p2}, Lp3/a/d;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, v2, Lp3/a/n1/s1$c;

    if-eqz v0, :cond_2

    .line 4
    check-cast v2, Lp3/a/n1/s1$c;

    iget-object v0, v2, Lp3/a/n1/s1$c;->b:Lp3/a/n1/s1;

    .line 5
    invoke-virtual {v0, p1}, Lp3/a/n1/s1;->c(Lp3/a/p0;)Lp3/a/n1/s1$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lp3/a/n1/s1$b;->g:Lp3/a/c$a;

    invoke-virtual {p2, v1, v0}, Lp3/a/c;->f(Lp3/a/c$a;Ljava/lang/Object;)Lp3/a/c;

    move-result-object p2

    .line 7
    :cond_1
    iget-object v0, p0, Lp3/a/n1/m1$p;->c:Lp3/a/d;

    invoke-virtual {v0, p1, p2}, Lp3/a/d;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    new-instance v0, Lp3/a/n1/m1$h;

    iget-object v3, p0, Lp3/a/n1/m1$p;->c:Lp3/a/d;

    iget-object v1, p0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 9
    iget-object v4, v1, Lp3/a/n1/m1;->j:Ljava/util/concurrent/Executor;

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    .line 10
    invoke-direct/range {v1 .. v6}, Lp3/a/n1/m1$h;-><init>(Lp3/a/c0;Lp3/a/d;Ljava/util/concurrent/Executor;Lp3/a/p0;Lp3/a/c;)V

    return-object v0
.end method

.method public j(Lp3/a/c0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$p;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/c0;

    .line 2
    iget-object v1, p0, Lp3/a/n1/m1$p;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lp3/a/n1/m1;->m0:Lp3/a/c0;

    if-ne v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 5
    iget-object p1, p1, Lp3/a/n1/m1;->E:Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/n1/m1$p$e;

    .line 7
    iget-object v1, v0, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    iget-object v1, v1, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    iget-object v2, v0, Lp3/a/n1/m1$p$e;->n:Lp3/a/c;

    invoke-static {v1, v2}, Lp3/a/n1/m1;->j(Lp3/a/n1/m1;Lp3/a/c;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lp3/a/n1/p1;

    invoke-direct {v2, v0}, Lp3/a/n1/p1;-><init>(Lp3/a/n1/m1$p$e;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
