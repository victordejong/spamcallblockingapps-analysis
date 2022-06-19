.class public abstract Lp3/a/n1/n0;
.super Lp3/a/l0;
.source "SourceFile"


# instance fields
.field public final a:Lp3/a/l0;


# direct methods
.method public constructor <init>(Lp3/a/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/l0;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/n0;->a:Lp3/a/l0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/n0;->a:Lp3/a/l0;

    invoke-virtual {v0}, Lp3/a/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/p0<",
            "TRequestT;TResponseT;>;",
            "Lp3/a/c;",
            ")",
            "Lp3/a/f<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/n0;->a:Lp3/a/l0;

    invoke-virtual {v0, p1, p2}, Lp3/a/d;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/n0;->a:Lp3/a/l0;

    invoke-virtual {v0}, Lp3/a/l0;->i()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/n1/n0;->a:Lp3/a/l0;

    const-string v2, "delegate"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
