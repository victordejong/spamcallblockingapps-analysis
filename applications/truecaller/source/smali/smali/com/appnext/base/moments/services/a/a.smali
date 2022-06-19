.class public abstract Lcom/appnext/base/moments/services/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JJ)J
    .locals 4

    const-wide/32 p0, -0x1b7740

    .line 14
    :try_start_0
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    long-to-int p3, v0

    .line 16
    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long p0, p0

    sub-long/2addr v2, p0

    return-wide v2

    :catchall_0
    return-wide p0
.end method

.method private static n(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 2
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    .line 5
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 6
    invoke-virtual {v2, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 7
    invoke-virtual {v2, p0, v4}, Ljava/util/Calendar;->set(II)V

    .line 8
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, p0, v3}, Ljava/util/Calendar;->add(II)V

    .line 10
    :cond_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-wide v0

    :catchall_0
    move-exception p0

    const-string v2, "ServiceSchedulingLogic$getStartTime"

    .line 11
    invoke-static {v2, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method


# virtual methods
.method public abstract a(Lcom/appnext/base/moments/a/a/c;JJ)V
.end method

.method public final a(Lcom/appnext/base/moments/a/a/c;Z)V
    .locals 12

    if-eqz p1, :cond_8

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->Y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->Z()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->aa()Ljava/lang/String;

    move-result-object v0

    const-string v5, "time"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->Z()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appnext/base/moments/services/a/a;->n(Ljava/lang/String;)J

    move-result-wide v3

    :cond_1
    cmp-long p2, v3, v1

    if-eqz p2, :cond_8

    const-wide/32 v0, -0x1b7740

    const-wide/32 v5, 0x1b7740

    .line 4
    invoke-static {v0, v1, v5, v6}, Lcom/appnext/base/moments/services/a/a;->a(JJ)J

    move-result-wide v0

    add-long v7, v3, v0

    const-wide/32 v9, 0x5265c00

    move-object v5, p0

    move-object v6, p1

    .line 5
    invoke-virtual/range {v5 .. v10}, Lcom/appnext/base/moments/services/a/a;->a(Lcom/appnext/base/moments/a/a/c;JJ)V

    goto/16 :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ac()Ljava/lang/String;

    move-result-object v0

    const-string v5, "interval"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->aa()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/appnext/base/moments/b/c;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v0, v10, v1

    if-nez v0, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_lastupdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/appnext/base/b/b;->a(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    add-long v8, v10, v0

    move-object v6, p0

    move-object v7, p1

    .line 9
    invoke-virtual/range {v6 .. v11}, Lcom/appnext/base/moments/services/a/a;->a(Lcom/appnext/base/moments/a/a/c;JJ)V

    goto :goto_1

    .line 10
    :cond_5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/appnext/base/moments/services/a/a;->a(Lcom/appnext/base/moments/a/a/c;JJ)V

    return-void

    .line 11
    :cond_6
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ac()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ac()Ljava/lang/String;

    move-result-object p2

    const-string v0, "once"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/appnext/base/moments/services/a/a;->a(Lcom/appnext/base/moments/a/a/c;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "ServiceSchedulingLogic$scheduleOperation"

    .line 13
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/moments/a/a/c;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/base/moments/a/a/c;

    .line 18
    invoke-static {}, Lcom/appnext/base/moments/operations/b;->aj()Lcom/appnext/base/moments/operations/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appnext/base/moments/operations/b;->c(Lcom/appnext/base/moments/a/a/c;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/appnext/base/moments/services/a/a;->c(Lcom/appnext/base/moments/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "ServiceSchedulingLogic$cancelAllOperations"

    .line 20
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/appnext/base/moments/a/a/c;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/appnext/base/moments/operations/b;->aj()Lcom/appnext/base/moments/operations/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/base/moments/operations/b;->c(Lcom/appnext/base/moments/a/a/c;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/appnext/base/moments/services/a/a;->d(Lcom/appnext/base/moments/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "ServiceSchedulingLogic$cancelOperation"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract d(Lcom/appnext/base/moments/a/a/c;)V
.end method
