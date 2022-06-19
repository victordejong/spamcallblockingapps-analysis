.class public abstract Lp3/a/n1/o0;
.super Lp3/a/r0;
.source "SourceFile"


# instance fields
.field public final a:Lp3/a/r0;


# direct methods
.method public constructor <init>(Lp3/a/r0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp3/a/r0;-><init>()V

    const-string v0, "delegate can not be null"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lp3/a/n1/o0;->a:Lp3/a/r0;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/o0;->a:Lp3/a/r0;

    invoke-virtual {v0}, Lp3/a/r0;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/o0;->a:Lp3/a/r0;

    invoke-virtual {v0}, Lp3/a/r0;->c()V

    return-void
.end method

.method public d(Lp3/a/r0$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/o0;->a:Lp3/a/r0;

    invoke-virtual {v0, p1}, Lp3/a/r0;->d(Lp3/a/r0$d;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/n1/o0;->a:Lp3/a/r0;

    const-string v2, "delegate"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
