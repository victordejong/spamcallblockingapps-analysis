.class public final Le/a/k0/l/d$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/l/d;->e(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callrecording.recorder.CallRecorderSessionManagerImpl$startRecording$1"
    f = "CallRecorderSessionManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k0/l/d;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;


# direct methods
.method public constructor <init>(Le/a/k0/l/d;Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/l/d$b;->e:Le/a/k0/l/d;

    iput-object p2, p0, Le/a/k0/l/d$b;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/k0/l/d$b;->g:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k0/l/d$b;

    iget-object v0, p0, Le/a/k0/l/d$b;->e:Le/a/k0/l/d;

    iget-object v1, p0, Le/a/k0/l/d$b;->f:Ljava/lang/String;

    iget-object v2, p0, Le/a/k0/l/d$b;->g:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k0/l/d$b;-><init>(Le/a/k0/l/d;Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k0/l/d$b;

    iget-object v0, p0, Le/a/k0/l/d$b;->e:Le/a/k0/l/d;

    iget-object v1, p0, Le/a/k0/l/d$b;->f:Ljava/lang/String;

    iget-object v2, p0, Le/a/k0/l/d$b;->g:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k0/l/d$b;-><init>(Le/a/k0/l/d;Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k0/l/d$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v8, v1, Le/a/k0/l/d$b;->e:Le/a/k0/l/d;

    iget-object v11, v1, Le/a/k0/l/d$b;->f:Ljava/lang/String;

    iget-object v10, v1, Le/a/k0/l/d$b;->g:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    .line 2
    monitor-enter v8

    :try_start_0
    const-string v0, "source"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v8, Le/a/k0/l/d;->a:Z

    .line 4
    iget-object v2, v8, Le/a/k0/l/d;->i:Le/a/k0/a/b;

    invoke-interface {v2}, Le/a/k0/a/b;->a()Lcom/truecaller/callrecording/util/RecorderMode;

    move-result-object v5

    .line 5
    sget-object v2, Lcom/truecaller/callrecording/util/RecorderMode;->SDK:Lcom/truecaller/callrecording/util/RecorderMode;

    const/4 v9, 0x0

    if-eq v5, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v9

    .line 6
    :goto_0
    iget-object v0, v8, Le/a/k0/l/d;->g:Le/a/k0/m/a;

    invoke-interface {v0, v11, v3}, Le/a/k0/m/a;->e(Ljava/lang/String;Z)Le/a/k0/m/b;

    move-result-object v0

    .line 7
    instance-of v2, v0, Le/a/k0/m/b$d;

    const/4 v12, 0x3

    const/4 v14, 0x0

    if-eqz v2, :cond_2

    .line 8
    check-cast v0, Le/a/k0/m/b$d;

    .line 9
    iget-object v0, v0, Le/a/k0/m/b$d;->a:Ljava/lang/String;

    .line 10
    iget-object v2, v8, Le/a/k0/l/d;->h:Le/a/k0/l/f;

    .line 11
    iget-object v4, v8, Le/a/k0/l/d;->i:Le/a/k0/a/b;

    invoke-interface {v4}, Le/a/k0/a/b;->b()Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    move-result-object v6

    move-object v4, v0

    move-object v7, v8

    .line 12
    invoke-interface/range {v2 .. v7}, Le/a/k0/l/f;->a(ZLjava/lang/String;Lcom/truecaller/callrecording/util/RecorderMode;Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;Lcom/truecaller/callrecording/recorder/CallRecorder$a;)Lcom/truecaller/callrecording/recorder/CallRecorder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-interface {v2}, Lcom/truecaller/callrecording/recorder/CallRecorder;->a()V

    .line 14
    invoke-interface {v2}, Lcom/truecaller/callrecording/recorder/CallRecorder;->start()V

    .line 15
    invoke-interface {v2}, Lcom/truecaller/callrecording/recorder/CallRecorder;->b()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 16
    :try_start_2
    new-instance v3, Le/a/k0/l/l;

    new-instance v13, Lw3/b/a/b;

    invoke-direct {v13}, Lw3/b/a/b;-><init>()V

    iget-object v4, v8, Le/a/k0/l/d;->k:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->a()J

    move-result-wide v4

    move-object v9, v3

    move-object v12, v0

    move-object v6, v14

    move-wide v14, v4

    invoke-direct/range {v9 .. v15}, Le/a/k0/l/l;-><init>(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;J)V

    .line 17
    new-instance v0, Le/a/k0/l/k;

    invoke-direct {v0, v2, v3}, Le/a/k0/l/k;-><init>(Lcom/truecaller/callrecording/recorder/CallRecorder;Le/a/k0/l/l;)V

    iput-object v0, v8, Le/a/k0/l/d;->e:Le/a/k0/l/k;

    .line 18
    iget-object v0, v8, Le/a/k0/l/d;->c:Lq3/a/x2/a1;

    .line 19
    new-instance v2, Le/a/k0/l/m$d;

    invoke-direct {v2, v3}, Le/a/k0/l/m$d;-><init>(Le/a/k0/l/l;)V

    invoke-interface {v0, v2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 20
    iget-object v0, v8, Le/a/k0/l/d;->j:Le/a/k0/l/h;

    invoke-interface {v0, v8}, Le/a/k0/l/h;->a(Le/a/k0/l/h$a;)V

    .line 21
    iput-object v6, v8, Le/a/k0/l/d;->d:Lq3/a/p1;

    goto :goto_1

    :cond_1
    move-object v6, v14

    .line 22
    sget-object v0, Lcom/truecaller/callrecording/recorder/RecordingError;->RECORDER_ERROR:Lcom/truecaller/callrecording/recorder/RecordingError;

    invoke-static {v8, v9, v6, v0, v12}, Le/a/k0/l/d;->d(Le/a/k0/l/d;ZLjava/lang/Exception;Lcom/truecaller/callrecording/recorder/RecordingError;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :goto_1
    monitor-exit v8

    goto :goto_3

    :catch_0
    move-object v6, v14

    .line 24
    :try_start_3
    sget-object v0, Lcom/truecaller/callrecording/recorder/RecordingError;->START_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

    invoke-static {v8, v9, v6, v0, v12}, Le/a/k0/l/d;->d(Le/a/k0/l/d;ZLjava/lang/Exception;Lcom/truecaller/callrecording/recorder/RecordingError;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    monitor-exit v8

    goto :goto_3

    :cond_2
    move-object v6, v14

    .line 26
    :try_start_4
    sget-object v2, Le/a/k0/m/b$a;->a:Le/a/k0/m/b$a;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/truecaller/callrecording/recorder/RecordingError;->INVALID_STORAGE_STATE:Lcom/truecaller/callrecording/recorder/RecordingError;

    goto :goto_2

    .line 27
    :cond_3
    sget-object v2, Le/a/k0/m/b$b;->a:Le/a/k0/m/b$b;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/truecaller/callrecording/recorder/RecordingError;->CREATE_DIRECTORY_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

    goto :goto_2

    .line 28
    :cond_4
    sget-object v2, Le/a/k0/m/b$c;->a:Le/a/k0/m/b$c;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/truecaller/callrecording/recorder/RecordingError;->CREATE_FILE_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

    goto :goto_2

    .line 29
    :cond_5
    sget-object v0, Lcom/truecaller/callrecording/recorder/RecordingError;->UNMAPPED:Lcom/truecaller/callrecording/recorder/RecordingError;

    .line 30
    :goto_2
    invoke-static {v8, v9, v6, v0, v12}, Le/a/k0/l/d;->d(Le/a/k0/l/d;ZLjava/lang/Exception;Lcom/truecaller/callrecording/recorder/RecordingError;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    monitor-exit v8

    .line 32
    :goto_3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v8

    throw v0
.end method
