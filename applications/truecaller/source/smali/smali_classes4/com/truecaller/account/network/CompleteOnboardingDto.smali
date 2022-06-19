.class public final Lcom/truecaller/account/network/CompleteOnboardingDto;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u000c\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006R\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006R\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/account/network/CompleteOnboardingDto;",
        "",
        "",
        "countryCode",
        "Ljava/lang/String;",
        "getCountryCode",
        "()Ljava/lang/String;",
        "",
        "dialingCode",
        "Ljava/lang/Integer;",
        "getDialingCode",
        "()Ljava/lang/Integer;",
        "phoneNumber",
        "getPhoneNumber",
        "installationId",
        "getInstallationId",
        "requestId",
        "getRequestId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V",
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
.field private final countryCode:Ljava/lang/String;

.field private final dialingCode:Ljava/lang/Integer;

.field private final installationId:Ljava/lang/String;

.field private final phoneNumber:Ljava/lang/String;

.field private final requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6

    const-string v1, "requestId"

    const-string v3, "phoneNumber"

    const-string v5, "countryCode"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/account/network/CompleteOnboardingDto;->requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/account/network/CompleteOnboardingDto;->phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/account/network/CompleteOnboardingDto;->countryCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/account/network/CompleteOnboardingDto;->dialingCode:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/truecaller/account/network/CompleteOnboardingDto;->installationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CompleteOnboardingDto;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDialingCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CompleteOnboardingDto;->dialingCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInstallationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CompleteOnboardingDto;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CompleteOnboardingDto;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CompleteOnboardingDto;->requestId:Ljava/lang/String;

    return-object v0
.end method
