.class public final Lcom/truecaller/account/network/CheckCredentialsRequestDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/account/network/CheckCredentialsRequestDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0011B)\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u000c\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/account/network/CheckCredentialsRequestDto;",
        "",
        "",
        "endpoint",
        "Ljava/lang/String;",
        "getEndpoint",
        "()Ljava/lang/String;",
        "Lcom/truecaller/account/network/CheckCredentialsDeviceDto;",
        "device",
        "Lcom/truecaller/account/network/CheckCredentialsDeviceDto;",
        "getDevice",
        "()Lcom/truecaller/account/network/CheckCredentialsDeviceDto;",
        "reason",
        "getReason",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/account/network/CheckCredentialsDeviceDto;)V",
        "Companion",
        "a",
        "account-network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/account/network/CheckCredentialsRequestDto$a;

.field public static final REASON_RECEIVED_UNAUTHORIZED:Ljava/lang/String; = "received_unauthorized"

.field public static final REASON_RESTORED_FROM_ACCOUNT_MANAGER:Ljava/lang/String; = "restored_from_account_manager"

.field public static final REASON_RESTORED_FROM_AUTOBACKUP:Ljava/lang/String; = "restored_from_autobackup"

.field public static final REASON_RESTORED_FROM_FILE:Ljava/lang/String; = "restored_from_file"


# instance fields
.field private final device:Lcom/truecaller/account/network/CheckCredentialsDeviceDto;

.field private final endpoint:Ljava/lang/String;

.field private final reason:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/account/network/CheckCredentialsRequestDto$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/account/network/CheckCredentialsRequestDto$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/account/network/CheckCredentialsRequestDto;->Companion:Lcom/truecaller/account/network/CheckCredentialsRequestDto$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/account/network/CheckCredentialsDeviceDto;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/account/network/CheckCredentialsRequestDto;->reason:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/account/network/CheckCredentialsRequestDto;->endpoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/account/network/CheckCredentialsRequestDto;->device:Lcom/truecaller/account/network/CheckCredentialsDeviceDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/account/network/CheckCredentialsDeviceDto;ILs1/z/c/f;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/truecaller/account/network/CheckCredentialsRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/account/network/CheckCredentialsDeviceDto;)V

    return-void
.end method


# virtual methods
.method public final getDevice()Lcom/truecaller/account/network/CheckCredentialsDeviceDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CheckCredentialsRequestDto;->device:Lcom/truecaller/account/network/CheckCredentialsDeviceDto;

    return-object v0
.end method

.method public final getEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CheckCredentialsRequestDto;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CheckCredentialsRequestDto;->reason:Ljava/lang/String;

    return-object v0
.end method
