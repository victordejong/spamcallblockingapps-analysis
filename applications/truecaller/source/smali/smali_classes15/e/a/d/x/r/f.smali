.class public final Le/a/d/x/r/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/x/r/o;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/w/f;

.field public final c:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Lcom/truecaller/voip/manager/rtm/RtmMsg;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/d/x/r/f$b;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/d/x/r/h;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;

.field public final i:Le/a/d/g;

.field public final j:Landroid/content/Context;

.field public final k:Le/m/e/k;

.field public final l:Le/a/d/c0/f0;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/d/g;Landroid/content/Context;Le/m/e/k;Le/a/d/c0/f0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p5    # Le/m/e/k;
        .annotation runtime Ljavax/inject/Named;
            value = "VoipGson"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAnalyticsUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/x/r/f;->g:Ls1/w/f;

    iput-object p2, p0, Le/a/d/x/r/f;->h:Ls1/w/f;

    iput-object p3, p0, Le/a/d/x/r/f;->i:Le/a/d/g;

    iput-object p4, p0, Le/a/d/x/r/f;->j:Landroid/content/Context;

    iput-object p5, p0, Le/a/d/x/r/f;->k:Le/m/e/k;

    iput-object p6, p0, Le/a/d/x/r/f;->l:Le/a/d/c0/f0;

    .line 2
    new-instance p2, Le/a/d/x/r/f$a;

    invoke-direct {p2, p0}, Le/a/d/x/r/f$a;-><init>(Le/a/d/x/r/f;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/d/x/r/f;->a:Ls1/g;

    .line 3
    iput-object p1, p0, Le/a/d/x/r/f;->b:Ls1/w/f;

    const/16 p1, 0xa

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p2

    iput-object p2, p0, Le/a/d/x/r/f;->c:Lq3/a/w2/h;

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p1

    iput-object p1, p0, Le/a/d/x/r/f;->d:Lq3/a/w2/h;

    .line 6
    new-instance p1, Le/a/d/x/r/f$b;

    invoke-direct {p1, p0}, Le/a/d/x/r/f$b;-><init>(Le/a/d/x/r/f;)V

    iput-object p1, p0, Le/a/d/x/r/f;->e:Le/a/d/x/r/f$b;

    .line 7
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/d/x/r/f;->f:Ljava/util/Set;

    return-void
.end method

.method public static final h(Le/a/d/x/r/f;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    .line 1
    iget-object v14, v0, Le/a/d/x/r/f;->l:Le/a/d/c0/f0;

    .line 2
    new-instance v15, Le/a/d/c0/e0;

    sget-object v3, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v6, 0x0

    move-object v2, v15

    move-object/from16 v4, p2

    move-object/from16 v5, v16

    invoke-direct/range {v2 .. v11}, Le/a/d/c0/e0;-><init>(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    .line 3
    sget-object v4, Lcom/truecaller/voip/util/VoipAnalyticsState;->INVITED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 v6, 0x4

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v7, v17

    .line 4
    invoke-static/range {v2 .. v7}, Le/a/p5/s0/g;->A0(Le/a/d/c0/f0;Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;ILjava/lang/Object;)V

    const-string v2, "Starting service IncomingVoipService::RtmManager"

    .line 5
    invoke-static {v2}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    .line 7
    :try_start_0
    iget-object v2, v0, Le/a/d/x/r/f;->j:Landroid/content/Context;

    invoke-static {v2, v1, v12, v13}, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v2, v1}, Ln3/k/b/a;->f(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iget-object v0, v0, Le/a/d/x/r/f;->l:Le/a/d/c0/f0;

    invoke-interface {v0, v12}, Le/a/d/c0/f0;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, Le/a/d/x/r/f;->j:Landroid/content/Context;

    invoke-static {v0, v1, v12, v13}, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Ln3/k/b/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/voip/VoipUser;Lcom/truecaller/voip/manager/rtm/RtmMsg;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/voip/VoipUser;",
            "Lcom/truecaller/voip/manager/rtm/RtmMsg;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/truecaller/voip/VoipUser;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Le/a/d/x/r/f;->b(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmMsg;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmMsg;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/manager/rtm/RtmMsg;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/d/x/r/f;->f()Lio/agora/rtm/RtmClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lq3/a/o;

    invoke-static {p3}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 3
    invoke-virtual {v1}, Lq3/a/o;->z()V

    .line 4
    invoke-virtual {v0}, Lio/agora/rtm/RtmClient;->createMessage()Lio/agora/rtm/RtmMessage;

    move-result-object v2

    .line 5
    iget-object v3, p0, Le/a/d/x/r/f;->k:Le/m/e/k;

    invoke-virtual {v3, p2}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/agora/rtm/RtmMessage;->setText(Ljava/lang/String;)V

    .line 6
    new-instance p2, Lio/agora/rtm/SendMessageOptions;

    invoke-direct {p2}, Lio/agora/rtm/SendMessageOptions;-><init>()V

    const/4 v3, 0x0

    .line 7
    iput-boolean v3, p2, Lio/agora/rtm/SendMessageOptions;->enableOfflineMessaging:Z

    .line 8
    iput-boolean v3, p2, Lio/agora/rtm/SendMessageOptions;->enableHistoricalMessaging:Z

    const-string v3, "rtmMessage"

    .line 9
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    .line 10
    new-instance v3, Le/a/d/x/r/f$c;

    invoke-direct {v3, v1}, Le/a/d/x/r/f$c;-><init>(Lq3/a/n;)V

    invoke-virtual {v0, p1, v2, p2, v3}, Lio/agora/rtm/RtmClient;->sendMessageToPeer(Ljava/lang/String;Lio/agora/rtm/RtmMessage;Lio/agora/rtm/SendMessageOptions;Lio/agora/rtm/ResultCallback;)V

    .line 11
    invoke-virtual {v1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    .line 12
    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    const-string p2, "frame"

    .line 13
    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1

    .line 14
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public c(Lq3/a/i0;Ls1/z/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ls1/z/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/x/r/f;->d:Lq3/a/w2/h;

    invoke-static {p1, v0, p2}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/x/r/f;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
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

.method public d(Lq3/a/i0;Ls1/z/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ls1/z/b/p<",
            "-",
            "Lcom/truecaller/voip/manager/rtm/RtmMsg;",
            "-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/x/r/f;->c:Lq3/a/w2/h;

    .line 2
    invoke-static {p1, v0, p2}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    return-void
.end method

.method public e()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Lcom/truecaller/voip/manager/rtm/RtmMsg;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/x/r/f;->c:Lq3/a/w2/h;

    return-object v0
.end method

.method public f()Lio/agora/rtm/RtmClient;
    .locals 1

    iget-object v0, p0, Le/a/d/x/r/f;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/RtmClient;

    return-object v0
.end method

.method public declared-synchronized g(Lq3/a/i0;Ljava/lang/String;Ls1/z/b/a;)Le/a/d/x/r/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ljava/lang/String;",
            "Ls1/z/b/a<",
            "Ljava/lang/Long;",
            ">;)",
            "Le/a/d/x/r/h;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/d/x/r/f;->f()Lio/agora/rtm/RtmClient;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_3

    .line 2
    iget-object v1, p0, Le/a/d/x/r/f;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/d/x/r/h;

    invoke-interface {v3}, Le/a/d/x/r/h;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    check-cast v0, Le/a/d/x/r/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 3
    monitor-exit p0

    return-object v0

    .line 4
    :cond_2
    :try_start_1
    new-instance v0, Le/a/d/x/r/k;

    iget-object v5, p0, Le/a/d/x/r/f;->k:Le/m/e/k;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Le/a/d/x/r/k;-><init>(Ljava/lang/String;Lq3/a/i0;Lio/agora/rtm/RtmClient;Le/m/e/k;Ls1/z/b/a;)V

    .line 5
    iget-object p1, p0, Le/a/d/x/r/f;->f:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-object v0

    .line 7
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/r/f;->b:Ls1/w/f;

    return-object v0
.end method
