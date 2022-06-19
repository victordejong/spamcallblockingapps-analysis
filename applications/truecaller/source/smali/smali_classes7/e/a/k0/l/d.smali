.class public final Le/a/k0/l/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/l/c;
.implements Lcom/truecaller/callrecording/recorder/CallRecorder$a;
.implements Lq3/a/i0;
.implements Le/a/k0/l/h$a;


# instance fields
.field public a:Z

.field public final b:Ls1/g;

.field public final c:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/k0/l/m;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lq3/a/p1;

.field public e:Le/a/k0/l/k;

.field public final f:Ls1/w/f;

.field public final g:Le/a/k0/m/a;

.field public final h:Le/a/k0/l/f;

.field public final i:Le/a/k0/a/b;

.field public final j:Le/a/k0/l/h;

.field public final k:Le/a/p5/c;

.field public final l:Le/a/k0/i/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k0/m/a;Le/a/k0/l/f;Le/a/k0/a/b;Le/a/k0/l/h;Le/a/p5/c;Le/a/k0/i/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "recordingCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingStorageHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recorderProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingConfigHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recorderWatchdog"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordingAnalytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/l/d;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/k0/l/d;->g:Le/a/k0/m/a;

    iput-object p3, p0, Le/a/k0/l/d;->h:Le/a/k0/l/f;

    iput-object p4, p0, Le/a/k0/l/d;->i:Le/a/k0/a/b;

    iput-object p5, p0, Le/a/k0/l/d;->j:Le/a/k0/l/h;

    iput-object p6, p0, Le/a/k0/l/d;->k:Le/a/p5/c;

    iput-object p7, p0, Le/a/k0/l/d;->l:Le/a/k0/i/a;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/k0/l/d;->a:Z

    .line 3
    sget-object p1, Le/a/k0/l/d$a;->b:Le/a/k0/l/d$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/l/d;->b:Ls1/g;

    .line 4
    sget-object p1, Le/a/k0/l/m$b;->a:Le/a/k0/l/m$b;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/l/d;->c:Lq3/a/x2/a1;

    return-void
.end method

.method public static d(Le/a/k0/l/d;ZLjava/lang/Exception;Lcom/truecaller/callrecording/recorder/RecordingError;I)V
    .locals 8

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v1

    .line 1
    :cond_2
    monitor-enter p0

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/a/k0/l/d;->b()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    .line 3
    monitor-exit p0

    goto/16 :goto_6

    .line 4
    :cond_3
    :try_start_1
    iget-object p1, p0, Le/a/k0/l/d;->j:Le/a/k0/l/h;

    invoke-interface {p1}, Le/a/k0/l/h;->stop()V

    .line 5
    iget-object p1, p0, Le/a/k0/l/d;->d:Lq3/a/p1;

    if-eqz p1, :cond_4

    const/4 p4, 0x1

    invoke-static {p1, v1, p4, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    :cond_4
    iput-object v1, p0, Le/a/k0/l/d;->d:Lq3/a/p1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object p1, p0, Le/a/k0/l/d;->e:Le/a/k0/l/k;

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p1, Le/a/k0/l/k;->a:Lcom/truecaller/callrecording/recorder/CallRecorder;

    if-eqz p1, :cond_5

    .line 9
    invoke-interface {p1}, Lcom/truecaller/callrecording/recorder/CallRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    if-eqz p2, :cond_6

    .line 10
    :try_start_3
    sget-object p3, Lcom/truecaller/callrecording/recorder/RecordingError;->UNMAPPED:Lcom/truecaller/callrecording/recorder/RecordingError;

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    :goto_1
    move-object v6, p3

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 11
    sget-object p3, Lcom/truecaller/callrecording/recorder/RecordingError;->STOP_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

    goto :goto_1

    .line 12
    :cond_8
    sget-object p3, Lcom/truecaller/callrecording/recorder/RecordingError;->NONE:Lcom/truecaller/callrecording/recorder/RecordingError;

    goto :goto_1

    .line 13
    :goto_2
    sget-object p3, Lcom/truecaller/callrecording/recorder/RecordingError;->NONE:Lcom/truecaller/callrecording/recorder/RecordingError;

    if-ne v6, p3, :cond_a

    .line 14
    iget-object p4, p0, Le/a/k0/l/d;->e:Le/a/k0/l/k;

    if-eqz p4, :cond_9

    .line 15
    iget-object v0, p0, Le/a/k0/l/d;->k:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v2

    .line 16
    iget-object p4, p4, Le/a/k0/l/k;->b:Le/a/k0/l/l;

    .line 17
    iget-wide v4, p4, Le/a/k0/l/l;->e:J

    sub-long/2addr v2, v4

    .line 18
    new-instance v0, Le/a/k0/l/j;

    invoke-direct {v0, p4, v2, v3, p3}, Le/a/k0/l/j;-><init>(Le/a/k0/l/l;JLcom/truecaller/callrecording/recorder/RecordingError;)V

    goto :goto_5

    .line 19
    :cond_9
    new-instance p3, Le/a/k0/l/j;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/truecaller/callrecording/recorder/RecordingError;->MISSING_SESSION:Lcom/truecaller/callrecording/recorder/RecordingError;

    const/4 v7, 0x3

    move-object v2, p3

    invoke-direct/range {v2 .. v7}, Le/a/k0/l/j;-><init>(Le/a/k0/l/l;JLcom/truecaller/callrecording/recorder/RecordingError;I)V

    goto :goto_4

    .line 20
    :cond_a
    new-instance p3, Le/a/k0/l/j;

    iget-object p4, p0, Le/a/k0/l/d;->e:Le/a/k0/l/k;

    if-eqz p4, :cond_b

    .line 21
    iget-object p4, p4, Le/a/k0/l/k;->b:Le/a/k0/l/l;

    move-object v3, p4

    goto :goto_3

    :cond_b
    move-object v3, v1

    :goto_3
    const-wide/16 v4, 0x0

    const/4 v7, 0x2

    move-object v2, p3

    .line 22
    invoke-direct/range {v2 .. v7}, Le/a/k0/l/j;-><init>(Le/a/k0/l/l;JLcom/truecaller/callrecording/recorder/RecordingError;I)V

    :goto_4
    move-object v0, p3

    :goto_5
    const-string p3, "result"

    .line 23
    invoke-static {v0, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v5, Le/a/k0/l/e;

    invoke-direct {v5, p0, v0, v1}, Le/a/k0/l/e;-><init>(Le/a/k0/l/d;Le/a/k0/l/j;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 25
    iget-object p3, p0, Le/a/k0/l/d;->c:Lq3/a/x2/a1;

    .line 26
    new-instance p4, Le/a/k0/l/m$a;

    invoke-direct {p4, v0}, Le/a/k0/l/m$a;-><init>(Le/a/k0/l/j;)V

    invoke-interface {p3, p4}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    if-eqz p2, :cond_c

    .line 27
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 28
    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Stop recording is done | "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " \n "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " \n "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    monitor-exit p0

    :goto_6
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1
    invoke-static {p0, v0, v1, v1, v2}, Le/a/k0/l/d;->d(Le/a/k0/l/d;ZLjava/lang/Exception;Lcom/truecaller/callrecording/recorder/RecordingError;I)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/l/d;->e:Le/a/k0/l/k;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/k0/l/k;->a:Lcom/truecaller/callrecording/recorder/CallRecorder;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/truecaller/callrecording/recorder/CallRecorder;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized c()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lcom/truecaller/callrecording/recorder/RecordingError;->WATCHDOG_TRIGGERED:Lcom/truecaller/callrecording/recorder/RecordingError;

    const/4 v3, 0x3

    invoke-static {p0, v0, v1, v2, v3}, Le/a/k0/l/d;->d(Le/a/k0/l/d;ZLjava/lang/Exception;Lcom/truecaller/callrecording/recorder/RecordingError;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/k0/l/d;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/k0/l/d;->d:Lq3/a/p1;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Le/a/k0/l/d;->c:Lq3/a/x2/a1;

    .line 5
    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/l/m;

    sget-object v2, Le/a/k0/l/m$c;->a:Le/a/k0/l/m$c;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/k0/l/d;->c:Lq3/a/x2/a1;

    .line 7
    invoke-interface {v0, v2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    new-instance v6, Le/a/k0/l/d$b;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, p2, v0}, Le/a/k0/l/d$b;-><init>(Le/a/k0/l/d;Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/l/d;->d:Lq3/a/p1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 9
    monitor-exit p0

    return p1

    .line 10
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/l/d;->f:Ls1/w/f;

    .line 2
    iget-object v1, p0, Le/a/k0/l/d;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/p1;

    .line 3
    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/l/d;->c:Lq3/a/x2/a1;

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 1
    invoke-static {p0, v0, p1, v1, v2}, Le/a/k0/l/d;->d(Le/a/k0/l/d;ZLjava/lang/Exception;Lcom/truecaller/callrecording/recorder/RecordingError;I)V

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/k0/l/d;->e:Le/a/k0/l/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/k0/l/k;->a:Lcom/truecaller/callrecording/recorder/CallRecorder;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/truecaller/callrecording/recorder/CallRecorder;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    sget-object v2, Lcom/truecaller/callrecording/recorder/RecordingError;->RESET_WITH_ONGOING_SESSION:Lcom/truecaller/callrecording/recorder/RecordingError;

    const/4 v3, 0x3

    invoke-static {p0, v0, v1, v2, v3}, Le/a/k0/l/d;->d(Le/a/k0/l/d;ZLjava/lang/Exception;Lcom/truecaller/callrecording/recorder/RecordingError;I)V

    .line 5
    :cond_0
    iput-object v1, p0, Le/a/k0/l/d;->e:Le/a/k0/l/k;

    .line 6
    iget-object v0, p0, Le/a/k0/l/d;->c:Lq3/a/x2/a1;

    .line 7
    sget-object v1, Le/a/k0/l/m$b;->a:Le/a/k0/l/m$b;

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
