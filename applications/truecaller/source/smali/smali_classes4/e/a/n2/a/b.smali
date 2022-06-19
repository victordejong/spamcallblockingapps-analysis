.class public final Le/a/n2/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n2/a/a;


# instance fields
.field public final a:Le/m/e/k;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    iput-object v0, p0, Le/a/n2/a/b;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/account/network/CheckCredentialsRequestDto;Ljava/lang/String;)Le/a/n2/a/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "requestDto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class v0, Le/a/n2/a/c;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 3
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v1, v2, v0}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    invoke-virtual {v2, v3, p2}, Le/a/b0/b/g/b;->b(Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;)Le/a/b0/b/g/b;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v2, p2}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 6
    invoke-static {v2}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object p2

    .line 7
    invoke-virtual {v1, p2}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 8
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/n2/a/c;

    .line 9
    invoke-interface {p2, p1}, Le/a/n2/a/c;->l(Lcom/truecaller/account/network/CheckCredentialsRequestDto;)Lx3/b;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string p2, "response"

    .line 11
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 13
    check-cast p1, Le/a/n2/a/e;

    goto :goto_1

    .line 14
    :cond_0
    iget-object p2, p0, Le/a/n2/a/b;->a:Le/m/e/k;

    const-class v0, Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;

    invoke-static {p1, p2, v0}, Le/m/d/y/n;->E(Lx3/a0;Le/m/e/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;

    .line 15
    new-instance v0, Le/a/n2/a/f;

    .line 16
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 17
    iget p1, p1, Lu3/k0;->e:I

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p2}, Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;->getTtl()Ljava/lang/Long;

    move-result-object v1

    :cond_2
    invoke-direct {v0, p1, v2, v1}, Le/a/n2/a/f;-><init>(ILjava/lang/Integer;Ljava/lang/Long;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public b(Lcom/truecaller/account/network/DeleteSecondaryNumberRequestDto;)Le/a/n2/a/g;
    .locals 6

    const-string v0, "requestDto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class v0, Le/a/n2/a/c;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 3
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v1, v2, v0}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 6
    new-instance v4, Le/a/b0/b/g/a$h;

    invoke-direct {v4, v3}, Le/a/b0/b/g/a$h;-><init>(Z)V

    iput-object v4, v2, Le/a/b0/b/g/b;->f:Le/a/b0/b/g/a$h;

    .line 7
    invoke-static {v2}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 9
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n2/a/c;

    .line 10
    invoke-interface {v0, p1}, Le/a/n2/a/c;->a(Lcom/truecaller/account/network/DeleteSecondaryNumberRequestDto;)Lx3/b;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string v0, "response"

    .line 12
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Le/a/n2/a/h;->a:Le/a/n2/a/h;

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Le/a/n2/a/b;->a:Le/m/e/k;

    const-class v1, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;

    invoke-static {p1, v0, v1}, Le/m/d/y/n;->E(Lx3/a0;Le/m/e/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/n2/a/g;

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;)Lx3/a0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lx3/a0<",
            "Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "installationId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    const-class v1, Le/a/n2/a/c;

    new-instance v2, Le/a/b0/b/a/b;

    invoke-direct {v2}, Le/a/b0/b/a/b;-><init>()V

    .line 3
    sget-object v3, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v2, v3, v1}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/truecaller/common/network/util/AuthRequirement;->NONE:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v5}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 5
    new-instance v4, Le/a/b0/b/g/a$b;

    invoke-direct {v4, v0}, Le/a/b0/b/g/a$b;-><init>(Z)V

    iput-object v4, v3, Le/a/b0/b/g/b;->c:Le/a/b0/b/g/a$b;

    .line 6
    invoke-static {v3}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v0

    .line 7
    invoke-virtual {v2, v0}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 8
    new-instance v0, Le/a/n2/a/d;

    invoke-direct {v0}, Le/a/n2/a/d;-><init>()V

    const-string v3, "interceptor"

    .line 9
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, v2, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-nez v3, :cond_0

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Le/a/b0/b/a/b;->d:Ljava/util/List;

    .line 12
    :cond_0
    iget-object v3, v2, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    invoke-virtual {v2, v1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n2/a/c;

    .line 14
    new-instance v1, Lcom/truecaller/account/network/ExchangeCredentialsRequestDto;

    invoke-direct {v1, p1}, Lcom/truecaller/account/network/ExchangeCredentialsRequestDto;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/n2/a/c;->k(Lcom/truecaller/account/network/ExchangeCredentialsRequestDto;)Lx3/b;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string v0, "AccountRestAdapter.excha\u2026installationId).execute()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d()Lcom/truecaller/account/network/AccountPhoneNumbersResponseDto;
    .locals 6

    .line 1
    const-class v0, Le/a/n2/a/c;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 2
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v1, v2, v0}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 5
    new-instance v4, Le/a/b0/b/g/a$h;

    invoke-direct {v4, v3}, Le/a/b0/b/g/a$h;-><init>(Z)V

    iput-object v4, v2, Le/a/b0/b/g/b;->f:Le/a/b0/b/g/a$h;

    .line 6
    invoke-static {v2}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 8
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n2/a/c;

    .line 9
    invoke-interface {v0}, Le/a/n2/a/c;->j()Lx3/b;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    const-string v1, "it"

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 13
    move-object v5, v0

    check-cast v5, Lcom/truecaller/account/network/AccountPhoneNumbersResponseDto;

    :cond_1
    return-object v5
.end method
