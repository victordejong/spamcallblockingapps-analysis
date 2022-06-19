.class public final Lcom/truecaller/account/network/AccountPhoneNumberDto;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/account/network/AccountPhoneNumberDto;",
        "",
        "",
        "countryCode",
        "Ljava/lang/String;",
        "getCountryCode",
        "()Ljava/lang/String;",
        "",
        "priority",
        "I",
        "getPriority",
        "()I",
        "",
        "phoneNumber",
        "J",
        "getPhoneNumber",
        "()J",
        "<init>",
        "(JLjava/lang/String;I)V",
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

.field private final phoneNumber:J

.field private final priority:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1

    const-string v0, "countryCode"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/account/network/AccountPhoneNumberDto;->phoneNumber:J

    iput-object p3, p0, Lcom/truecaller/account/network/AccountPhoneNumberDto;->countryCode:Ljava/lang/String;

    iput p4, p0, Lcom/truecaller/account/network/AccountPhoneNumberDto;->priority:I

    return-void
.end method


# virtual methods
.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/AccountPhoneNumberDto;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/account/network/AccountPhoneNumberDto;->phoneNumber:J

    return-wide v0
.end method

.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/account/network/AccountPhoneNumberDto;->priority:I

    return v0
.end method
