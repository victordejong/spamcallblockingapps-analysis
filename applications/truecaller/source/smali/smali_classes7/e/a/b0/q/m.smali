.class public Le/a/b0/q/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:Ljava/lang/StringBuilder;

.field public static final f:Ljava/util/Formatter;

.field public static final g:Ljava/text/SimpleDateFormat;

.field public static final h:Ljava/text/SimpleDateFormat;

.field public static final i:Ljava/text/SimpleDateFormat;

.field public static final j:Ljava/text/SimpleDateFormat;

.field public static final k:Ljava/text/SimpleDateFormat;

.field public static final l:Ljava/text/SimpleDateFormat;

.field public static final m:Ljava/text/SimpleDateFormat;

.field public static final n:Ljava/text/SimpleDateFormat;

.field public static o:Ljava/text/DateFormat;

.field public static p:Ljava/text/DateFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Le/a/b0/q/m;->a:J

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v3

    sput-wide v3, Le/a/b0/q/m;->b:J

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    sput-wide v3, Le/a/b0/q/m;->c:J

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Le/a/b0/q/m;->d:J

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Le/a/b0/q/m;->e:Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/util/Formatter;

    .line 7
    sget-object v2, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 8
    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v1, Le/a/b0/q/m;->f:Ljava/util/Formatter;

    .line 9
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/b0/q/m;->g:Ljava/text/SimpleDateFormat;

    .line 10
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/b0/q/m;->h:Ljava/text/SimpleDateFormat;

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/b0/q/m;->i:Ljava/text/SimpleDateFormat;

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/b0/q/m;->j:Ljava/text/SimpleDateFormat;

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/b0/q/m;->k:Ljava/text/SimpleDateFormat;

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/b0/q/m;->l:Ljava/text/SimpleDateFormat;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/b0/q/m;->m:Ljava/text/SimpleDateFormat;

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/b0/q/m;->n:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 17
    sput-object v0, Le/a/b0/q/m;->o:Ljava/text/DateFormat;

    .line 18
    sput-object v0, Le/a/b0/q/m;->p:Ljava/text/DateFormat;

    return-void
.end method

.method public static a(JJ)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    cmp-long p0, v0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const-class v0, Le/a/b0/q/m;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/a/b0/q/m;->o:Ljava/text/DateFormat;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    sput-object p0, Le/a/b0/q/m;->o:Ljava/text/DateFormat;

    .line 3
    :cond_0
    sget-object p0, Le/a/b0/q/m;->o:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4
    :catch_0
    :try_start_1
    sget-object p0, Le/a/b0/q/m;->g:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catch_1
    :try_start_2
    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static c(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x4d

    const/16 v1, 0x64

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p0, v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v1, :cond_1

    if-ne v4, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :catch_0
    :goto_2
    if-ne v0, v1, :cond_3

    .line 2
    sget-object p0, Le/a/b0/q/m;->i:Ljava/text/SimpleDateFormat;

    goto :goto_3

    :cond_3
    sget-object p0, Le/a/b0/q/m;->j:Ljava/text/SimpleDateFormat;

    .line 3
    :goto_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x4d

    const/16 v2, 0x64

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p0

    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-char v5, p0, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v2, :cond_1

    if-ne v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2
    :catch_0
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 5
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v4, 0x1

    .line 6
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p0, v3, :cond_3

    move v0, v4

    :cond_3
    if-nez v0, :cond_5

    if-ne v1, v2, :cond_4

    .line 7
    sget-object p0, Le/a/b0/q/m;->m:Ljava/text/SimpleDateFormat;

    goto :goto_3

    :cond_4
    sget-object p0, Le/a/b0/q/m;->n:Ljava/text/SimpleDateFormat;

    goto :goto_3

    :cond_5
    if-ne v1, v2, :cond_6

    .line 8
    sget-object p0, Le/a/b0/q/m;->l:Ljava/text/SimpleDateFormat;

    goto :goto_3

    :cond_6
    sget-object p0, Le/a/b0/q/m;->k:Ljava/text/SimpleDateFormat;

    .line 9
    :goto_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    sget-wide v0, Le/a/b0/q/m;->c:J

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1

    .line 2
    sget v0, Lcom/truecaller/common/R$string;->duration_s:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    sget-wide v5, Le/a/b0/q/m;->d:J

    cmp-long v2, p1, v5

    const/4 v7, 0x2

    if-gez v2, :cond_2

    .line 4
    div-long v5, p1, v0

    .line 5
    rem-long/2addr p1, v0

    .line 6
    sget v0, Lcom/truecaller/common/R$string;->duration_ms:I

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    div-long v5, p1, v5

    sget-wide v8, Le/a/b0/q/m;->b:J

    rem-long/2addr v5, v8

    .line 8
    div-long v8, p1, v0

    rem-long/2addr v8, v0

    .line 9
    rem-long/2addr p1, v0

    .line 10
    sget v0, Lcom/truecaller/common/R$string;->duration_hms:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized f(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const-class v0, Le/a/b0/q/m;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/a/b0/q/m;->p:Ljava/text/DateFormat;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    sput-object p0, Le/a/b0/q/m;->p:Ljava/text/DateFormat;

    .line 3
    :cond_0
    sget-object p0, Le/a/b0/q/m;->p:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4
    :catch_0
    :try_start_1
    sget-object p0, Le/a/b0/q/m;->h:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catch_1
    :try_start_2
    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static g()I
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public static declared-synchronized h(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 8

    const-class v0, Le/a/b0/q/m;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/a/b0/q/m;->e:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 4
    sget-wide v5, Le/a/b0/q/m;->a:J

    div-long/2addr v1, v5

    add-long/2addr v3, p1

    .line 5
    div-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 6
    invoke-static {p0, p1, p2}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/common/R$string;->yesterday:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v2, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 9
    invoke-static {v1, v2}, Le/a/p5/g0;->A(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x7

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 11
    invoke-static {p0, p1, p2}, Le/a/b0/q/m;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_2
    sget-object v2, Le/a/b0/q/m;->f:Ljava/util/Formatter;

    const v7, 0x8002

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p1

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized i(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 11

    const-class v0, Le/a/b0/q/m;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/a/b0/q/m;->e:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    .line 4
    sget-wide v7, Le/a/b0/q/m;->a:J

    div-long/2addr v3, v7

    add-long/2addr v5, p1

    .line 5
    div-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 6
    invoke-static {p0, p1, p2}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    sub-long v7, v3, v5

    const-wide/16 v9, 0x1

    cmp-long v1, v7, v9

    if-nez v1, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/truecaller/common/R$string;->yesterday:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v3, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 9
    invoke-static {v1, v3}, Le/a/p5/g0;->A(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    .line 10
    invoke-static {p0, p1, p2}, Le/a/b0/q/m;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_2
    sget-object v4, Le/a/b0/q/m;->f:Ljava/util/Formatter;

    const v9, 0x8002

    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p1

    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p3, :cond_3

    .line 13
    invoke-static {p0, p1, p2}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%s, %s"

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v2

    const/4 p0, 0x1

    aput-object v1, p2, p0

    .line 14
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static j(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 2
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x3e8

    .line 6
    div-long/2addr v1, p1

    .line 7
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    cmp-long p2, v1, p2

    if-gez p2, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/truecaller/common/R$string;->now:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    const-wide/16 p2, 0xa

    .line 9
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    cmp-long p1, v1, p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-gez p1, :cond_1

    .line 10
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/truecaller/common/R$string;->n_minutes_ago:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, p2

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 12
    :cond_1
    sget-object p1, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 13
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 14
    sget-object v1, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 15
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x6

    .line 16
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 17
    sget-object v2, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 18
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v4, -0x7

    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 20
    sget-object v4, Le/a/b0/k/h;->b:Ljava/util/Locale;

    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fa"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, p3

    goto :goto_0

    :cond_2
    move v4, p2

    .line 22
    :goto_0
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v5, v6, :cond_4

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 24
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    if-nez p0, :cond_3

    .line 25
    sget-object p0, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 26
    invoke-static {v7, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 27
    :cond_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 28
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v5, v1, :cond_5

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/truecaller/common/R$string;->yesterday:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 30
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 31
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 32
    sget-object p1, Le/a/b0/k/h;->b:Ljava/util/Locale;

    const-string p2, "EEEE"

    .line 33
    invoke-direct {p0, p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 34
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 35
    :cond_6
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-ne p0, p1, :cond_8

    if-eqz v4, :cond_7

    .line 36
    new-instance p0, Le/a/b0/k/b$a;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v3, v0}, Le/a/b0/k/b$a;-><init>(III)V

    .line 38
    invoke-static {p0}, Le/a/b0/k/b;->a(Le/a/b0/k/b$a;)Le/a/b0/k/b$a;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Le/a/b0/k/b$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 40
    iget p0, p0, Le/a/b0/k/b$a;->c:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, p2

    aput-object p1, v0, p3

    const-string p0, "%d %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 42
    :cond_7
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 43
    sget-object p1, Le/a/b0/k/h;->b:Ljava/util/Locale;

    const-string p2, "dd MMM"

    .line 44
    invoke-direct {p0, p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 45
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 46
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    .line 47
    new-instance p0, Le/a/b0/k/b$a;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v3, v0}, Le/a/b0/k/b$a;-><init>(III)V

    .line 49
    invoke-static {p0}, Le/a/b0/k/b;->a(Le/a/b0/k/b$a;)Le/a/b0/k/b$a;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Le/a/b0/k/b$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 51
    iget v0, p0, Le/a/b0/k/b$a;->c:I

    .line 52
    iget p0, p0, Le/a/b0/k/b$a;->a:I

    new-array v1, v7, [Ljava/lang/Object;

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p2

    aput-object p1, v1, p3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%d %s %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 54
    :cond_9
    sget-object p0, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 55
    invoke-static {v2, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 56
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 57
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static declared-synchronized k(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 10

    const-class v0, Le/a/b0/q/m;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/a/b0/q/m;->e:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const v9, 0x80001

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    .line 4
    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 5
    sget p1, Lcom/truecaller/common/R$string;->now:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    const-wide/16 v3, 0xa

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 6
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    const/high16 v8, 0x80000

    move-wide v2, p1

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 7
    :cond_1
    :try_start_2
    sget-object v4, Le/a/b0/q/m;->f:Ljava/util/Formatter;

    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p1

    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
