.class public final Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0004\u0008%\u0010&J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0010\u0010\n\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u0008JB\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00022\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u0013H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0013H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u0015J \u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0013H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0019\u0010\r\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010!\u001a\u0004\u0008\r\u0010\u0008R\u0019\u0010\u000c\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\"\u001a\u0004\u0008#\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\"\u001a\u0004\u0008$\u0010\u0004R\u0019\u0010\u000e\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010!\u001a\u0004\u0008\u000e\u0010\u0008R\u0019\u0010\u000f\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010!\u001a\u0004\u0008\u000f\u0010\u0008\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;",
        "Landroid/os/Parcelable;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "",
        "component3",
        "()Z",
        "component4",
        "component5",
        "category",
        "senderId",
        "isVerifiedSenderId",
        "isUpdateNotification",
        "isIM",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "Z",
        "Ljava/lang/String;",
        "getSenderId",
        "getCategory",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZZZ)V",
        "insights_release"
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
            "Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final category:Ljava/lang/String;

.field private final isIM:Z

.field private final isUpdateNotification:Z

.field private final isVerifiedSenderId:Z

.field private final senderId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata$a;

    invoke-direct {v0}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata$a;-><init>()V

    sput-object v0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->category:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->senderId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isVerifiedSenderId:Z

    iput-boolean p4, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification:Z

    iput-boolean p5, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILs1/z/c/f;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x1

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    const/4 p7, 0x0

    if-eqz p3, :cond_1

    move v4, p7

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move v5, p7

    goto :goto_1

    :cond_2
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->category:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->senderId:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isVerifiedSenderId:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->copy(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isVerifiedSenderId:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;
    .locals 7

    const-string v0, "category"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

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

    instance-of v0, p1, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    iget-object v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->senderId:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->senderId:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isVerifiedSenderId:Z

    iget-boolean v1, p1, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isVerifiedSenderId:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification:Z

    iget-boolean v1, p1, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM:Z

    iget-boolean p1, p1, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM:Z

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

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getSenderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->category:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->senderId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isVerifiedSenderId:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isIM()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM:Z

    return v0
.end method

.method public final isUpdateNotification()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification:Z

    return v0
.end method

.method public final isVerifiedSenderId()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isVerifiedSenderId:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "SmartNotificationMetadata(category="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", senderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isVerifiedSenderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isVerifiedSenderId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdateNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isIM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->senderId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isVerifiedSenderId:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
