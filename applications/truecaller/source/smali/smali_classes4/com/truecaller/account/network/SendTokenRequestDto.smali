.class public final Lcom/truecaller/account/network/SendTokenRequestDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/account/network/SendTokenRequestDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001cB9\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u000c\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006R\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\u0015\u001a\u00020\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/account/network/SendTokenRequestDto;",
        "",
        "",
        "region",
        "Ljava/lang/String;",
        "getRegion",
        "()Ljava/lang/String;",
        "Lcom/truecaller/account/network/InstallationDetailsDto;",
        "installationDetails",
        "Lcom/truecaller/account/network/InstallationDetailsDto;",
        "getInstallationDetails",
        "()Lcom/truecaller/account/network/InstallationDetailsDto;",
        "phoneNumber",
        "getPhoneNumber",
        "countryCode",
        "getCountryCode",
        "",
        "dialingCode",
        "Ljava/lang/Integer;",
        "getDialingCode",
        "()Ljava/lang/Integer;",
        "sequenceNo",
        "I",
        "getSequenceNo",
        "()I",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Lcom/truecaller/account/network/InstallationDetailsDto;)V",
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
.field public static final Companion:Lcom/truecaller/account/network/SendTokenRequestDto$a;

.field public static final PRIVACY_REGION_1:Ljava/lang/String; = "region-1"

.field public static final PRIVACY_REGION_BR:Ljava/lang/String; = "region-br"

.field public static final PRIVACY_REGION_C:Ljava/lang/String; = "region-c"

.field public static final PRIVACY_REGION_ROW:Ljava/lang/String; = "region-2"

.field public static final PRIVACY_REGION_ZA:Ljava/lang/String; = "region-za"


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final dialingCode:Ljava/lang/Integer;

.field private final installationDetails:Lcom/truecaller/account/network/InstallationDetailsDto;

.field private final phoneNumber:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final sequenceNo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/account/network/SendTokenRequestDto$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/account/network/SendTokenRequestDto$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/account/network/SendTokenRequestDto;->Companion:Lcom/truecaller/account/network/SendTokenRequestDto$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Lcom/truecaller/account/network/InstallationDetailsDto;)V
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installationDetails"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->phoneNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->countryCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->dialingCode:Ljava/lang/Integer;

    iput p4, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->sequenceNo:I

    iput-object p5, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->region:Ljava/lang/String;

    iput-object p6, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->installationDetails:Lcom/truecaller/account/network/InstallationDetailsDto;

    return-void
.end method


# virtual methods
.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDialingCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->dialingCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInstallationDetails()Lcom/truecaller/account/network/InstallationDetailsDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->installationDetails:Lcom/truecaller/account/network/InstallationDetailsDto;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->region:Ljava/lang/String;

    return-object v0
.end method

.method public final getSequenceNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/account/network/SendTokenRequestDto;->sequenceNo:I

    return v0
.end method
