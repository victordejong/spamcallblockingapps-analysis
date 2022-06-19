.class public final Le/a/v2/w/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v2/w/a;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/p5/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceInfoUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v2/w/b;->b:Le/a/p5/g;

    .line 2
    sget-object p1, Le/a/v2/w/b$a;->b:Le/a/v2/w/b$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v2/w/b;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/attestation/AttestationEngine;)Lx3/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/attestation/AttestationEngine;",
            ")",
            "Lx3/a0<",
            "Lcom/truecaller/attestation/data/AttestationNonceDto;",
            ">;"
        }
    .end annotation

    const-class v0, Le/a/v2/w/e;

    const-string v1, "engine"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2
    sget-object p1, Lcom/truecaller/common/network/util/KnownEndpoints;->DEVICE_SAFETY:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {p1, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/v2/w/e;

    .line 3
    invoke-interface {p1}, Le/a/v2/w/e;->c()Lx3/b;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 5
    :cond_1
    sget-object p1, Lcom/truecaller/common/network/util/KnownEndpoints;->DEVICE_SAFETY:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {p1, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/v2/w/e;

    .line 6
    invoke-interface {p1}, Le/a/v2/w/e;->f()Lx3/b;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lcom/truecaller/common/network/util/KnownEndpoints;->DEVICE_SAFETY:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {p1, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/v2/w/e;

    .line 8
    invoke-interface {p1}, Le/a/v2/w/e;->g()Lx3/b;

    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string v0, "when (engine) {\n        \u2026ity()\n        }.execute()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;)Le/a/v2/w/c;
    .locals 6

    const-class v0, Le/a/v2/w/e;

    const-string v1, "attestation"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "engine"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq p2, v2, :cond_1

    if-ne p2, v5, :cond_0

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/truecaller/common/network/util/KnownEndpoints;->DEVICE_SAFETY:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {p2, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/v2/w/e;

    .line 4
    new-instance v0, Lcom/truecaller/attestation/data/AttestationRequestDto;

    invoke-direct {v0, p1, v4, v5, v3}, Lcom/truecaller/attestation/data/AttestationRequestDto;-><init>(Ljava/lang/String;ZILs1/z/c/f;)V

    invoke-interface {p2, v0}, Le/a/v2/w/e;->e(Lcom/truecaller/attestation/data/AttestationRequestDto;)Lx3/b;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p2, Lcom/truecaller/common/network/util/KnownEndpoints;->DEVICE_SAFETY:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {p2, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/v2/w/e;

    .line 8
    new-instance v0, Lcom/truecaller/attestation/data/AttestationRequestDto;

    invoke-direct {v0, p1, v4, v5, v3}, Lcom/truecaller/attestation/data/AttestationRequestDto;-><init>(Ljava/lang/String;ZILs1/z/c/f;)V

    invoke-interface {p2, v0}, Le/a/v2/w/e;->a(Lcom/truecaller/attestation/data/AttestationRequestDto;)Lx3/b;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p0, Le/a/v2/w/b;->b:Le/a/p5/g;

    invoke-interface {p2}, Le/a/p5/g;->i()Z

    move-result p2

    .line 10
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->DEVICE_SAFETY:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v1, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v2/w/e;

    .line 12
    new-instance v1, Lcom/truecaller/attestation/data/AttestationRequestDto;

    invoke-direct {v1, p1, p2}, Lcom/truecaller/attestation/data/AttestationRequestDto;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Le/a/v2/w/e;->d(Lcom/truecaller/attestation/data/AttestationRequestDto;)Lx3/b;

    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 14
    iget-object p2, p1, Lx3/a0;->a:Lu3/k0;

    .line 15
    iget p2, p2, Lu3/k0;->e:I

    const-string v0, "response"

    .line 16
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Le/a/v2/w/c;

    .line 17
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 18
    check-cast p1, Le/a/v2/w/d;

    invoke-direct {v0, p2, p1}, Le/a/v2/w/c;-><init>(ILe/a/v2/w/d;)V

    goto :goto_1

    .line 19
    :cond_3
    new-instance v0, Le/a/v2/w/c;

    .line 20
    iget-object v1, p0, Le/a/v2/w/b;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/e/k;

    .line 21
    const-class v2, Lcom/truecaller/attestation/data/AttestationErrorResponseDto;

    invoke-static {p1, v1, v2}, Le/m/d/y/n;->E(Lx3/a0;Le/m/e/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/v2/w/d;

    invoke-direct {v0, p2, p1}, Le/a/v2/w/c;-><init>(ILe/a/v2/w/d;)V

    :goto_1
    return-object v0
.end method
