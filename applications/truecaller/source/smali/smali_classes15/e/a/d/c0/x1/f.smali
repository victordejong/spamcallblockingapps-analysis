.class public final Le/a/d/c0/x1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/x1/e;
.implements Lq3/a/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d/c0/x1/f$b;,
        Le/a/d/c0/x1/f$c;
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/d/c0/x1/i;

.field public c:Landroid/media/MediaPlayer;

.field public d:Le/a/d/c0/x1/d;

.field public e:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lq3/a/p1;

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;

.field public final i:Ls1/w/f;

.field public final j:Landroid/content/Context;

.field public final k:Le/a/p5/g;

.field public final l:Le/a/d/q/v;

.field public final m:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/p5/g;Le/a/d/q/v;Le/a/p5/c0;Le/a/p5/a0;)V
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
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipCallConnectionManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/x1/f;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/x1/f;->i:Ls1/w/f;

    iput-object p3, p0, Le/a/d/c0/x1/f;->j:Landroid/content/Context;

    iput-object p4, p0, Le/a/d/c0/x1/f;->k:Le/a/p5/g;

    iput-object p5, p0, Le/a/d/c0/x1/f;->l:Le/a/d/q/v;

    iput-object p6, p0, Le/a/d/c0/x1/f;->m:Le/a/p5/c0;

    .line 2
    sget-object p2, Ls1/h;->c:Ls1/h;

    new-instance p4, Le/a/d/c0/x1/f$e;

    invoke-direct {p4, p0, p7}, Le/a/d/c0/x1/f$e;-><init>(Le/a/d/c0/x1/f;Le/a/p5/a0;)V

    invoke-static {p2, p4}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/d/c0/x1/f;->a:Ls1/g;

    .line 3
    new-instance p2, Le/a/d/c0/x1/i;

    invoke-direct {p2, p1, p3}, Le/a/d/c0/x1/i;-><init>(Ls1/w/f;Landroid/content/Context;)V

    .line 4
    iget-boolean p3, p2, Le/a/d/c0/x1/i;->c:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p3, p2, Le/a/d/c0/x1/i;->f:Landroid/content/Context;

    new-instance p5, Landroid/content/IntentFilter;

    const-string p6, "android.intent.action.HEADSET_PLUG"

    invoke-direct {p5, p6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2, p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    iput-boolean p4, p2, Le/a/d/c0/x1/i;->c:Z

    .line 7
    invoke-virtual {p2}, Le/a/d/c0/x1/i;->a()V

    .line 8
    :goto_0
    new-instance p3, Le/a/d/c0/x1/f$a;

    invoke-direct {p3, p0}, Le/a/d/c0/x1/f$a;-><init>(Le/a/d/c0/x1/f;)V

    .line 9
    iput-object p3, p2, Le/a/d/c0/x1/i;->b:Ls1/z/b/a;

    .line 10
    iput-object p2, p0, Le/a/d/c0/x1/f;->b:Le/a/d/c0/x1/i;

    const/4 p2, 0x0

    .line 11
    invoke-static {p2, p4, p2}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p2

    invoke-interface {p1, p2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c0/x1/f;->g:Ls1/w/f;

    return-void
.end method

.method public static final k(Le/a/d/c0/x1/f;)Le/a/d/c0/x1/b;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/r0/b;

    .line 2
    invoke-virtual {v0}, Le/a/p5/r0/b;->b()Le/a/p5/r0/d;

    move-result-object v0

    .line 3
    iget-object v1, v0, Le/a/p5/r0/d;->a:Le/a/p5/r0/a;

    .line 4
    invoke-virtual {p0}, Le/a/d/c0/x1/f;->m()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Le/a/d/c0/x1/a$c;->a:Le/a/d/c0/x1/a$c;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    new-instance p0, Le/a/d/c0/x1/a$a;

    invoke-direct {p0, v1}, Le/a/d/c0/x1/a$a;-><init>(Le/a/p5/r0/a;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Le/a/d/c0/x1/f;->b:Le/a/d/c0/x1/i;

    .line 7
    iget-boolean p0, p0, Le/a/d/c0/x1/i;->a:Z

    if-eqz p0, :cond_2

    .line 8
    sget-object p0, Le/a/d/c0/x1/a$d;->a:Le/a/d/c0/x1/a$d;

    goto :goto_0

    .line 9
    :cond_2
    sget-object p0, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    .line 10
    :goto_0
    new-instance v1, Le/a/d/c0/x1/b;

    .line 11
    iget-object v0, v0, Le/a/p5/r0/d;->b:Ljava/util/List;

    .line 12
    invoke-direct {v1, p0, v0}, Le/a/d/c0/x1/b;-><init>(Le/a/d/c0/x1/a;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 3
    invoke-virtual {p0}, Le/a/d/c0/x1/f;->n()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 5
    iget-object v1, p0, Le/a/d/c0/x1/f;->j:Landroid/content/Context;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/d/c0/x1/f;->k:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sget-object v3, Le/a/d/c0/x1/h;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Uri.parse(\"android.resou\u2026geName()}$VOIP_TONE_URI\")"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 12
    :goto_0
    iput-object v0, p0, Le/a/d/c0/x1/f;->c:Landroid/media/MediaPlayer;

    :goto_1
    if-eqz v0, :cond_2

    .line 13
    iget-object v1, p0, Le/a/d/c0/x1/f;->d:Le/a/d/c0/x1/d;

    if-eqz v1, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    new-instance v1, Le/a/d/c0/x1/g;

    invoke-direct {v1, p0}, Le/a/d/c0/x1/g;-><init>(Le/a/d/c0/x1/f;)V

    .line 15
    sget-object v2, Le/a/d/c0/x1/c;->a:Le/a/d/c0/x1/c;

    invoke-virtual {p0, v2, v1}, Le/a/d/c0/x1/f;->o(Le/a/d/c0/x1/c;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Le/a/d/c0/x1/d;

    move-result-object v1

    iput-object v1, p0, Le/a/d/c0/x1/f;->d:Le/a/d/c0/x1/d;

    .line 16
    :goto_2
    invoke-virtual {p0, v0}, Le/a/d/c0/x1/f;->q(Landroid/media/MediaPlayer;)Ls1/s;

    :cond_2
    return-void
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f;->h:Ls1/w/f;

    new-instance v1, Le/a/d/c0/x1/f$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/d/c0/x1/f$i;-><init>(Le/a/d/c0/x1/f;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/a/d/c0/x1/f;->d:Le/a/d/c0/x1/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/c0/x1/d;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le/a/d/c0/x1/f;->d:Le/a/d/c0/x1/d;

    :cond_1
    return-void
.end method

.method public d(Le/a/d/c0/x1/a;Le/a/d/x/q/h;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/x1/a;",
            "Le/a/d/x/q/h;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/d/c0/x1/a$c;->a:Le/a/d/c0/x1/a$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-interface {p2, v0}, Le/a/d/x/q/h;->g(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Le/a/d/x/q/h;->g(Z)V

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p3}, Le/a/d/c0/x1/f;->l(Le/a/d/c0/x1/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_1

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Lq3/a/i0;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f;->h:Ls1/w/f;

    new-instance v1, Le/a/d/c0/x1/f$l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/d/c0/x1/f$l;-><init>(Le/a/d/c0/x1/f;Lq3/a/i0;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/d/c0/x1/f;->m()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public g()V
    .locals 6

    .line 1
    new-instance v3, Le/a/d/c0/x1/f$j;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/c0/x1/f$j;-><init>(Le/a/d/c0/x1/f;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    .line 2
    new-instance v1, Le/a/d/c0/x1/f$k;

    invoke-direct {v1, p0}, Le/a/d/c0/x1/f$k;-><init>(Le/a/d/c0/x1/f;)V

    check-cast v0, Lq3/a/u1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f;->g:Ls1/w/f;

    return-object v0
.end method

.method public h()Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Le/a/d/c0/x1/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/d/c0/x1/f$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/d/c0/x1/f$d;-><init>(Le/a/d/c0/x1/f;Ls1/w/d;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->P(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method

.method public i(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f;->i:Ls1/w/f;

    new-instance v1, Le/a/d/c0/x1/f$m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/d/c0/x1/f$m;-><init>(Le/a/d/c0/x1/f;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public j(Le/a/d/c0/x1/a;Le/a/d/x/l;)V
    .locals 9

    const-string v0, "route"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f;->f:Lq3/a/p1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    new-instance v6, Le/a/d/c0/x1/f$h;

    invoke-direct {v6, p0, p1, p2, v2}, Le/a/d/c0/x1/f$h;-><init>(Le/a/d/c0/x1/f;Le/a/d/c0/x1/a;Le/a/d/x/l;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/d/c0/x1/f$g;

    invoke-direct {p2, p0}, Le/a/d/c0/x1/f$g;-><init>(Le/a/d/c0/x1/f;)V

    move-object v0, p1

    check-cast v0, Lq3/a/u1;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1, p2}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    .line 5
    iput-object p1, p0, Le/a/d/c0/x1/f;->f:Lq3/a/p1;

    return-void
.end method

.method public final synthetic l(Le/a/d/c0/x1/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/x1/a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f;->h:Ls1/w/f;

    new-instance v1, Le/a/d/c0/x1/f$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/d/c0/x1/f$f;-><init>(Le/a/d/c0/x1/f;Le/a/d/c0/x1/a;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final m()Landroid/media/AudioManager;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f;->j:Landroid/content/Context;

    invoke-static {v0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method public final n()Landroid/media/AudioAttributes;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public final o(Le/a/d/c0/x1/c;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Le/a/d/c0/x1/d;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_0

    .line 3
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4
    invoke-virtual {p1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {p0}, Le/a/d/c0/x1/f;->n()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 9
    :goto_0
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 10
    invoke-virtual {v0, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Le/a/d/c0/x1/f;->m()Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 14
    new-instance p2, Le/a/d/c0/x1/f$b;

    const-string v0, "focusRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Le/a/d/c0/x1/f$b;-><init>(Le/a/d/c0/x1/f;Landroid/media/AudioFocusRequest;)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    if-ne p1, v2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 17
    :cond_4
    :goto_1
    invoke-virtual {p0}, Le/a/d/c0/x1/f;->m()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p2, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 18
    new-instance p1, Le/a/d/c0/x1/f$c;

    invoke-direct {p1, p0, p2}, Le/a/d/c0/x1/f$c;-><init>(Le/a/d/c0/x1/f;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    move-object p2, p1

    :goto_2
    return-object p2
.end method

.method public final synthetic p(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/d/c0/x1/f$n;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/c0/x1/f$n;

    iget v1, v0, Le/a/d/c0/x1/f$n;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/x1/f$n;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/x1/f$n;

    invoke-direct {v0, p0, p1}, Le/a/d/c0/x1/f$n;-><init>(Le/a/d/c0/x1/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/c0/x1/f$n;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/x1/f$n;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/d/c0/x1/f$n;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/c0/x1/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v4, 0x12c

    .line 4
    iput-object p0, v0, Le/a/d/c0/x1/f$n;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/x1/f$n;->e:I

    invoke-static {v4, v5, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Le/a/d/c0/x1/f;->m()Landroid/media/AudioManager;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 9
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final q(Landroid/media/MediaPlayer;)Ls1/s;
    .locals 3

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public final synthetic r(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/d/c0/x1/f$o;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/c0/x1/f$o;

    iget v1, v0, Le/a/d/c0/x1/f$o;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/x1/f$o;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/x1/f$o;

    invoke-direct {v0, p0, p1}, Le/a/d/c0/x1/f$o;-><init>(Le/a/d/c0/x1/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/c0/x1/f$o;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/x1/f$o;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/d/c0/x1/f$o;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/c0/x1/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v4, 0x12c

    .line 4
    iput-object p0, v0, Le/a/d/c0/x1/f$o;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/x1/f$o;->e:I

    invoke-static {v4, v5, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Le/a/d/c0/x1/f;->m()Landroid/media/AudioManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 8
    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 10
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
