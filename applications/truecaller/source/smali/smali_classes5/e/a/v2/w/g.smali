.class public final Le/a/v2/w/g;
.super Ljava/lang/Object;
.source "SourceFile"


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

    iput-object v0, p0, Le/a/v2/w/g;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;J)Le/a/v2/w/h;
    .locals 5

    const-class v0, Le/a/v2/w/e;

    const-string v1, "attestation"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "engine"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestId"

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/truecaller/common/network/util/KnownEndpoints;->DEVICE_SAFETY:Lcom/truecaller/common/network/util/KnownEndpoints;

    sget-object v1, Le/a/v2/w/f;->b:Le/a/v2/w/f;

    invoke-static {p2, v0, v1}, Le/a/b0/b/a/d;->b(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/v2/w/e;

    .line 4
    new-instance v0, Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {p2, v0}, Le/a/v2/w/e;->b(Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;)Lx3/b;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not supported"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p2, Lcom/truecaller/common/network/util/KnownEndpoints;->DEVICE_SAFETY:Lcom/truecaller/common/network/util/KnownEndpoints;

    sget-object v1, Le/a/v2/w/f;->b:Le/a/v2/w/f;

    invoke-static {p2, v0, v1}, Le/a/b0/b/a/d;->b(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/v2/w/e;

    .line 8
    new-instance v0, Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {p2, v0}, Le/a/v2/w/e;->h(Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;)Lx3/b;

    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 10
    iget-object p2, p1, Lx3/a0;->a:Lu3/k0;

    .line 11
    iget p2, p2, Lu3/k0;->e:I

    const-string p3, "response"

    .line 12
    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p1, Le/a/v2/w/h;

    sget-object p3, Le/a/v2/w/j;->a:Le/a/v2/w/j;

    invoke-direct {p1, p2, p3}, Le/a/v2/w/h;-><init>(ILe/a/v2/w/i;)V

    goto :goto_1

    .line 13
    :cond_2
    new-instance p3, Le/a/v2/w/h;

    iget-object p4, p0, Le/a/v2/w/g;->a:Le/m/e/k;

    const-class p5, Lcom/truecaller/attestation/data/VerificationAttestationErrorResponseDto;

    invoke-static {p1, p4, p5}, Le/m/d/y/n;->E(Lx3/a0;Le/m/e/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/v2/w/i;

    invoke-direct {p3, p2, p1}, Le/a/v2/w/h;-><init>(ILe/a/v2/w/i;)V

    move-object p1, p3

    :goto_1
    return-object p1
.end method
