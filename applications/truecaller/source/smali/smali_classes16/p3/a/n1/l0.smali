.class public abstract Lp3/a/n1/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lp3/a/n1/x;
.end method

.method public b()Lp3/a/e0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/l0;->a()Lp3/a/n1/x;

    move-result-object v0

    invoke-interface {v0}, Lp3/a/d0;->b()Lp3/a/e0;

    move-result-object v0

    return-object v0
.end method

.method public c(Lp3/a/n1/u$a;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/l0;->a()Lp3/a/n1/x;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lp3/a/n1/u;->c(Lp3/a/n1/u$a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public d(Lp3/a/n1/t1$a;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/l0;->a()Lp3/a/n1/x;

    move-result-object v0

    invoke-interface {v0, p1}, Lp3/a/n1/t1;->d(Lp3/a/n1/t1$a;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public f(Lp3/a/g1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/l0;->a()Lp3/a/n1/x;

    move-result-object v0

    invoke-interface {v0, p1}, Lp3/a/n1/t1;->f(Lp3/a/g1;)V

    return-void
.end method

.method public g(Lp3/a/g1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/l0;->a()Lp3/a/n1/x;

    move-result-object v0

    invoke-interface {v0, p1}, Lp3/a/n1/t1;->g(Lp3/a/g1;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lp3/a/n1/l0;->a()Lp3/a/n1/x;

    move-result-object v1

    const-string v2, "delegate"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
