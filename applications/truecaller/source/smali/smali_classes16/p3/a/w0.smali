.class public abstract Lp3/a/w0;
.super Lp3/a/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/f$a<",
        "TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/g1;Lp3/a/o0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/w0;->e()Lp3/a/f$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lp3/a/f$a;->a(Lp3/a/g1;Lp3/a/o0;)V

    return-void
.end method

.method public b(Lp3/a/o0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/w0;->e()Lp3/a/f$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp3/a/f$a;->b(Lp3/a/o0;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/a/w0;->e()Lp3/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lp3/a/f$a;->d()V

    return-void
.end method

.method public abstract e()Lp3/a/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp3/a/f$a<",
            "*>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lp3/a/w0;->e()Lp3/a/f$a;

    move-result-object v1

    const-string v2, "delegate"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
