.class public Lcom/freshchat/consumer/sdk/service/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static jR:Ljava/lang/String; = ";"


# direct methods
.method private static A(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/n;->aR(Ljava/lang/String;)J

    move-result-wide v0

    sget-object p1, Lcom/freshchat/consumer/sdk/service/d/i;->jR:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-ge v3, v4, :cond_1

    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v4, v0

    if-gtz v3, :cond_0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static a(Lcom/freshchat/consumer/sdk/beans/BHWeekDays;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Friday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "Thursday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "Tuesday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "Wednesday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "Sunday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "Monday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "Saturday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWeekDays;->getDayFourTimings()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWeekDays;->getDayThreeTimings()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWeekDays;->getDayOneTimings()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWeekDays;->getDayTwoTimings()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWeekDays;->getDaySixTimings()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWeekDays;->getDayZeroTimings()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWeekDays;->getDayFiveTimings()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    invoke-static {p0, p2}, Lcom/freshchat/consumer/sdk/service/d/i;->A(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7a29c427 -> :sswitch_6
        -0x764b22d0 -> :sswitch_5
        -0x6bb98210 -> :sswitch_4
        -0x357e48ca -> :sswitch_3
        0x28f7822d -> :sswitch_2
        0x618e0dfa -> :sswitch_1
        0x7deaf17f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Friday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "Thursday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "Tuesday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "Wednesday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "Sunday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "Monday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "Saturday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;->isWorkingOnDayFour()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;->isWorkingOnDayThree()Z

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;->isWorkingOnDayOne()Z

    move-result p0

    return p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;->isWorkingOnDayTwo()Z

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;->isWorkingOnDaySix()Z

    move-result p0

    return p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;->isWorkingOnDayZero()Z

    move-result p0

    return p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;->isWorkingOnDayFive()Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7a29c427 -> :sswitch_6
        -0x764b22d0 -> :sswitch_5
        -0x6bb98210 -> :sswitch_4
        -0x357e48ca -> :sswitch_3
        0x28f7822d -> :sswitch_2
        0x618e0dfa -> :sswitch_1
        0x7deaf17f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static aP(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/cx;->gA()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static r(Landroid/content/Context;J)Z
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/c/p;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/p;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    cmp-long p0, p1, v1

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/c/p;->D(J)Lcom/freshchat/consumer/sdk/beans/BusinessHours;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/p;->fm()Lcom/freshchat/consumer/sdk/beans/BusinessHours;

    move-result-object p0

    :cond_1
    const/4 p1, 0x0

    if-nez p0, :cond_2

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getTimezone()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/n;->aQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/service/d/i;->aP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "FRESHCHAT"

    const-string p2, "BusinessHoursHelper: Invalid day fo the week. isOffline false"

    invoke-static {p0, p2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getWorkingDays()Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/service/d/i;->a(Lcom/freshchat/consumer/sdk/beans/BHWorkingDays;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getWeekDaysBH()Lcom/freshchat/consumer/sdk/beans/BHWeekDays;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/BusinessHours;->getTimezone()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/freshchat/consumer/sdk/service/d/i;->a(Lcom/freshchat/consumer/sdk/beans/BHWeekDays;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
