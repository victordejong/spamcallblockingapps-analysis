.class public abstract Lp3/a/n1/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/t2$a;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/a/n1/a1$d$a$a;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1$d$a$a;->a:Lp3/a/n1/t;

    .line 3
    invoke-interface {v0, p1}, Lp3/a/n1/t2;->a(Lp3/a/n1/t2$a;)V

    return-void
.end method

.method public b(Lp3/a/o0;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/a/n1/a1$d$a$a;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1$d$a$a;->a:Lp3/a/n1/t;

    .line 3
    invoke-interface {v0, p1}, Lp3/a/n1/t;->b(Lp3/a/o0;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/a/n1/a1$d$a$a;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1$d$a$a;->a:Lp3/a/n1/t;

    .line 3
    invoke-interface {v0}, Lp3/a/n1/t2;->d()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lp3/a/n1/a1$d$a$a;

    .line 2
    iget-object v1, v1, Lp3/a/n1/a1$d$a$a;->a:Lp3/a/n1/t;

    const-string v2, "delegate"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
