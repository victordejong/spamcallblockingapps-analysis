.class public final Lcom/truecaller/account/network/VersionDto;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/account/network/VersionDto;",
        "",
        "",
        "buildVersion",
        "Ljava/lang/Integer;",
        "getBuildVersion",
        "()Ljava/lang/Integer;",
        "minorVersion",
        "I",
        "getMinorVersion",
        "()I",
        "majorVersion",
        "getMajorVersion",
        "<init>",
        "(IILjava/lang/Integer;)V",
        "account-network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final buildVersion:Ljava/lang/Integer;

.field private final majorVersion:I

.field private final minorVersion:I


# direct methods
.method public constructor <init>(IILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/account/network/VersionDto;->majorVersion:I

    iput p2, p0, Lcom/truecaller/account/network/VersionDto;->minorVersion:I

    iput-object p3, p0, Lcom/truecaller/account/network/VersionDto;->buildVersion:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getBuildVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/VersionDto;->buildVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMajorVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/account/network/VersionDto;->majorVersion:I

    return v0
.end method

.method public final getMinorVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/account/network/VersionDto;->minorVersion:I

    return v0
.end method
