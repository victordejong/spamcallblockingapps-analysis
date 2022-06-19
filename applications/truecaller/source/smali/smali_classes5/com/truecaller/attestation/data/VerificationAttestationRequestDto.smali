.class public final Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;",
        "",
        "",
        "requestId",
        "Ljava/lang/String;",
        "getRequestId",
        "()Ljava/lang/String;",
        "statement",
        "getStatement",
        "",
        "phoneNumber",
        "J",
        "getPhoneNumber",
        "()J",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;J)V",
        "attestation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final phoneNumber:J

.field private final requestId:Ljava/lang/String;

.field private final statement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;->statement:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;->requestId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;->phoneNumber:J

    return-void
.end method


# virtual methods
.method public final getPhoneNumber()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;->phoneNumber:J

    return-wide v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;->statement:Ljava/lang/String;

    return-object v0
.end method
