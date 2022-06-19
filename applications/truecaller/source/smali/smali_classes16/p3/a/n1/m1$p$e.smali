.class public final Lp3/a/n1/m1$p$e;
.super Lp3/a/n1/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/m1$p$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/n1/b0<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final l:Lp3/a/q;

.field public final m:Lp3/a/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public final n:Lp3/a/c;

.field public final synthetic o:Lp3/a/n1/m1$p;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$p;Lp3/a/q;Lp3/a/p0;Lp3/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/q;",
            "Lp3/a/p0<",
            "TReqT;TRespT;>;",
            "Lp3/a/c;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    .line 2
    iget-object v0, p1, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    invoke-static {v0, p4}, Lp3/a/n1/m1;->j(Lp3/a/n1/m1;Lp3/a/c;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p1, p1, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 3
    iget-object p1, p1, Lp3/a/n1/m1;->i:Lp3/a/n1/m1$r;

    .line 4
    iget-object v1, p4, Lp3/a/c;->a:Lp3/a/r;

    .line 5
    invoke-direct {p0, v0, p1, v1}, Lp3/a/n1/b0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lp3/a/r;)V

    .line 6
    iput-object p2, p0, Lp3/a/n1/m1$p$e;->l:Lp3/a/q;

    .line 7
    iput-object p3, p0, Lp3/a/n1/m1$p$e;->m:Lp3/a/p0;

    .line 8
    iput-object p4, p0, Lp3/a/n1/m1$p$e;->n:Lp3/a/c;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance v1, Lp3/a/n1/m1$p$e$a;

    invoke-direct {v1, p0}, Lp3/a/n1/m1$p$e$a;-><init>(Lp3/a/n1/m1$p$e;)V

    .line 2
    iget-object v2, v0, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v1, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0}, Lp3/a/k1;->a()V

    return-void
.end method
