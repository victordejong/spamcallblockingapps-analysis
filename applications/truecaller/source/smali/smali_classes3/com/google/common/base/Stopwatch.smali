.class public final Lcom/google/common/base/Stopwatch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isRunning:Z

.field public startTick:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public elapsed(Ljava/util/concurrent/TimeUnit;)J
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/google/common/base/Platform;->a:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 3
    iget-wide v5, p0, Lcom/google/common/base/Stopwatch;->startTick:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 4
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()Lcom/google/common/base/Stopwatch;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    return-object p0
.end method

.method public start()Lcom/google/common/base/Stopwatch;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "This stopwatch is already running."

    invoke-static {v0, v2}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 3
    sget v0, Lcom/google/common/base/Platform;->a:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, Lcom/google/common/base/Stopwatch;->startTick:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/google/common/base/Platform;->a:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 3
    iget-wide v5, p0, Lcom/google/common/base/Stopwatch;->startTick:J

    sub-long/2addr v3, v5

    add-long/2addr v3, v1

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 4
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    cmp-long v1, v6, v1

    if-lez v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v0, v5

    :goto_1
    long-to-double v1, v3

    const-wide/16 v3, 0x1

    .line 10
    invoke-virtual {v5, v3, v4, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    .line 11
    sget v3, Lcom/google/common/base/Platform;->a:I

    .line 12
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const-string v1, "%.4g"

    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    sget-object v2, Lcom/google/common/base/Stopwatch$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {v0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const-string v0, "d"

    goto :goto_2

    :pswitch_1
    const-string v0, "h"

    goto :goto_2

    :pswitch_2
    const-string v0, "min"

    goto :goto_2

    :pswitch_3
    const-string v0, "s"

    goto :goto_2

    :pswitch_4
    const-string v0, "ms"

    goto :goto_2

    :pswitch_5
    const-string v0, "\u03bcs"

    goto :goto_2

    :pswitch_6
    const-string v0, "ns"

    .line 15
    :goto_2
    invoke-static {v1, v4}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, " "

    invoke-static {v3, v1, v2, v0}, Le/d/c/a/a;->R1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
