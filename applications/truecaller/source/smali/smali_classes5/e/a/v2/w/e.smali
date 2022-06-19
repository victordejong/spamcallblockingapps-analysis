.class public interface abstract Le/a/v2/w/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008b\u0018\u00002\u00020\u0001J\u0015\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\'\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\'\u00a2\u0006\u0004\u0008\u0006\u0010\u0005J\u0015\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\'\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u001f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00022\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008H\'\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00022\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008H\'\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u001f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00022\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008H\'\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u001f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00022\u0008\u0008\u0001\u0010\t\u001a\u00020\u000fH\'\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00022\u0008\u0008\u0001\u0010\t\u001a\u00020\u000fH\'\u00a2\u0006\u0004\u0008\u0013\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Le/a/v2/w/e;",
        "",
        "Lx3/b;",
        "Lcom/truecaller/attestation/data/AttestationNonceDto;",
        "f",
        "()Lx3/b;",
        "c",
        "g",
        "Lcom/truecaller/attestation/data/AttestationRequestDto;",
        "requestDto",
        "Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;",
        "a",
        "(Lcom/truecaller/attestation/data/AttestationRequestDto;)Lx3/b;",
        "e",
        "d",
        "Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;",
        "Lu3/l0;",
        "h",
        "(Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;)Lx3/b;",
        "b",
        "attestation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/truecaller/attestation/data/AttestationRequestDto;)Lx3/b;
    .param p1    # Lcom/truecaller/attestation/data/AttestationRequestDto;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/attestation/data/AttestationRequestDto;",
            ")",
            "Lx3/b<",
            "Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1.1/attestation/android/verify"
    .end annotation
.end method

.method public abstract b(Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;)Lx3/b;
    .param p1    # Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/prever/huawei/verify/"
    .end annotation
.end method

.method public abstract c()Lx3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Lcom/truecaller/attestation/data/AttestationNonceDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "/v1/attestation/huawei/getNonce"
    .end annotation
.end method

.method public abstract d(Lcom/truecaller/attestation/data/AttestationRequestDto;)Lx3/b;
    .param p1    # Lcom/truecaller/attestation/data/AttestationRequestDto;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/attestation/data/AttestationRequestDto;",
            ")",
            "Lx3/b<",
            "Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/playintegrity/android/verify"
    .end annotation
.end method

.method public abstract e(Lcom/truecaller/attestation/data/AttestationRequestDto;)Lx3/b;
    .param p1    # Lcom/truecaller/attestation/data/AttestationRequestDto;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/attestation/data/AttestationRequestDto;",
            ")",
            "Lx3/b<",
            "Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/attestation/huawei/verify"
    .end annotation
.end method

.method public abstract f()Lx3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Lcom/truecaller/attestation/data/AttestationNonceDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "/v1/attestation/android/getNonce"
    .end annotation
.end method

.method public abstract g()Lx3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Lcom/truecaller/attestation/data/AttestationNonceDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "/v1/playintegrity/android/getNonce"
    .end annotation
.end method

.method public abstract h(Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;)Lx3/b;
    .param p1    # Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/prever/safetynet/verify/"
    .end annotation
.end method
