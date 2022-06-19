.class public final Le/a/k0/n/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/k0/n/e/e;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Lq3/a/p1;

.field public c:Lq3/a/p1;

.field public d:I

.field public e:Landroid/net/Uri;

.field public f:Lq3/a/p1;

.field public g:Le/a/k0/n/e/b;

.field public final h:Ls1/w/f;

.field public final i:Le/a/u3/g;

.field public final j:Le/a/k0/n/e/j;

.field public final k:Le/a/k0/i/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/u3/g;Le/a/k0/n/e/j;Le/a/k0/i/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaPlayerWrapper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordingAnalytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/n/e/h;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/k0/n/e/h;->i:Le/a/u3/g;

    iput-object p3, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    iput-object p4, p0, Le/a/k0/n/e/h;->k:Le/a/k0/i/a;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/n/e/h;->b:Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/h;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public b(Landroid/net/Uri;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V
    .locals 3

    const-string v0, "analyticsSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    if-eqz p1, :cond_0

    .line 2
    new-instance p2, Le/a/k0/n/e/c$a;

    .line 3
    sget v0, Lcom/truecaller/callrecording/R$string;->callrecording_internal_player_file_corrupted:I

    .line 4
    invoke-direct {p2, v0}, Le/a/k0/n/e/c$a;-><init>(I)V

    .line 5
    invoke-interface {p1, p2}, Le/a/k0/n/e/b;->O4(Le/a/k0/n/e/c;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Le/a/k0/n/e/h;->e:Landroid/net/Uri;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget v1, p0, Le/a/k0/n/e/h;->d:I

    if-eqz v1, :cond_4

    .line 7
    iget-object p1, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    check-cast p1, Le/a/k0/n/e/s;

    invoke-virtual {p1}, Le/a/k0/n/e/s;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    check-cast p1, Le/a/k0/n/e/s;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Le/a/k0/n/e/m;->b:Le/a/k0/n/e/m;

    invoke-virtual {p1, v0}, Le/a/k0/n/e/s;->c(Ls1/z/b/l;)V

    .line 12
    iget-object p1, p0, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    if-eqz p1, :cond_2

    sget-object v0, Le/a/k0/n/e/c$c;->a:Le/a/k0/n/e/c$c;

    invoke-interface {p1, v0}, Le/a/k0/n/e/b;->O4(Le/a/k0/n/e/c;)V

    .line 13
    :cond_2
    iget-object p1, p0, Le/a/k0/n/e/h;->k:Le/a/k0/i/a;

    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingAction;->PAUSE:Lcom/truecaller/callrecording/analytics/RecordingAction;

    invoke-interface {p1, p2, v0}, Le/a/k0/i/a;->e(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Lcom/truecaller/callrecording/analytics/RecordingAction;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0, p2}, Le/a/k0/n/e/h;->g(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    goto :goto_0

    :cond_4
    const-string v0, "uri"

    .line 15
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Le/a/k0/n/e/h;->e:Landroid/net/Uri;

    .line 17
    iget-object v1, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    .line 18
    check-cast v1, Le/a/k0/n/e/s;

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v2, Le/a/k0/n/e/o;->b:Le/a/k0/n/e/o;

    invoke-virtual {v1, v2}, Le/a/k0/n/e/s;->c(Ls1/z/b/l;)V

    .line 21
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Le/a/k0/n/e/q;

    invoke-direct {v0, v1, p1}, Le/a/k0/n/e/q;-><init>(Le/a/k0/n/e/s;Landroid/net/Uri;)V

    invoke-virtual {v1, v0}, Le/a/k0/n/e/s;->c(Ls1/z/b/l;)V

    .line 23
    invoke-virtual {v1}, Le/a/k0/n/e/s;->a()I

    move-result p1

    iput p1, p0, Le/a/k0/n/e/h;->d:I

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {p0, p2}, Le/a/k0/n/e/h;->g(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public c(ILcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V
    .locals 8

    const-string v0, "analyticsSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    check-cast v0, Le/a/k0/n/e/s;

    invoke-virtual {v0}, Le/a/k0/n/e/s;->a()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p1, Le/a/k0/n/e/p;

    invoke-direct {p1, v1}, Le/a/k0/n/e/p;-><init>(I)V

    invoke-virtual {v0, p1}, Le/a/k0/n/e/s;->c(Ls1/z/b/l;)V

    .line 4
    iget-object p1, p0, Le/a/k0/n/e/h;->c:Lq3/a/p1;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    new-instance v5, Le/a/k0/n/e/h$d;

    invoke-direct {v5, p0, p2, v0}, Le/a/k0/n/e/h$d;-><init>(Le/a/k0/n/e/h;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/n/e/h;->c:Lq3/a/p1;

    return-void
.end method

.method public d(JLe/a/k0/n/e/b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    invoke-static {v0, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/n/e/h;->a:Ljava/lang/Long;

    .line 3
    iget-object p1, p0, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    if-eqz p1, :cond_0

    sget-object p2, Le/a/k0/n/e/c$b;->a:Le/a/k0/n/e/c$b;

    invoke-interface {p1, p2}, Le/a/k0/n/e/b;->O4(Le/a/k0/n/e/c;)V

    .line 4
    :cond_0
    iput-object p3, p0, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    if-eqz v0, :cond_0

    sget-object v1, Le/a/k0/n/e/c$b;->a:Le/a/k0/n/e/c$b;

    invoke-interface {v0, v1}, Le/a/k0/n/e/b;->O4(Le/a/k0/n/e/c;)V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    return-void
.end method

.method public f()Le/a/k0/n/e/a;
    .locals 3

    .line 1
    new-instance v0, Le/a/k0/n/e/a;

    iget-object v1, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    check-cast v1, Le/a/k0/n/e/s;

    invoke-virtual {v1}, Le/a/k0/n/e/s;->b()Z

    move-result v1

    iget-object v2, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    check-cast v2, Le/a/k0/n/e/s;

    .line 2
    iget-object v2, v2, Le/a/k0/n/e/s;->a:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-direct {v0, v1, v2}, Le/a/k0/n/e/a;-><init>(ZI)V

    return-object v0
.end method

.method public g(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V
    .locals 10

    const-string v0, "analyticsSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    .line 2
    move-object v1, v0

    check-cast v1, Le/a/k0/n/e/s;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Le/a/k0/n/e/r;->b:Le/a/k0/n/e/r;

    invoke-virtual {v1, v2}, Le/a/k0/n/e/s;->c(Ls1/z/b/l;)V

    .line 5
    iget-object v1, p0, Le/a/k0/n/e/h;->f:Lq3/a/p1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    new-instance v7, Le/a/k0/n/e/h$c;

    invoke-direct {v7, v0, v2, p0}, Le/a/k0/n/e/h$c;-><init>(Le/a/k0/n/e/j;Ls1/w/d;Le/a/k0/n/e/h;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p0, Le/a/k0/n/e/h;->f:Lq3/a/p1;

    .line 7
    iget-object v0, p0, Le/a/k0/n/e/h;->k:Le/a/k0/i/a;

    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAction;->PLAY_INTERNAL:Lcom/truecaller/callrecording/analytics/RecordingAction;

    invoke-interface {v0, p1, v1}, Le/a/k0/i/a;->e(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Lcom/truecaller/callrecording/analytics/RecordingAction;)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/h;->h:Ls1/w/f;

    iget-object v1, p0, Le/a/k0/n/e/h;->b:Lq3/a/p1;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/h;->i:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->B1:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x83

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/h;->i:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->B1:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x83

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1, v0}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v2

    iput-object v2, p0, Le/a/k0/n/e/h;->b:Lq3/a/p1;

    .line 5
    iget-object v2, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    check-cast v2, Le/a/k0/n/e/s;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 8
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x2

    .line 9
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 12
    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 13
    iput-object v3, v2, Le/a/k0/n/e/s;->a:Landroid/media/MediaPlayer;

    .line 14
    iget-object v1, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    new-instance v2, Le/a/k0/n/e/h$a;

    invoke-direct {v2, p0}, Le/a/k0/n/e/h$a;-><init>(Le/a/k0/n/e/h;)V

    check-cast v1, Le/a/k0/n/e/s;

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "action"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v3, Le/a/k0/n/e/l;

    invoke-direct {v3, v2}, Le/a/k0/n/e/l;-><init>(Ls1/z/b/a;)V

    invoke-virtual {v1, v3}, Le/a/k0/n/e/s;->c(Ls1/z/b/l;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 17
    new-instance v7, Le/a/k0/n/e/h$b;

    invoke-direct {v7, p0, v0}, Le/a/k0/n/e/h$b;-><init>(Le/a/k0/n/e/h;Ls1/w/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/k0/n/e/h;->e:Landroid/net/Uri;

    .line 2
    iget-object v1, p0, Le/a/k0/n/e/h;->b:Lq3/a/p1;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    if-eqz v1, :cond_0

    sget-object v2, Le/a/k0/n/e/c$b;->a:Le/a/k0/n/e/c$b;

    invoke-interface {v1, v2}, Le/a/k0/n/e/b;->O4(Le/a/k0/n/e/c;)V

    .line 4
    :cond_0
    iput-object v0, p0, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    .line 5
    iget-object v1, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    check-cast v1, Le/a/k0/n/e/s;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Le/a/k0/n/e/o;->b:Le/a/k0/n/e/o;

    invoke-virtual {v1, v2}, Le/a/k0/n/e/s;->c(Ls1/z/b/l;)V

    .line 8
    iget-object v1, p0, Le/a/k0/n/e/h;->j:Le/a/k0/n/e/j;

    check-cast v1, Le/a/k0/n/e/s;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Le/a/k0/n/e/n;->b:Le/a/k0/n/e/n;

    invoke-virtual {v1, v2}, Le/a/k0/n/e/s;->c(Ls1/z/b/l;)V

    .line 11
    iput-object v0, v1, Le/a/k0/n/e/s;->a:Landroid/media/MediaPlayer;

    return-void
.end method
