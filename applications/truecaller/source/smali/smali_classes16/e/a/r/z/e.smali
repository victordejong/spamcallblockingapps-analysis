.class public final Le/a/r/z/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/z/z;


# instance fields
.field public final a:Le/a/r/z/a0;


# direct methods
.method public constructor <init>(Le/a/r/z/a0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "requester"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/e;->a:Le/a/r/z/a0;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/account/network/VerifyTokenRequestDto;)Le/a/r/r/a;
    .locals 8

    const-string v0, "requestDto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/r/z/e;->a:Le/a/r/z/a0;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    const-class v2, Le/a/n2/a/c;

    new-instance v3, Le/a/b0/b/a/b;

    invoke-direct {v3}, Le/a/b0/b/a/b;-><init>()V

    .line 5
    sget-object v4, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v3, v4, v2}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v4

    .line 6
    sget-object v5, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v6}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    const/4 v5, 0x1

    .line 7
    invoke-virtual {v4, v5}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 8
    new-instance v5, Le/a/b0/b/g/a$h;

    invoke-direct {v5, v0}, Le/a/b0/b/g/a$h;-><init>(Z)V

    iput-object v5, v4, Le/a/b0/b/g/b;->f:Le/a/b0/b/g/a$h;

    .line 9
    invoke-static {v4}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v0

    .line 10
    invoke-virtual {v3, v0}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 11
    invoke-virtual {v3, v2}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n2/a/c;

    .line 12
    invoke-interface {v0, p1}, Le/a/n2/a/c;->d(Lcom/truecaller/account/network/VerifyTokenRequestDto;)Lx3/b;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    iget-object v0, v1, Le/a/r/z/a0;->a:Le/m/e/k;

    invoke-static {p1, v0}, Le/a/p5/s0/g;->O1(Lx3/a0;Le/m/e/k;)Le/a/r/r/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Le/a/r/z/f;)Le/a/r/r/a;
    .locals 8

    const-string v0, "requestParams"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/z/e;->a:Le/a/r/z/a0;

    .line 2
    new-instance v1, Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;

    .line 3
    iget-object v2, p1, Le/a/r/z/f;->a:Ljava/lang/String;

    .line 4
    iget-object v3, p1, Le/a/r/z/f;->b:Ljava/lang/String;

    .line 5
    iget-object v4, p1, Le/a/r/z/f;->c:Ljava/lang/Integer;

    .line 6
    iget p1, p1, Le/a/r/z/f;->d:I

    .line 7
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "requestDto"

    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    const-class v2, Le/a/n2/a/c;

    new-instance v3, Le/a/b0/b/a/b;

    invoke-direct {v3}, Le/a/b0/b/a/b;-><init>()V

    .line 11
    sget-object v4, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v3, v4, v2}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v4

    .line 12
    sget-object v5, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v6}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v4, v5}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 14
    new-instance v5, Le/a/b0/b/g/a$h;

    invoke-direct {v5, p1}, Le/a/b0/b/g/a$h;-><init>(Z)V

    iput-object v5, v4, Le/a/b0/b/g/b;->f:Le/a/b0/b/g/a$h;

    .line 15
    invoke-static {v4}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object p1

    .line 16
    invoke-virtual {v3, p1}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 17
    invoke-virtual {v3, v2}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/n2/a/c;

    .line 18
    invoke-interface {p1, v1}, Le/a/n2/a/c;->n(Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;)Lx3/b;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    iget-object v0, v0, Le/a/r/z/a0;->a:Le/m/e/k;

    invoke-static {p1, v0}, Le/a/p5/s0/g;->O1(Lx3/a0;Le/m/e/k;)Le/a/r/r/a;

    move-result-object p1

    return-object p1
.end method
