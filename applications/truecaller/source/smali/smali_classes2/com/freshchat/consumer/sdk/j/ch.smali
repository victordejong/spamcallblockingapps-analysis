.class public Lcom/freshchat/consumer/sdk/j/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/TimeZone;Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->getCalendarTimeSlots()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->getMeetingLength()I

    move-result v3

    invoke-static {v2, p0, v3, v0}, Lcom/freshchat/consumer/sdk/j/ch;->a(Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;Ljava/util/TimeZone;ILjava/util/Map;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;Ljava/util/TimeZone;ILjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;",
            "Ljava/util/TimeZone;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;->getFrom()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/freshchat/consumer/sdk/j/co;->a(Ljava/util/TimeZone;J)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ch;->a(Ljava/util/Calendar;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/CalendarTimeSlot;->getTo()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/freshchat/consumer/sdk/j/co;->a(Ljava/util/TimeZone;J)Ljava/util/Calendar;

    move-result-object p0

    int-to-long v1, p2

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gtz p1, :cond_0

    invoke-static {p3, v0, v3, v4}, Lcom/freshchat/consumer/sdk/j/ch;->a(Ljava/util/Map;Ljava/util/Calendar;J)V

    invoke-static {v0, p2}, Lcom/freshchat/consumer/sdk/j/co;->a(Ljava/util/Calendar;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Calendar;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Calendar;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay;",
            ">;",
            "Ljava/util/Calendar;",
            "J)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/n;->c(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, p2, p3}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;-><init>(JJ)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/CalendarDay;

    if-nez p1, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/beans/CalendarDay;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/beans/CalendarDay;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->getPartOfDay(I)Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/CalendarDay;->getTimeSlotsMap()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/CalendarDay;->getTimeSlotsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
