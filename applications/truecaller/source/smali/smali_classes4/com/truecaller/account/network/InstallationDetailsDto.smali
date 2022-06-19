.class public final Lcom/truecaller/account/network/InstallationDetailsDto;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B;\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR!\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/account/network/InstallationDetailsDto;",
        "",
        "Lcom/truecaller/account/network/AppDto;",
        "app",
        "Lcom/truecaller/account/network/AppDto;",
        "getApp",
        "()Lcom/truecaller/account/network/AppDto;",
        "Lcom/truecaller/account/network/DeviceDto;",
        "device",
        "Lcom/truecaller/account/network/DeviceDto;",
        "getDevice",
        "()Lcom/truecaller/account/network/DeviceDto;",
        "",
        "Lcom/truecaller/account/network/SimDto;",
        "sims",
        "Ljava/util/List;",
        "getSims",
        "()Ljava/util/List;",
        "",
        "language",
        "Ljava/lang/String;",
        "getLanguage",
        "()Ljava/lang/String;",
        "Lcom/truecaller/account/network/VersionDto;",
        "storeVersion",
        "Lcom/truecaller/account/network/VersionDto;",
        "getStoreVersion",
        "()Lcom/truecaller/account/network/VersionDto;",
        "<init>",
        "(Ljava/lang/String;Lcom/truecaller/account/network/DeviceDto;Lcom/truecaller/account/network/AppDto;Lcom/truecaller/account/network/VersionDto;Ljava/util/List;)V",
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
.field private final app:Lcom/truecaller/account/network/AppDto;

.field private final device:Lcom/truecaller/account/network/DeviceDto;

.field private final language:Ljava/lang/String;

.field private final sims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/account/network/SimDto;",
            ">;"
        }
    .end annotation
.end field

.field private final storeVersion:Lcom/truecaller/account/network/VersionDto;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/account/network/DeviceDto;Lcom/truecaller/account/network/AppDto;Lcom/truecaller/account/network/VersionDto;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/account/network/DeviceDto;",
            "Lcom/truecaller/account/network/AppDto;",
            "Lcom/truecaller/account/network/VersionDto;",
            "Ljava/util/List<",
            "Lcom/truecaller/account/network/SimDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "device"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/account/network/InstallationDetailsDto;->language:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/account/network/InstallationDetailsDto;->device:Lcom/truecaller/account/network/DeviceDto;

    iput-object p3, p0, Lcom/truecaller/account/network/InstallationDetailsDto;->app:Lcom/truecaller/account/network/AppDto;

    iput-object p4, p0, Lcom/truecaller/account/network/InstallationDetailsDto;->storeVersion:Lcom/truecaller/account/network/VersionDto;

    iput-object p5, p0, Lcom/truecaller/account/network/InstallationDetailsDto;->sims:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getApp()Lcom/truecaller/account/network/AppDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/InstallationDetailsDto;->app:Lcom/truecaller/account/network/AppDto;

    return-object v0
.end method

.method public final getDevice()Lcom/truecaller/account/network/DeviceDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/InstallationDetailsDto;->device:Lcom/truecaller/account/network/DeviceDto;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/InstallationDetailsDto;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getSims()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/account/network/SimDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/InstallationDetailsDto;->sims:Ljava/util/List;

    return-object v0
.end method

.method public final getStoreVersion()Lcom/truecaller/account/network/VersionDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/InstallationDetailsDto;->storeVersion:Lcom/truecaller/account/network/VersionDto;

    return-object v0
.end method
