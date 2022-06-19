.class public final Le/a/b0/b/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/b/l/a;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;

    .line 2
    invoke-interface {v0}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;->a()Lx3/b;

    move-result-object v0

    .line 3
    invoke-static {v0}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;

    const-string v1, "dm"

    .line 2
    invoke-interface {v0, v1}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;->c(Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 3
    invoke-static {v0}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;

    const-string v1, "dm"

    .line 2
    invoke-interface {v0, v1}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;->b(Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 3
    invoke-static {v0}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;

    const-string v1, "ads"

    .line 2
    invoke-interface {v0, v1}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;->c(Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 3
    invoke-static {v0}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;

    const-string v1, "ads"

    .line 2
    invoke-interface {v0, v1}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$a;->b(Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 3
    invoke-static {v0}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
