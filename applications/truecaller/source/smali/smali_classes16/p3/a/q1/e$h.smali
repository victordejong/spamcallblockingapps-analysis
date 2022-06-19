.class public final Lp3/a/q1/e$h;
.super Lp3/a/q1/e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/q1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/q1/e$d<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/q1/e$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/q1/e$c<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRespT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/a/q1/e$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/q1/e$c<",
            "TRespT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lp3/a/q1/e$d;-><init>(Lp3/a/q1/e$a;)V

    .line 2
    iput-object p1, p0, Lp3/a/q1/e$h;->a:Lp3/a/q1/e$c;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/g1;Lp3/a/o0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lp3/a/q1/e$h;->b:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lp3/a/q1/e$h;->a:Lp3/a/q1/e$c;

    sget-object v0, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v1, "No value received for unary call"

    .line 4
    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 5
    new-instance v1, Lp3/a/i1;

    invoke-direct {v1, v0, p2}, Lp3/a/i1;-><init>(Lp3/a/g1;Lp3/a/o0;)V

    .line 6
    invoke-virtual {p1, v1}, Lp3/a/q1/e$c;->a(Ljava/lang/Throwable;)Z

    .line 7
    :cond_0
    iget-object p1, p0, Lp3/a/q1/e$h;->a:Lp3/a/q1/e$c;

    iget-object p2, p0, Lp3/a/q1/e$h;->b:Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    .line 9
    sget-object p2, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    .line 10
    :cond_1
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lp3/a/q1/e$h;->a:Lp3/a/q1/e$c;

    .line 13
    new-instance v1, Lp3/a/i1;

    invoke-direct {v1, p1, p2}, Lp3/a/i1;-><init>(Lp3/a/g1;Lp3/a/o0;)V

    .line 14
    invoke-virtual {v0, v1}, Lp3/a/q1/e$c;->a(Ljava/lang/Throwable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lp3/a/o0;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/q1/e$h;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lp3/a/q1/e$h;->b:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v0, "More than one value received for unary call"

    invoke-virtual {p1, v0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    throw p1
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/q1/e$h;->a:Lp3/a/q1/e$c;

    .line 2
    iget-object v0, v0, Lp3/a/q1/e$c;->a:Lp3/a/f;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lp3/a/f;->c(I)V

    return-void
.end method
