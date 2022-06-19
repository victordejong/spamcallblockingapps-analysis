.class public final Le/a/o5/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/b0;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/c0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(JLcom/truecaller/util/DatePattern;)Ljava/lang/String;
    .locals 1

    const-string v0, "datePattern"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const-string p3, "EEEE, dd MMM"

    .line 2
    invoke-static {p3}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object p3

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string p3, "EEEE, dd MMM YYYY"

    invoke-static {p3}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object p3

    .line 4
    :goto_0
    invoke-virtual {p3, p1, p2}, Lw3/b/a/i0/b;->e(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "when (datePattern) {\n   \u2026       }.print(timestamp)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Le/a/o5/c0;->j()Lw3/b/a/b;

    move-result-object v1

    .line 2
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)I
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, p1, p2}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v0}, Lw3/b/a/e0/a;->q()I

    move-result p1

    return p1
.end method

.method public d(J)Z
    .locals 2

    .line 1
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    new-instance v1, Lw3/b/a/p;

    invoke-direct {v1, p1, p2}, Lw3/b/a/p;-><init>(J)V

    invoke-virtual {v0, v1}, Lw3/b/a/p;->a(Lw3/b/a/b0;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(J)Z
    .locals 3

    .line 1
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw3/b/a/p;->g(I)Lw3/b/a/p;

    move-result-object v0

    new-instance v2, Lw3/b/a/p;

    invoke-direct {v2, p1, p2}, Lw3/b/a/p;-><init>(J)V

    invoke-virtual {v0, v2}, Lw3/b/a/p;->a(Lw3/b/a/b0;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f(Lw3/b/a/b;Lw3/b/a/b;)Z
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compareDate"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2}, Lw3/b/a/e0/c;->i(Lw3/b/a/z;)Z

    move-result p1

    return p1
.end method

.method public g(Lw3/b/a/b;Lw3/b/a/b;)Z
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compareDate"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2}, Lw3/b/a/e0/c;->f(Lw3/b/a/z;)Z

    move-result p1

    return p1
.end method

.method public h(J)I
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, p1, p2}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v0}, Lw3/b/a/e0/a;->r()I

    move-result p1

    return p1
.end method

.method public i(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/c0;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Le/a/b0/q/m;->e(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DateTimeUtils.getFormatt\u2026uration(context, seconds)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public j()Lw3/b/a/b;
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    const-string v1, "DateTime.now()"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public k(J)Ljava/lang/CharSequence;
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/o5/c0;->a:Landroid/content/Context;

    .line 2
    sget-object v1, Le/a/b0/q/m;->e:Ljava/lang/StringBuilder;

    const-class v7, Le/a/b0/q/m;

    monitor-enter v7

    .line 3
    :try_start_0
    sget-object v1, Le/a/b0/q/m;->e:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 6
    sget-wide v5, Le/a/b0/q/m;->a:J

    div-long/2addr v1, v5

    add-long/2addr v3, p1

    .line 7
    div-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 8
    invoke-static {v0, p1, p2}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    goto :goto_1

    :cond_0
    sub-long v5, v1, v3

    const-wide/16 v8, 0x1

    cmp-long v5, v5, v8

    if-nez v5, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/truecaller/common/R$string;->yesterday:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object p2, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 11
    invoke-static {p1, p2}, Le/a/p5/g0;->A(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 12
    invoke-static {v0, p1, p2}, Le/a/b0/q/m;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_2
    sget-object v1, Le/a/b0/q/m;->f:Ljava/util/Formatter;

    const v6, 0x8002

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_0
    monitor-exit v7

    :goto_1
    const-string p2, "DateTimeUtils.getRelativ\u2026text, date, false, false)"

    .line 16
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v7

    throw p1
.end method

.method public l(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/c0;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DateTimeUtils.getFormattedTime(context, millis)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public m(J)I
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, p1, p2}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v0}, Lw3/b/a/e0/a;->u()I

    move-result p1

    return p1
.end method

.method public n(J)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/c0;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Le/a/b0/q/m;->h(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "DateTimeUtils.getRelativeDate(context, date)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public o(J)Z
    .locals 3

    .line 1
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw3/b/a/p;->i(I)Lw3/b/a/p;

    move-result-object v0

    new-instance v2, Lw3/b/a/p;

    invoke-direct {v2, p1, p2}, Lw3/b/a/p;-><init>(J)V

    invoke-virtual {v0, v2}, Lw3/b/a/p;->a(Lw3/b/a/b0;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    const-string v0, "dateString"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatString"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p2}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1}, Lw3/b/a/i0/b;->d(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public q(JJI)Ljava/lang/CharSequence;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v0, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "DateUtils.getRelativeTim\u2026(), minResolution, flags)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public r(J)I
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, p1, p2}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v0}, Lw3/b/a/e0/a;->t()I

    move-result p1

    return p1
.end method

.method public s(I)Ljava/lang/String;
    .locals 4

    .line 1
    div-int/lit8 v0, p1, 0x3c

    .line 2
    rem-int/lit8 p1, p1, 0x3c

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "%02d:%02d"

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {v2, v1, p1, v0}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public t(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "pattern"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p3}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lw3/b/a/i0/b;->e(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DateTimeFormat.forPatter\u2026pattern).print(timestamp)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public u(JJ)Z
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/p;

    invoke-direct {v0, p1, p2}, Lw3/b/a/p;-><init>(J)V

    new-instance p1, Lw3/b/a/p;

    invoke-direct {p1, p3, p4}, Lw3/b/a/p;-><init>(J)V

    invoke-virtual {v0, p1}, Lw3/b/a/p;->a(Lw3/b/a/b0;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(J)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o5/c0;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Le/a/b0/q/m;->i(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "DateTimeUtils.getRelativ\u2026ate(context, date, false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public w(J)Z
    .locals 2

    .line 1
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    const-string v1, "LocalDate.now()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/p;->f()I

    move-result v0

    new-instance v1, Lw3/b/a/p;

    invoke-direct {v1, p1, p2}, Lw3/b/a/p;-><init>(J)V

    invoke-virtual {v1}, Lw3/b/a/p;->f()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public x()Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Le/a/b0/q/m;->e:Ljava/lang/StringBuilder;

    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object v0

    .line 2
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Lw3/b/a/e0/e;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lw3/b/a/g;->m(J)I

    move-result v0

    .line 5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    long-to-int v0, v4

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    int-to-long v3, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v5

    mul-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 7
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "GMT%+03d:%02d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateTimeUtils.getCurrentTimeZoneString()"

    .line 8
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
