.class public Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calendarAgentAlias:Ljava/lang/String;

.field private calendarAgentId:J

.field private calendarBookingEmail:Ljava/lang/String;

.field private calendarEventLink:Ljava/lang/String;

.field private calendarInviteId:Ljava/lang/String;

.field private calendarSenderId:J

.field private retryCalendarEvent:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta$1;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta$1;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarSenderId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarAgentId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarAgentAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarInviteId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->retryCalendarEvent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarBookingEmail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarEventLink:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCalendarAgentAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarAgentAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarAgentId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarAgentId:J

    return-wide v0
.end method

.method public getCalendarBookingEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarBookingEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarEventLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarEventLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarInviteId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarInviteId:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarSenderId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarSenderId:J

    return-wide v0
.end method

.method public isRetryCalendarEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->retryCalendarEvent:Z

    return v0
.end method

.method public setCalendarAgentAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarAgentAlias:Ljava/lang/String;

    return-void
.end method

.method public setCalendarAgentId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarAgentId:J

    return-void
.end method

.method public setCalendarBookingEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarBookingEmail:Ljava/lang/String;

    return-void
.end method

.method public setCalendarEventLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarEventLink:Ljava/lang/String;

    return-void
.end method

.method public setCalendarInviteId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarInviteId:Ljava/lang/String;

    return-void
.end method

.method public setCalendarSenderId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarSenderId:J

    return-void
.end method

.method public setRetryCalendarEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->retryCalendarEvent:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "CalendarMessageMeta{"

    const-string v1, "calendarSenderId="

    invoke-static {v0, v1}, Le/d/c/a/a;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarSenderId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "calendarAgentId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarSenderId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", calendarAgentAlias=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarAgentAlias:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", calendarInviteId=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarInviteId:Ljava/lang/String;

    const-string v3, ", retryCalendarEvent="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->retryCalendarEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", calendarBookingEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarBookingEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", calendarEventLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarEventLink:Ljava/lang/String;

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarSenderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarAgentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarAgentAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarInviteId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->retryCalendarEvent:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarBookingEmail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->calendarEventLink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
