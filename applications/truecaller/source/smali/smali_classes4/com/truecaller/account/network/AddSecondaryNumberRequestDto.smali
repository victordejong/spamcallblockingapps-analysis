.class public final Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u001b\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000e\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;",
        "",
        "",
        "countryCode",
        "Ljava/lang/String;",
        "getCountryCode",
        "()Ljava/lang/String;",
        "phoneNumber",
        "getPhoneNumber",
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
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V",
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

.field private final phoneNumber:Ljava/lang/String;

.field private final sequenceNo:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;->phoneNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;->countryCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;->dialingCode:Ljava/lang/Integer;

    iput p4, p0, Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;->sequenceNo:I

    return-void
.end method


# virtual methods
.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDialingCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;->dialingCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getSequenceNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/account/network/AddSecondaryNumberRequestDto;->sequenceNo:I

    return v0
.end method
