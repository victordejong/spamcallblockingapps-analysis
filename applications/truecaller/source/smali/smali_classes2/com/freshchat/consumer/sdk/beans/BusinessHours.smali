.class public Lcom/freshchat/consumer/sdk/beans/BusinessHours;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private created:J

.field private days:Lcom/freshchat/consumer/sdk/beans/BHWeekDays;

.field private defaultBhr:Z

.field private enabled:Z

.field private name:Ljava/lang/String;

.field private operatingHoursId:J

.field private operatingHoursType:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private working:Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->created:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatingHoursId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->operatingHoursId:J

    return-wide v0
.end method

.method public getOperatingHoursType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->operatingHoursType:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekDaysBH()Lcom/freshchat/consumer/sdk/beans/BHWeekDays;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->days:Lcom/freshchat/consumer/sdk/beans/BHWeekDays;

    return-object v0
.end method

.method public getWorkingDays()Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->working:Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;

    return-object v0
.end method

.method public isDefaultBhr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->defaultBhr:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->enabled:Z

    return v0
.end method

.method public setCreated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->created:J

    return-void
.end method

.method public setDefaultBhr(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->defaultBhr:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->enabled:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->name:Ljava/lang/String;

    return-void
.end method

.method public setOperatingHoursId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->operatingHoursId:J

    return-void
.end method

.method public setOperatingHoursType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->operatingHoursType:Ljava/lang/String;

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->timezone:Ljava/lang/String;

    return-void
.end method

.method public setWeekDaysBH(Lcom/freshchat/consumer/sdk/beans/BHWeekDays;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->days:Lcom/freshchat/consumer/sdk/beans/BHWeekDays;

    return-void
.end method

.method public setWorkingDays(Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->working:Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;

    return-void
.end method
