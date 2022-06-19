.class public final Le/a/d/c0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/o;


# instance fields
.field public final a:Landroid/os/Vibrator;

.field public final b:Landroid/media/AudioManager;

.field public volatile c:Lcom/truecaller/voip/util/VoipTone;

.field public final d:Ls1/g;

.field public final e:Lq3/a/b3/c;

.field public final f:Ls1/w/f;

.field public final g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;)V
    .locals 2
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/p;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/p;->g:Landroid/content/Context;

    const-string p1, "$this$vibrator"

    const-string v0, "vibrator"

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    .line 2
    invoke-static {p2, p1, v0, v1}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Landroid/os/Vibrator;

    .line 4
    iput-object p1, p0, Le/a/d/c0/p;->a:Landroid/os/Vibrator;

    .line 5
    invoke-static {p2}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c0/p;->b:Landroid/media/AudioManager;

    .line 6
    sget-object p1, Le/a/d/c0/p$f;->b:Le/a/d/c0/p$f;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c0/p;->d:Ls1/g;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 7
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c0/p;->e:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/p;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/c0/p;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d/c0/p;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/c0/p;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 3
    fill-array-data v0, :array_0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Le/a/d/c0/p;->a:Landroid/os/Vibrator;

    .line 6
    invoke-static {v0, v3}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Le/a/d/c0/p;->g()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Le/a/d/c0/p;->a:Landroid/os/Vibrator;

    .line 10
    invoke-virtual {p0}, Le/a/d/c0/p;->g()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 8
        0x3e8
        0x3e8
    .end array-data
.end method

.method public c(Lcom/truecaller/voip/util/VoipTone;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/voip/util/VoipTone;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/p;->f:Ls1/w/f;

    new-instance v1, Le/a/d/c0/p$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/d/c0/p$c;-><init>(Le/a/d/c0/p;Lcom/truecaller/voip/util/VoipTone;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d/c0/p;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/c0/p;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x190

    if-lt v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Le/a/d/c0/p;->a:Landroid/os/Vibrator;

    const/4 v1, -0x1

    invoke-static {v2, v3, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Le/a/d/c0/p;->a:Landroid/os/Vibrator;

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0
    return-void
.end method

.method public e(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/ConnectionState;Le/a/d/x/p;Le/a/d/x/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/voip/VoipState;",
            "Lcom/truecaller/voip/ConnectionState;",
            "Le/a/d/x/p;",
            "Le/a/d/x/p;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/p;->f:Ls1/w/f;

    new-instance v8, Le/a/d/c0/p$a;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Le/a/d/c0/p$a;-><init>(Le/a/d/c0/p;Le/a/d/x/p;Le/a/d/x/p;Lcom/truecaller/voip/ConnectionState;Lcom/truecaller/voip/VoipState;Ls1/w/d;)V

    invoke-static {v0, v8, p5}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f()Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/d/c0/p$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/d/c0/p$d;-><init>(Le/a/d/c0/p;Ls1/w/d;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->P(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method

.method public final g()Landroid/media/AudioAttributes;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

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

.method public final synthetic h(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Landroid/media/ToneGenerator;",
            "Ls1/s;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/d/c0/p$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/d/c0/p$e;-><init>(Le/a/d/c0/p;Ls1/z/b/l;Ls1/w/d;)V

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2, v0, p2}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v3, Le/a/d/c0/p$b;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Le/a/d/c0/p$b;-><init>(Le/a/d/c0/p;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
