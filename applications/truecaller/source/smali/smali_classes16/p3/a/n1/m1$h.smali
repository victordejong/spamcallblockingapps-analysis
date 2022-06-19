.class public final Lp3/a/n1/m1$h;
.super Lp3/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/w<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/c0;

.field public final b:Lp3/a/d;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lp3/a/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public final e:Lp3/a/q;

.field public f:Lp3/a/c;

.field public g:Lp3/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/f<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/a/c0;Lp3/a/d;Ljava/util/concurrent/Executor;Lp3/a/p0;Lp3/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/c0;",
            "Lp3/a/d;",
            "Ljava/util/concurrent/Executor;",
            "Lp3/a/p0<",
            "TReqT;TRespT;>;",
            "Lp3/a/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp3/a/w;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/m1$h;->a:Lp3/a/c0;

    .line 3
    iput-object p2, p0, Lp3/a/n1/m1$h;->b:Lp3/a/d;

    .line 4
    iput-object p4, p0, Lp3/a/n1/m1$h;->d:Lp3/a/p0;

    .line 5
    iget-object p1, p5, Lp3/a/c;->b:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    .line 6
    :goto_0
    iput-object p3, p0, Lp3/a/n1/m1$h;->c:Ljava/util/concurrent/Executor;

    .line 7
    new-instance p1, Lp3/a/c;

    invoke-direct {p1, p5}, Lp3/a/c;-><init>(Lp3/a/c;)V

    .line 8
    iput-object p3, p1, Lp3/a/c;->b:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p1, p0, Lp3/a/n1/m1$h;->f:Lp3/a/c;

    .line 10
    invoke-static {}, Lp3/a/q;->l()Lp3/a/q;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/m1$h;->e:Lp3/a/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$h;->g:Lp3/a/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lp3/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public e(Lp3/a/f$a;Lp3/a/o0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a<",
            "TRespT;>;",
            "Lp3/a/o0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lp3/a/n1/c2;

    iget-object v1, p0, Lp3/a/n1/m1$h;->d:Lp3/a/p0;

    iget-object v2, p0, Lp3/a/n1/m1$h;->f:Lp3/a/c;

    invoke-direct {v0, v1, p2, v2}, Lp3/a/n1/c2;-><init>(Lp3/a/p0;Lp3/a/o0;Lp3/a/c;)V

    .line 2
    iget-object v1, p0, Lp3/a/n1/m1$h;->a:Lp3/a/c0;

    invoke-virtual {v1, v0}, Lp3/a/c0;->a(Lp3/a/i0$f;)Lp3/a/c0$b;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lp3/a/c0$b;->a:Lp3/a/g1;

    .line 4
    invoke-virtual {v1}, Lp3/a/g1;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object p2, p0, Lp3/a/n1/m1$h;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lp3/a/n1/o1;

    invoke-direct {v0, p0, p1, v1}, Lp3/a/n1/o1;-><init>(Lp3/a/n1/m1$h;Lp3/a/f$a;Lp3/a/g1;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, v0, Lp3/a/c0$b;->c:Lp3/a/g;

    .line 7
    iget-object v0, v0, Lp3/a/c0$b;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Lp3/a/n1/s1;

    .line 9
    iget-object v2, p0, Lp3/a/n1/m1$h;->d:Lp3/a/p0;

    invoke-virtual {v0, v2}, Lp3/a/n1/s1;->c(Lp3/a/p0;)Lp3/a/n1/s1$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v2, p0, Lp3/a/n1/m1$h;->f:Lp3/a/c;

    sget-object v3, Lp3/a/n1/s1$b;->g:Lp3/a/c$a;

    invoke-virtual {v2, v3, v0}, Lp3/a/c;->f(Lp3/a/c$a;Ljava/lang/Object;)Lp3/a/c;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/m1$h;->f:Lp3/a/c;

    :cond_1
    if-eqz v1, :cond_2

    .line 11
    iget-object v0, p0, Lp3/a/n1/m1$h;->d:Lp3/a/p0;

    iget-object v2, p0, Lp3/a/n1/m1$h;->f:Lp3/a/c;

    iget-object v3, p0, Lp3/a/n1/m1$h;->b:Lp3/a/d;

    invoke-interface {v1, v0, v2, v3}, Lp3/a/g;->a(Lp3/a/p0;Lp3/a/c;Lp3/a/d;)Lp3/a/f;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/m1$h;->g:Lp3/a/f;

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lp3/a/n1/m1$h;->b:Lp3/a/d;

    iget-object v1, p0, Lp3/a/n1/m1$h;->d:Lp3/a/p0;

    iget-object v2, p0, Lp3/a/n1/m1$h;->f:Lp3/a/c;

    invoke-virtual {v0, v1, v2}, Lp3/a/d;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/m1$h;->g:Lp3/a/f;

    .line 13
    :goto_0
    iget-object v0, p0, Lp3/a/n1/m1$h;->g:Lp3/a/f;

    invoke-virtual {v0, p1, p2}, Lp3/a/f;->e(Lp3/a/f$a;Lp3/a/o0;)V

    return-void
.end method

.method public f()Lp3/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp3/a/f<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$h;->g:Lp3/a/f;

    return-object v0
.end method
