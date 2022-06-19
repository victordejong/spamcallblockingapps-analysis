.class public Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/CalendarDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeSlot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fromMillis:J

.field private final toMillis:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot$1;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot$1;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->fromMillis:J

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->toMillis:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->fromMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->toMillis:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;)I
    .locals 4

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->fromMillis:J

    iget-wide v2, p1, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->fromMillis:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->compareTo(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFromMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->fromMillis:J

    return-wide v0
.end method

.method public getToMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->toMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "TimeSlot{"

    const-string v1, " fromMillis : \'"

    invoke-static {v0, v1}, Le/d/c/a/a;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->fromMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", toMillis : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->toMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->fromMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->toMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
