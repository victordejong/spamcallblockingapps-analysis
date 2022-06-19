.class public final Lcom/truecaller/voip/legacy/incall/LegacyVoipService;
.super Le/a/d/b/a/c;
.source "SourceFile"

# interfaces
.implements Le/a/d/b/a/g;
.implements Lq3/a/i0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0008\u00a2\u0006\u0005\u0008\u0081\u0001\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J)\u0010\u000c\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0006J\u0017\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010%\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0006J\u000f\u0010(\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0006J\u000f\u0010)\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0006J\u000f\u0010*\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0006J\u000f\u0010+\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0006J\u000f\u0010,\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008,\u0010\u0006J\u000f\u0010-\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0006J\u0017\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008/\u0010\"J\u001f\u00103\u001a\u00020\u00042\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00085\u0010\u0006J\u000f\u00106\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00086\u0010\u0006J\u0017\u00108\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u00088\u0010\"J\u0017\u0010;\u001a\u00020\u00042\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010=\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008=\u0010\u0006J\u0017\u0010?\u001a\u00020\u00042\u0006\u0010>\u001a\u000200H\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010A\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008A\u0010\u0006J\u000f\u0010B\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008B\u0010\u0006R\u001c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00100C8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR(\u0010R\u001a\u00020K8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008(\u0010L\u0012\u0004\u0008Q\u0010\u0006\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR(\u0010V\u001a\u00020K8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008-\u0010L\u0012\u0004\u0008U\u0010\u0006\u001a\u0004\u0008S\u0010N\"\u0004\u0008T\u0010PR\"\u0010]\u001a\u00020W8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\'\u0010X\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\"\u0010d\u001a\u00020^8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008!\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\"\u0010l\u001a\u00020e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008f\u0010g\u001a\u0004\u0008h\u0010i\"\u0004\u0008j\u0010kR\u0016\u0010n\u001a\u00020K8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010NR\u001c\u0010s\u001a\u0008\u0018\u00010oR\u00020p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR\"\u0010{\u001a\u00020t8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008u\u0010v\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR\u001c\u0010}\u001a\u0008\u0012\u0004\u0012\u00020\u00130C8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008|\u0010ER\u001d\u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00020~0C8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u007f\u0010E\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lcom/truecaller/voip/legacy/incall/LegacyVoipService;",
        "Landroid/app/Service;",
        "Le/a/d/b/a/g;",
        "Lq3/a/i0;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "onDestroy",
        "t",
        "Le/a/d/l;",
        "getState",
        "()Le/a/d/l;",
        "Le/a/d/x/p;",
        "T1",
        "()Le/a/d/x/p;",
        "",
        "N1",
        "()J",
        "Le/a/d/b/a/e;",
        "binderCallback",
        "L1",
        "(Le/a/d/b/a/e;)V",
        "o3",
        "r3",
        "",
        "title",
        "h",
        "(Ljava/lang/String;)V",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "config",
        "m3",
        "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V",
        "g",
        "e",
        "c",
        "b",
        "s3",
        "p3",
        "d",
        "text",
        "G",
        "",
        "startTimer",
        "callStartRealtime",
        "l3",
        "(ZJ)V",
        "a",
        "q3",
        "number",
        "n3",
        "Le/a/d/c0/x1/a;",
        "audioRoute",
        "S1",
        "(Le/a/d/c0/x1/a;)V",
        "Q1",
        "enabled",
        "R1",
        "(Z)V",
        "O1",
        "M1",
        "Lq3/a/w2/h;",
        "K1",
        "()Lq3/a/w2/h;",
        "statesChannel",
        "Le/a/g4/a/d/b;",
        "j",
        "Le/a/g4/a/d/b;",
        "callNotification",
        "Ls1/w/f;",
        "Ls1/w/f;",
        "getAsyncContext",
        "()Ls1/w/f;",
        "setAsyncContext",
        "(Ls1/w/f;)V",
        "getAsyncContext$annotations",
        "asyncContext",
        "getUiContext",
        "setUiContext",
        "getUiContext$annotations",
        "uiContext",
        "Le/a/p5/c;",
        "Le/a/p5/c;",
        "getClock",
        "()Le/a/p5/c;",
        "setClock",
        "(Le/a/p5/c;)V",
        "clock",
        "Le/a/d/q/v;",
        "Le/a/d/q/v;",
        "getCallConnectionManager",
        "()Le/a/d/q/v;",
        "setCallConnectionManager",
        "(Le/a/d/q/v;)V",
        "callConnectionManager",
        "Le/a/g4/a/b;",
        "i",
        "Le/a/g4/a/b;",
        "getNotificationFactory",
        "()Le/a/g4/a/b;",
        "setNotificationFactory",
        "(Le/a/g4/a/b;)V",
        "notificationFactory",
        "getCoroutineContext",
        "coroutineContext",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "k",
        "Landroid/os/PowerManager$WakeLock;",
        "proximityLock",
        "Le/a/d/b/a/f;",
        "f",
        "Le/a/d/b/a/f;",
        "getPresenter",
        "()Le/a/d/b/a/f;",
        "setPresenter",
        "(Le/a/d/b/a/f;)V",
        "presenter",
        "P1",
        "serviceSettingsChannel",
        "Lcom/truecaller/voip/VoipUser;",
        "J0",
        "usersChannel",
        "<init>",
        "voip_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static l:Z


# instance fields
.field public d:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/d/b/a/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/p5/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/d/q/v;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Le/a/g4/a/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Le/a/g4/a/d/b;

.field public k:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/d/b/a/c;-><init>()V

    return-void
.end method

.method public static final f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.truecaller.voip.extra.EXTRA_NUMBER"

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static i(Lcom/truecaller/voip/legacy/incall/LegacyVoipService;ZI)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0, p1}, Le/a/g4/a/a;->p(Landroid/app/Service;Z)V

    return-void

    :cond_1
    const-string p0, "callNotification"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public G(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/g4/a/d/b;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->i(Lcom/truecaller/voip/legacy/incall/LegacyVoipService;ZI)V

    return-void

    :cond_0
    const-string p1, "callNotification"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public J0()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Lcom/truecaller/voip/VoipUser;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    .line 2
    iget-object v0, v0, Le/a/d/b/a/b;->p:Lq3/a/w2/h;

    return-object v0

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public K1()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Le/a/d/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    .line 2
    iget-object v0, v0, Le/a/d/b/a/b;->q:Lq3/a/w2/h;

    return-object v0

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public L1(Le/a/d/b/a/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    .line 2
    iput-object p1, v0, Le/a/d/b/a/b;->d:Le/a/d/b/a/e;

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public M1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Le/a/d/b/a/b;->fk(Z)V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public N1()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    .line 2
    iget-wide v0, v0, Le/a/d/b/a/b;->l:J

    return-wide v0

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public O1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Le/a/d/b/a/b;->fk(Z)V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public P1()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Le/a/d/x/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    .line 2
    iget-object v0, v0, Le/a/d/b/a/b;->s:Lq3/a/w2/r;

    return-object v0

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Q1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    invoke-virtual {v0}, Le/a/d/b/a/b;->Yj()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public R1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    invoke-virtual {v0, p1}, Le/a/d/b/a/b;->Zj(Z)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public S1(Le/a/d/c0/x1/a;)V
    .locals 2

    const-string v0, "audioRoute"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v1, :cond_0

    check-cast v1, Le/a/d/b/a/b;

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/d/b/a/b;->C:Le/a/d/c0/x1/e;

    iget-object v1, v1, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    invoke-interface {v0, p1, v1}, Le/a/d/c0/x1/e;->j(Le/a/d/c0/x1/a;Le/a/d/x/l;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public T1()Le/a/d/x/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    .line 2
    invoke-virtual {v0}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/d/b;->x()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, v1}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->i(Lcom/truecaller/voip/legacy/incall/LegacyVoipService;ZI)V

    return-void

    :cond_0
    const-string v0, "callNotification"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/d/b;->t()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, v1}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->i(Lcom/truecaller/voip/legacy/incall/LegacyVoipService;ZI)V

    return-void

    :cond_0
    const-string v0, "callNotification"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/truecaller/voip/legacy/incall/ui/LegacyVoipActivity;->pa(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/d/b;->v()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, v1}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->i(Lcom/truecaller/voip/legacy/incall/LegacyVoipService;ZI)V

    return-void

    :cond_0
    const-string v0, "callNotification"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/d/b;->r()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, v1}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->i(Lcom/truecaller/voip/legacy/incall/LegacyVoipService;ZI)V

    return-void

    :cond_0
    const-string v0, "callNotification"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->d:Ls1/w/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "uiContext"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getState()Le/a/d/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/b/a/b;

    .line 2
    invoke-virtual {v0}, Le/a/d/b/a/b;->Qj()Le/a/d/l;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/g4/a/d/b;->j(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->i(Lcom/truecaller/voip/legacy/incall/LegacyVoipService;ZI)V

    return-void

    :cond_0
    const-string p1, "callNotification"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public l3(ZJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->g:Le/a/p5/c;

    const-string v1, "clock"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v3

    sub-long/2addr v3, p2

    .line 2
    iget-object p2, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    const-string p3, "callNotification"

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object p2

    .line 4
    iput-boolean p1, p2, Ln3/k/a/q;->n:Z

    .line 5
    iget-object p1, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->g:Le/a/p5/c;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Le/a/p5/c;->c()J

    move-result-wide p2

    sub-long/2addr p2, v3

    invoke-virtual {p1, p2, p3}, Le/a/g4/a/a;->o(J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 6
    invoke-static {p0, p1, p2}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->i(Lcom/truecaller/voip/legacy/incall/LegacyVoipService;ZI)V

    return-void

    .line 7
    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_2
    invoke-static {p3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public m3(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/g4/a/a;->g(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->i(Lcom/truecaller/voip/legacy/incall/LegacyVoipService;ZI)V

    return-void

    :cond_0
    const-string p1, "callNotification"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public n3(Ljava/lang/String;)V
    .locals 4

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/voip/R$string;->voip_number_does_not_support:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    sget v2, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public o3()V
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Le/a/p5/s0/g;->Y(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$id;->voip_incoming_service_missed_call_notification:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Le/a/d/b/a/s;

    invoke-direct {p1, p0}, Le/a/d/b/a/s;-><init>(Le/a/d/b/a/d;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 12

    .line 1
    invoke-super {p0}, Le/a/d/b/a/c;->onCreate()V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->l:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Le/a/h4/q/g;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Le/a/h4/q/g;

    if-eqz v1, :cond_7

    .line 5
    invoke-interface {v1}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v1

    .line 6
    iget-object v4, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->i:Le/a/g4/a/b;

    if-eqz v4, :cond_6

    .line 7
    sget v5, Lcom/truecaller/voip/R$id;->voip_service_foreground_notification:I

    const-string v2, "voip_v1"

    .line 8
    invoke-interface {v1, v2}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    sget v1, Lcom/truecaller/voip/R$id;->voip_incoming_notification_action_mute:I

    .line 10
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.truecaller.voip.incoming.ACTION_TOGGLE_MUTE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0xc000000

    .line 11
    invoke-static {p0, v1, v2, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "PendingIntent.getService\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget v8, Lcom/truecaller/voip/R$id;->voip_incoming_notification_action_speaker:I

    .line 13
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "com.truecaller.voip.incoming.ACTION_TOGGLE_SPEAKER"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-static {p0, v8, v9, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget v9, Lcom/truecaller/voip/R$id;->voip_incoming_notification_action_hang_up:I

    .line 16
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "com.truecaller.voip.incoming.ACTION_HANG_UP"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {p0, v9, v10, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-static {v9, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x20

    move-object v7, v1

    .line 18
    invoke-static/range {v4 .. v11}, Le/a/g4/a/b;->c(Le/a/g4/a/b;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Le/a/g4/a/d/a;I)Le/a/g4/a/d/b;

    move-result-object v1

    .line 19
    sget v2, Lcom/truecaller/voip/R$drawable;->ic_voip_notification:I

    invoke-virtual {v1, v2}, Le/a/g4/a/a;->m(I)V

    .line 20
    invoke-static {p0}, Lcom/truecaller/voip/legacy/incall/ui/LegacyVoipActivity;->pa(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/g4/a/a;->i(Landroid/content/Intent;)V

    .line 21
    iput-object v1, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    .line 22
    invoke-static {p0}, Le/a/p5/s0/g;->b0(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {v1}, Le/a/p5/s0/g;->c0(Landroid/os/PowerManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->k:Landroid/os/PowerManager$WakeLock;

    .line 23
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    invoke-static {p0}, Le/a/p5/s0/g;->Y(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    const-string v2, "notificationManager.activeNotifications"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, v1, v5

    const-string v7, "it"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    sget v8, Lcom/truecaller/voip/R$id;->voip_service_foreground_notification:I

    if-ne v7, v8, :cond_1

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_5

    .line 26
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->h:Le/a/d/q/v;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/d/q/v;->d()V

    .line 27
    invoke-virtual {p0}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->t()V

    goto :goto_3

    :cond_4
    const-string v0, "callConnectionManager"

    .line 28
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_5
    :goto_3
    return-void

    :cond_6
    const-string v0, "notificationFactory"

    .line 29
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application class does not implement "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Le/a/h4/q/g;

    invoke-static {v2, v1}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->l:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Le/a/d/b/a/b;

    invoke-virtual {v0}, Le/a/d/b/a/b;->c()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/a;->a()V

    .line 4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "callNotification"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "presenter"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_1

    const-string v4, "com.truecaller.voip.extra.EXTRA_NUMBER"

    .line 2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_1

    :cond_1
    move-object v8, v2

    :goto_1
    if-eqz v1, :cond_2

    const-string v4, "com.truecaller.voip.extra.EXTRA_USER_ID"

    .line 3
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/truecaller/voip/VoipUser;

    move-object v10, v4

    goto :goto_2

    :cond_2
    move-object v10, v2

    :goto_2
    if-eqz v1, :cond_3

    const-string v4, "com.truecaller.voip.extra.EXTRA_CHANNEL_ID"

    .line 4
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_3

    :cond_3
    move-object v9, v2

    :goto_3
    const/4 v4, 0x0

    if-eqz v1, :cond_5

    const-string v5, "com.truecaller.voip.extra.EXTRA_ENCRYPTED"

    .line 5
    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v1

    goto :goto_4

    :cond_4
    move-object v6, v2

    :goto_4
    if-eqz v6, :cond_5

    invoke-virtual {v6, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v11, v5

    goto :goto_5

    :cond_5
    move-object v11, v2

    :goto_5
    if-eqz v1, :cond_6

    const-string v5, "com.truecaller.voip.incoming.EXTRA_FROM_MISSED_CALL"

    .line 6
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move v7, v1

    goto :goto_6

    :cond_6
    move v7, v4

    .line 7
    :goto_6
    iget-object v1, v0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    const-string v4, "presenter"

    if-eqz v1, :cond_f

    move-object v5, v1

    check-cast v5, Le/a/u2/a/b;

    .line 8
    iput-object v0, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v3, :cond_8

    if-eqz v1, :cond_7

    .line 9
    check-cast v1, Le/a/d/b/a/b;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v15, Le/a/d/b/a/n;

    const/4 v12, 0x0

    move-object v5, v15

    move-object v6, v1

    invoke-direct/range {v5 .. v12}, Le/a/d/b/a/n;-><init>(Le/a/d/b/a/b;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipUser;Ljava/lang/Boolean;Ls1/w/d;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object v12, v1

    invoke-static/range {v12 .. v17}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_8

    .line 12
    :cond_7
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_8
    if-eqz v1, :cond_e

    .line 13
    check-cast v1, Le/a/d/b/a/b;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "action"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, -0x7a4fbf65

    if-eq v2, v4, :cond_b

    const v4, -0x64f57123

    if-eq v2, v4, :cond_a

    const v4, 0x52e394c1

    if-eq v2, v4, :cond_9

    goto :goto_8

    :cond_9
    const-string v2, "com.truecaller.voip.incoming.ACTION_HANG_UP"

    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 17
    iget-object v2, v1, Le/a/d/b/a/b;->E:Le/a/d/c0/f0;

    sget-object v3, Lcom/truecaller/voip/util/VoipAnalyticsContext;->NOTIFICATION:Lcom/truecaller/voip/util/VoipAnalyticsContext;

    invoke-virtual {v3}, Lcom/truecaller/voip/util/VoipAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;->HANG_UP:Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;

    invoke-interface {v2, v3, v4}, Le/a/d/c0/f0;->l(Ljava/lang/String;Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;)V

    .line 18
    invoke-virtual {v1}, Le/a/d/b/a/b;->Yj()V

    .line 19
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/g;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Le/a/d/b/a/g;->a()V

    goto :goto_8

    :cond_a
    const-string v2, "com.truecaller.voip.incoming.ACTION_TOGGLE_MUTE"

    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 21
    invoke-virtual {v1}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v2

    .line 22
    iget-boolean v2, v2, Le/a/d/x/p;->b:Z

    xor-int/lit8 v2, v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Le/a/d/b/a/b;->Zj(Z)V

    goto :goto_8

    :cond_b
    const-string v2, "com.truecaller.voip.incoming.ACTION_TOGGLE_SPEAKER"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 25
    invoke-virtual {v1}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v2

    .line 26
    iget-object v2, v2, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    .line 27
    iget-object v2, v2, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 28
    instance-of v2, v2, Le/a/d/c0/x1/a$c;

    if-eqz v2, :cond_c

    .line 29
    sget-object v2, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    goto :goto_7

    .line 30
    :cond_c
    sget-object v2, Le/a/d/c0/x1/a$c;->a:Le/a/d/c0/x1/a$c;

    .line 31
    :goto_7
    iget-object v3, v1, Le/a/d/b/a/b;->C:Le/a/d/c0/x1/e;

    iget-object v1, v1, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    invoke-interface {v3, v2, v1}, Le/a/d/c0/x1/e;->j(Le/a/d/c0/x1/a;Le/a/d/x/l;)V

    :cond_d
    :goto_8
    const/4 v1, 0x2

    return v1

    .line 32
    :cond_e
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_f
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public p3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public q3()V
    .locals 5

    .line 1
    sget v0, Lcom/truecaller/voip/R$string;->voip_error_already_in_another_call:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget v3, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public r3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->j:Le/a/g4/a/d/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Le/a/g4/a/a;->p(Landroid/app/Service;Z)V

    return-void

    :cond_0
    const-string v0, "callNotification"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public s3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
