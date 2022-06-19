.class public final Lcom/truecaller/notifications/OtpAnalyticsModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/notifications/OtpAnalyticsModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ.\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00022\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\nJ\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\nJ \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0019\u0010\u000c\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u001e\u001a\u0004\u0008 \u0010\u0004R\u0019\u0010\r\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010!\u001a\u0004\u0008\"\u0010\n\u00a8\u0006%"
    }
    d2 = {
        "Lcom/truecaller/notifications/OtpAnalyticsModel;",
        "Landroid/os/Parcelable;",
        "",
        "getContext",
        "()Ljava/lang/String;",
        "getEventInfo",
        "component1",
        "component2",
        "",
        "component3",
        "()I",
        "otpProcessor",
        "senderId",
        "transport",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/notifications/OtpAnalyticsModel;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "Ljava/lang/String;",
        "getSenderId",
        "getOtpProcessor",
        "I",
        "getTransport",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;I)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/notifications/OtpAnalyticsModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otpProcessor:Ljava/lang/String;

.field private final senderId:Ljava/lang/String;

.field private final transport:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/notifications/OtpAnalyticsModel$a;

    invoke-direct {v0}, Lcom/truecaller/notifications/OtpAnalyticsModel$a;-><init>()V

    sput-object v0, Lcom/truecaller/notifications/OtpAnalyticsModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "otpProcessor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->otpProcessor:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->senderId:Ljava/lang/String;

    iput p3, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/notifications/OtpAnalyticsModel;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/truecaller/notifications/OtpAnalyticsModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->otpProcessor:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->senderId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/notifications/OtpAnalyticsModel;->copy(Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/notifications/OtpAnalyticsModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->otpProcessor:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/notifications/OtpAnalyticsModel;
    .locals 1

    const-string v0, "otpProcessor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/notifications/OtpAnalyticsModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/notifications/OtpAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/notifications/OtpAnalyticsModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/notifications/OtpAnalyticsModel;

    iget-object v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->otpProcessor:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/notifications/OtpAnalyticsModel;->otpProcessor:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->senderId:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/notifications/OtpAnalyticsModel;->senderId:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    iget p1, p1, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getContext()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "unsupported"

    goto :goto_0

    :cond_0
    const-string v0, "im"

    goto :goto_0

    :cond_1
    const-string v0, "mms"

    goto :goto_0

    :cond_2
    const-string v0, "sms"

    :goto_0
    return-object v0
.end method

.method public final getEventInfo()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->senderId:Ljava/lang/String;

    invoke-static {v1, v0}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOtpProcessor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->otpProcessor:Ljava/lang/String;

    return-object v0
.end method

.method public final getSenderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransport()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->otpProcessor:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->senderId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "OtpAnalyticsModel(otpProcessor="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->otpProcessor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", senderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->otpProcessor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->senderId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/notifications/OtpAnalyticsModel;->transport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
