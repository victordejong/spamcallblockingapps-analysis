.class public final Lp3/a/r1/a$b;
.super Lp3/a/r1/a$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/r1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lp3/a/g1;


# direct methods
.method public constructor <init>(Lp3/a/g1;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lp3/a/r1/a$e;-><init>(Lp3/a/r1/a$a;)V

    const-string v0, "status"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/r1/a$b;->a:Lp3/a/g1;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/i0$f;)Lp3/a/i0$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lp3/a/r1/a$b;->a:Lp3/a/g1;

    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lp3/a/i0$e;->e:Lp3/a/i0$e;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lp3/a/r1/a$b;->a:Lp3/a/g1;

    invoke-static {p1}, Lp3/a/i0$e;->a(Lp3/a/g1;)Lp3/a/i0$e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Lp3/a/r1/a$e;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lp3/a/r1/a$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/r1/a$b;->a:Lp3/a/g1;

    check-cast p1, Lp3/a/r1/a$b;

    iget-object v1, p1, Lp3/a/r1/a$b;->a:Lp3/a/g1;

    invoke-static {v0, v1}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp3/a/r1/a$b;->a:Lp3/a/g1;

    .line 2
    invoke-virtual {v0}, Lp3/a/g1;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lp3/a/r1/a$b;->a:Lp3/a/g1;

    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lp3/a/r1/a$b;

    .line 2
    new-instance v1, Lcom/google/common/base/MoreObjects$ToStringHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/google/common/base/MoreObjects$1;)V

    .line 3
    iget-object v0, p0, Lp3/a/r1/a$b;->a:Lp3/a/g1;

    const-string v2, "status"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    invoke-virtual {v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
