.class public Lcom/freshchat/consumer/sdk/j/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hA:Ljava/text/SimpleDateFormat;

.field private static hB:Ljava/text/SimpleDateFormat;

.field private static kH:Ljava/text/SimpleDateFormat;

.field private static kI:Ljava/text/SimpleDateFormat;

.field private static kX:Ljava/text/SimpleDateFormat;

.field private static pR:Ljava/text/SimpleDateFormat;

.field private static pS:Ljava/text/SimpleDateFormat;


# direct methods
.method private static C(J)Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/n;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bq(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {p1, p2, v0, v1}, Lcom/freshchat/consumer/sdk/j/n;->c(JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1, p2, v0, v1}, Lcom/freshchat/consumer/sdk/j/n;->d(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bp(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bs(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->br(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/n;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_today:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/n;->b(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_tomorrow:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->cj(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static aQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEEE"

    new-instance v4, Ljava/util/Locale;

    const-string v5, "EN"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/n;->C(J)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static aR(Ljava/lang/String;)J
    .locals 9

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static b(Ljava/util/Calendar;)Z
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/n;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0
.end method

.method private static bp(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->kI:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_message_time_other_year:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kI:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    sput-object p0, Lcom/freshchat/consumer/sdk/j/n;->kI:Ljava/text/SimpleDateFormat;

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->kI:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static bq(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->hA:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_message_time_today:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->hA:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    sput-object p0, Lcom/freshchat/consumer/sdk/j/n;->hA:Ljava/text/SimpleDateFormat;

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->hA:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static br(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->hB:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_message_time_this_year_short:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->hB:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    sput-object p0, Lcom/freshchat/consumer/sdk/j/n;->hB:Ljava/text/SimpleDateFormat;

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->hB:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static bs(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->kH:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_message_time_this_year_long:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kH:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    sput-object p0, Lcom/freshchat/consumer/sdk/j/n;->kH:Ljava/text/SimpleDateFormat;

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->kH:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->kX:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy\',\' hh:mm a"

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kX:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->kX:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public static c(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(JJ)Z
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 p3, 0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p2, p1, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    return p3
.end method

.method private static ci(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->pR:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_calendar_timeslot_format:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->pR:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm a"

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->pR:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "FRESHCHAT"

    const-string v0, "Error parsing default calendar time slot template format in getTimeFormatForCalendarTime()"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->pR:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static cj(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/n;->pS:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_calendar_date_format:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->pS:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE\',\' dd MMM yyyy"

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->pS:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "FRESHCHAT"

    const-string v0, "Error parsing default calendar template format in getDateFormatForCalendarDay()"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/n;->pS:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public static d(JJ)Z
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static e(JJ)Z
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 p3, 0x1

    if-ne p2, p1, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    return p3
.end method

.method public static ef()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kX:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->hA:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->hB:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kH:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->kI:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->pS:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/n;->pR:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static fP()J
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static i(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/freshchat/consumer/sdk/j/n;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->bt(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/n;->ci(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static q(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/n;->C(J)Ljava/util/Date;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/n;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static s(I)Ljava/lang/String;
    .locals 4

    if-lez p0, :cond_2

    div-int/lit8 v0, p0, 0x3c

    mul-int/lit8 v1, v0, 0x3c

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p0, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "00:00"

    return-object p0
.end method
