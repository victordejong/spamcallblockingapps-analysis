.class public final Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;
.super Le/a/v2/w/d;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;",
        "Le/a/v2/w/d;",
        "",
        "ttl",
        "J",
        "getTtl",
        "()J",
        "<init>",
        "(J)V",
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
.field private final ttl:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/v2/w/d;-><init>(Ls1/z/c/f;)V

    iput-wide p1, p0, Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;->ttl:J

    return-void
.end method


# virtual methods
.method public final getTtl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;->ttl:J

    return-wide v0
.end method
