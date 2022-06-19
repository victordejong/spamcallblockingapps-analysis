.class public final Le/a/r/z/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/z/z;


# instance fields
.field public final a:Le/a/r/z/a0;

.field public final b:Le/a/b0/e/f;

.field public final c:Le/a/b0/b/f/a;


# direct methods
.method public constructor <init>(Le/a/r/z/a0;Le/a/b0/e/f;Le/a/b0/b/f/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "requester"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installationDetailsProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/c;->a:Le/a/r/z/a0;

    iput-object p2, p0, Le/a/r/z/c;->b:Le/a/b0/e/f;

    iput-object p3, p0, Le/a/r/z/c;->c:Le/a/b0/b/f/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/account/network/VerifyTokenRequestDto;)Le/a/r/r/a;
    .locals 8

    const-string v0, "requestDto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/r/z/c;->a:Le/a/r/z/a0;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    const-class v2, Le/a/n2/a/c;

    new-instance v3, Le/a/b0/b/a/b;

    invoke-direct {v3}, Le/a/b0/b/a/b;-><init>()V

    .line 5
    sget-object v4, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v3, v4, v2}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v4

    .line 6
    sget-object v5, Lcom/truecaller/common/network/util/AuthRequirement;->NONE:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v6}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 7
    new-instance v5, Le/a/b0/b/g/a$b;

    invoke-direct {v5, v0}, Le/a/b0/b/g/a$b;-><init>(Z)V

    iput-object v5, v4, Le/a/b0/b/g/b;->c:Le/a/b0/b/g/a$b;

    .line 8
    invoke-static {v4}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v0

    .line 9
    invoke-virtual {v3, v0}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 10
    new-instance v0, Le/a/n2/a/d;

    invoke-direct {v0}, Le/a/n2/a/d;-><init>()V

    const-string v4, "interceptor"

    .line 11
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v4, v3, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-nez v4, :cond_0

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Le/a/b0/b/a/b;->d:Ljava/util/List;

    .line 14
    :cond_0
    iget-object v4, v3, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_1
    invoke-virtual {v3, v2}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n2/a/c;

    .line 16
    invoke-interface {v0, p1}, Le/a/n2/a/c;->c(Lcom/truecaller/account/network/VerifyTokenRequestDto;)Lx3/b;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    iget-object v0, v1, Le/a/r/z/a0;->a:Le/m/e/k;

    invoke-static {p1, v0}, Le/a/p5/s0/g;->O1(Lx3/a0;Le/m/e/k;)Le/a/r/r/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Le/a/r/z/f;)Le/a/r/r/a;
    .locals 11

    const-string v0, "requestParams"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/z/c;->a:Le/a/r/z/a0;

    .line 2
    iget-object v1, p0, Le/a/r/z/c;->b:Le/a/b0/e/f;

    invoke-interface {v1}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    const-string v1, "region-2"

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string v1, "region-br"

    goto :goto_0

    :cond_2
    const-string v1, "region-za"

    goto :goto_0

    :cond_3
    const-string v1, "region-c"

    goto :goto_0

    :cond_4
    const-string v1, "region-1"

    :goto_0
    move-object v9, v1

    .line 4
    new-instance v1, Lcom/truecaller/account/network/SendTokenRequestDto;

    .line 5
    iget-object v5, p1, Le/a/r/z/f;->a:Ljava/lang/String;

    .line 6
    iget-object v6, p1, Le/a/r/z/f;->b:Ljava/lang/String;

    .line 7
    iget-object v7, p1, Le/a/r/z/f;->c:Ljava/lang/Integer;

    .line 8
    iget v8, p1, Le/a/r/z/f;->d:I

    .line 9
    iget-object p1, p0, Le/a/r/z/c;->c:Le/a/b0/b/f/a;

    invoke-virtual {p1}, Le/a/b0/b/f/a;->a()Lcom/truecaller/account/network/InstallationDetailsDto;

    move-result-object v10

    move-object v4, v1

    .line 10
    invoke-direct/range {v4 .. v10}, Lcom/truecaller/account/network/SendTokenRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Lcom/truecaller/account/network/InstallationDetailsDto;)V

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Le/a/n2/a/c;

    const-string v4, "requestDto"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v5, v0, Le/a/r/z/a0;->b:Le/a/u3/g;

    .line 13
    iget-object v6, v5, Le/a/u3/g;->n5:Le/a/u3/g$a;

    sget-object v7, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v8, 0x14b

    aget-object v7, v7, v8

    invoke-virtual {v6, v5, v7}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v5

    .line 14
    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    const-string v6, "interceptor"

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    .line 15
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v4, Le/a/b0/b/a/b;

    invoke-direct {v4}, Le/a/b0/b/a/b;-><init>()V

    .line 17
    sget-object v5, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v4, v5, p1}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v5

    .line 18
    sget-object v8, Lcom/truecaller/common/network/util/AuthRequirement;->NONE:Lcom/truecaller/common/network/util/AuthRequirement;

    invoke-static {v5, v8, v7, v2, v7}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 19
    new-instance v2, Le/a/b0/b/g/a$b;

    invoke-direct {v2, v3}, Le/a/b0/b/g/a$b;-><init>(Z)V

    iput-object v2, v5, Le/a/b0/b/g/b;->c:Le/a/b0/b/g/a$b;

    .line 20
    invoke-static {v5}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v2

    .line 21
    invoke-virtual {v4, v2}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 22
    new-instance v2, Le/a/n2/a/d;

    invoke-direct {v2}, Le/a/n2/a/d;-><init>()V

    .line 23
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v3, v4, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-nez v3, :cond_5

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Le/a/b0/b/a/b;->d:Ljava/util/List;

    .line 26
    :cond_5
    iget-object v3, v4, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_6
    invoke-virtual {v4, p1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/n2/a/c;

    .line 28
    invoke-interface {p1, v1}, Le/a/n2/a/c;->f(Lcom/truecaller/account/network/SendTokenRequestDto;)Lx3/b;

    move-result-object p1

    goto :goto_1

    .line 29
    :cond_7
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v4, Le/a/b0/b/a/b;

    invoke-direct {v4}, Le/a/b0/b/a/b;-><init>()V

    .line 31
    sget-object v5, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v4, v5, p1}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v5

    .line 32
    sget-object v8, Lcom/truecaller/common/network/util/AuthRequirement;->NONE:Lcom/truecaller/common/network/util/AuthRequirement;

    invoke-static {v5, v8, v7, v2, v7}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 33
    new-instance v2, Le/a/b0/b/g/a$b;

    invoke-direct {v2, v3}, Le/a/b0/b/g/a$b;-><init>(Z)V

    iput-object v2, v5, Le/a/b0/b/g/b;->c:Le/a/b0/b/g/a$b;

    .line 34
    invoke-static {v5}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v2

    .line 35
    invoke-virtual {v4, v2}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 36
    new-instance v2, Le/a/n2/a/d;

    invoke-direct {v2}, Le/a/n2/a/d;-><init>()V

    .line 37
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v3, v4, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-nez v3, :cond_8

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Le/a/b0/b/a/b;->d:Ljava/util/List;

    .line 40
    :cond_8
    iget-object v3, v4, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-eqz v3, :cond_9

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_9
    invoke-virtual {v4, p1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/n2/a/c;

    .line 42
    invoke-interface {p1, v1}, Le/a/n2/a/c;->m(Lcom/truecaller/account/network/SendTokenRequestDto;)Lx3/b;

    move-result-object p1

    .line 43
    :goto_1
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    iget-object v0, v0, Le/a/r/z/a0;->a:Le/m/e/k;

    invoke-static {p1, v0}, Le/a/p5/s0/g;->O1(Lx3/a0;Le/m/e/k;)Le/a/r/r/a;

    move-result-object p1

    return-object p1
.end method
