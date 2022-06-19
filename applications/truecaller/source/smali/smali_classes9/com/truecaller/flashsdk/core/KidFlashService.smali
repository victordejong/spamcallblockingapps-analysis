.class public final Lcom/truecaller/flashsdk/core/KidFlashService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00db\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001t\u0018\u00002\u00020\u00012\u00020\u0002B\u0008\u00a2\u0006\u0005\u0008\u009c\u0001\u0010\tJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0003H\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u0007J\u000f\u0010\u000c\u001a\u00020\u0005H\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\tJ\u000f\u0010\r\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\r\u0010\tJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J1\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\tJ\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0011J\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008!\u0010\u0011J\'\u0010$\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008&\u0010\tJ\'\u0010,\u001a\u00020)2\u0006\u0010(\u001a\u00020\'2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020)H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008.\u0010\tJ\u0017\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020)H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0019\u00103\u001a\u0004\u0018\u0001022\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u00083\u00104R\u0018\u00107\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u00106R\"\u0010>\u001a\u0002088\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010@R\"\u0010H\u001a\u00020B8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008:\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\"\u0010P\u001a\u00020I8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u0016\u0010R\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010QR\u0018\u0010U\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010TR\"\u0010X\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000e0V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010WR\u0016\u0010[\u001a\u00020Y8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010ZR\u0016\u0010^\u001a\u00020\'8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0016\u0010_\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010QR\"\u0010g\u001a\u00020`8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u0016\u0010\n\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010QR\"\u0010o\u001a\u00020i8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010j\u001a\u0004\u0008k\u0010l\"\u0004\u0008m\u0010nR\u0016\u0010q\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010pR\u0016\u0010s\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010]R\u0016\u0010w\u001a\u00020t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0016\u0010z\u001a\u00020x8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010yR,\u0010\u0083\u0001\u001a\u00020{8\u0006@\u0006X\u0087.\u00a2\u0006\u001b\n\u0004\u0008|\u0010}\u0012\u0005\u0008\u0082\u0001\u0010\t\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u0089\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010]R\u0017\u0010\u008a\u0001\u001a\u00020{8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008a\u0010\u007fR)\u0010\u0091\u0001\u001a\u00030\u008b\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0017\n\u0005\u0008$\u0010\u008c\u0001\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001\"\u0006\u0008\u008f\u0001\u0010\u0090\u0001R)\u0010\u0098\u0001\u001a\u00030\u0092\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0017\n\u0005\u0008\u0012\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u001b\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0099\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001b\u0010\u009a\u0001\u00a8\u0006\u009d\u0001"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/core/KidFlashService;",
        "Landroid/app/Service;",
        "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
        "",
        "duck",
        "Ls1/s;",
        "g",
        "(Z)V",
        "n",
        "()V",
        "isPhoneIdle",
        "k",
        "p",
        "o",
        "Lcom/truecaller/flashsdk/models/QueuedFlash;",
        "flash",
        "i",
        "(Lcom/truecaller/flashsdk/models/QueuedFlash;)V",
        "b",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "title",
        "content",
        "m",
        "(Lcom/truecaller/flashsdk/models/QueuedFlash;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V",
        "q",
        "l",
        "Landroid/content/Context;",
        "context",
        "Ln3/k/a/q;",
        "c",
        "(Landroid/content/Context;)Ln3/k/a/q;",
        "j",
        "action",
        "flashActionName",
        "h",
        "(Lcom/truecaller/flashsdk/models/QueuedFlash;Ljava/lang/String;Ljava/lang/String;)V",
        "onCreate",
        "Landroid/content/Intent;",
        "intent",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "onDestroy",
        "focusChange",
        "onAudioFocusChange",
        "(I)V",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "Lq3/a/p1;",
        "Lq3/a/p1;",
        "job",
        "Le/a/y/b/c;",
        "Le/a/y/b/c;",
        "d",
        "()Le/a/y/b/c;",
        "setContactUtils",
        "(Le/a/y/b/c;)V",
        "contactUtils",
        "Landroid/media/MediaPlayer;",
        "Landroid/media/MediaPlayer;",
        "mediaPlayer",
        "Le/a/y/b/f;",
        "Le/a/y/b/f;",
        "getDeviceUtils",
        "()Le/a/y/b/f;",
        "setDeviceUtils",
        "(Le/a/y/b/f;)V",
        "deviceUtils",
        "Le/a/y/b/g0;",
        "e",
        "Le/a/y/b/g0;",
        "getResourceProvider",
        "()Le/a/y/b/g0;",
        "setResourceProvider",
        "(Le/a/y/b/g0;)V",
        "resourceProvider",
        "Z",
        "isMediaPlayerInitialised",
        "Landroid/os/Vibrator;",
        "Landroid/os/Vibrator;",
        "vibrator",
        "",
        "Ljava/util/Map;",
        "flashMap",
        "Landroid/content/IntentFilter;",
        "Landroid/content/IntentFilter;",
        "activityFilter",
        "t",
        "Landroid/content/Intent;",
        "flashReceivedIntent",
        "isFlashActive",
        "Le/a/y/h/a;",
        "f",
        "Le/a/y/h/a;",
        "getFlashNotificationManager",
        "()Le/a/y/h/a;",
        "setFlashNotificationManager",
        "(Le/a/y/h/a;)V",
        "flashNotificationManager",
        "v",
        "Le/a/y/b/w;",
        "Le/a/y/b/w;",
        "getPreferenceUtil",
        "()Le/a/y/b/w;",
        "setPreferenceUtil",
        "(Le/a/y/b/w;)V",
        "preferenceUtil",
        "I",
        "mediaVolume",
        "r",
        "progressIntent",
        "com/truecaller/flashsdk/core/KidFlashService$a",
        "w",
        "Lcom/truecaller/flashsdk/core/KidFlashService$a;",
        "activityReceiver",
        "Le/a/h4/n;",
        "()Le/a/h4/n;",
        "notificationManager",
        "Ls1/w/f;",
        "a",
        "Ls1/w/f;",
        "getUiContext",
        "()Ls1/w/f;",
        "setUiContext",
        "(Ls1/w/f;)V",
        "getUiContext$annotations",
        "uiContext",
        "Landroid/media/AudioFocusRequest;",
        "u",
        "Landroid/media/AudioFocusRequest;",
        "audioFocusRequest",
        "s",
        "finishIntent",
        "parentCoroutineContext",
        "Le/a/y/c/b;",
        "Le/a/y/c/b;",
        "getFlashManager",
        "()Le/a/y/c/b;",
        "setFlashManager",
        "(Le/a/y/c/b;)V",
        "flashManager",
        "Landroid/media/AudioManager;",
        "Landroid/media/AudioManager;",
        "getAudioManager",
        "()Landroid/media/AudioManager;",
        "setAudioManager",
        "(Landroid/media/AudioManager;)V",
        "audioManager",
        "Ljava/util/Timer;",
        "Ljava/util/Timer;",
        "incomingTimer",
        "<init>",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic x:I


# instance fields
.field public a:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Landroid/media/AudioManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/y/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/y/b/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/y/b/g0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/y/h/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/y/b/w;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/y/c/b;

.field public i:Landroid/media/MediaPlayer;

.field public j:Landroid/os/Vibrator;

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/flashsdk/models/QueuedFlash;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Timer;

.field public m:Z

.field public n:Z

.field public o:Lq3/a/p1;

.field public p:I

.field public final q:Landroid/content/IntentFilter;

.field public r:Landroid/content/Intent;

.field public final s:Landroid/content/Intent;

.field public final t:Landroid/content/Intent;

.field public u:Landroid/media/AudioFocusRequest;

.field public v:Z

.field public final w:Lcom/truecaller/flashsdk/core/KidFlashService$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->q:Landroid/content/IntentFilter;

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "type_publish_progress"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->r:Landroid/content/Intent;

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "type_flash_timer_expired"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->s:Landroid/content/Intent;

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "type_flash_received"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->t:Landroid/content/Intent;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->v:Z

    .line 8
    new-instance v0, Lcom/truecaller/flashsdk/core/KidFlashService$a;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/core/KidFlashService$a;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->w:Lcom/truecaller/flashsdk/core/KidFlashService$a;

    return-void
.end method

.method public static a(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/Flash;II)Lq3/a/n0;
    .locals 6

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget p2, Lcom/truecaller/flashsdk/R$drawable;->ic_notification_avatar:I

    .line 2
    :cond_0
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->f()Ls1/w/f;

    move-result-object p3

    .line 3
    sget-object v1, Lq3/a/t0;->d:Lq3/a/g0;

    .line 4
    invoke-interface {p3, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Le/a/y/c/r;

    const/4 p3, 0x0

    invoke-direct {v3, p0, p1, p2, p3}, Le/a/y/c/r;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/Flash;ILs1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/truecaller/flashsdk/models/QueuedFlash;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->q()V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->p()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void
.end method

.method public final c(Landroid/content/Context;)Ln3/k/a/q;
    .locals 3

    .line 1
    new-instance v0, Ln3/k/a/q;

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->e()Le/a/h4/n;

    move-result-object v1

    const-string v2, "flash"

    invoke-interface {v1, v2}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Le/a/y/b/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->c:Le/a/y/b/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "contactUtils"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e()Le/a/h4/n;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Le/a/h4/q/g;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/h4/q/g;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v0

    return-object v0

    :cond_1
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

.method public final f()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->a:Ls1/w/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "uiContext"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->m:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x3e4ccccd    # 0.2f

    .line 3
    iget v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->p:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->p:I

    int-to-float v1, p1

    .line 4
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    return-void
.end method

.method public final h(Lcom/truecaller/flashsdk/models/QueuedFlash;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_7

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->d:Le/a/y/b/f;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Le/a/y/b/f;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->c:Le/a/y/b/c;

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Le/a/y/b/c;->a(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_2
    const-string p1, "contactUtils"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 6
    :cond_3
    :goto_2
    iget-object v2, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v3, "flash.payload"

    .line 7
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v2, p1, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    const-string v3, "flashMessageId"

    .line 9
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v2, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v4

    :goto_3
    const-string v3, "flashSenderId"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    const-string v2, "flashThreadId"

    .line 13
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "flashFromPhonebook"

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "FlashMissed"

    .line 15
    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "flashMissed"

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "flashActionName"

    .line 17
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->h:Le/a/y/c/b;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2, v0}, Le/a/y/c/b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_5
    const-string p1, "flashManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string p1, "deviceUtils"

    .line 19
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_7
    :goto_4
    return-void
.end method

.method public final i(Lcom/truecaller/flashsdk/models/QueuedFlash;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v0, "flash.sender"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const p1, 0x3b9aca00

    int-to-long v2, p1

    rem-long/2addr v0, v2

    long-to-int p1, v0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->e()Le/a/h4/n;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/h4/n;->f(I)V

    return-void
.end method

.method public final j(Lcom/truecaller/flashsdk/models/QueuedFlash;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->h:Le/a/y/c/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/y/c/b;->z()Le/a/y/c/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/y/c/i;->k(Lcom/truecaller/flashsdk/models/Flash;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "flashManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final k(Z)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 1
    fill-array-data v0, :array_0

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->d:Le/a/y/b/f;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Le/a/y/b/f;->f()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->j:Landroid/os/Vibrator;

    if-eqz p1, :cond_3

    invoke-static {v0, v3}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->j:Landroid/os/Vibrator;

    if-eqz p1, :cond_3

    invoke-static {v0, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->j:Landroid/os/Vibrator;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->j:Landroid/os/Vibrator;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string p1, "deviceUtils"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :array_0
    .array-data 8
        0x0
        0x64
        0x3e8
    .end array-data
.end method

.method public final l(Lcom/truecaller/flashsdk/models/QueuedFlash;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->h:Le/a/y/c/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v2, "flash.sender"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Le/a/y/c/b;->i(Ljava/lang/String;JLcom/truecaller/flashsdk/models/Flash;)V

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, p1, v0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->xa(Landroid/content/Context;Lcom/truecaller/flashsdk/models/QueuedFlash;Z)Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p1, "flashManager"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final m(Lcom/truecaller/flashsdk/models/QueuedFlash;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v1, "flash.sender"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 3
    iget-boolean v1, p1, Lcom/truecaller/flashsdk/models/QueuedFlash;->k:Z

    .line 4
    invoke-static {p0, p1, v1}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->xa(Landroid/content/Context;Lcom/truecaller/flashsdk/models/QueuedFlash;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0xc000000

    .line 5
    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "flash"

    .line 7
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.truecaller.flashsdk.receiver.ACTION_DISMISS"

    .line 8
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {p0, v0, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->c(Landroid/content/Context;)Ln3/k/a/q;

    move-result-object v2

    .line 11
    sget v3, Lcom/truecaller/flashsdk/R$drawable;->ic_stat_flash:I

    .line 12
    iget-object v4, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v3, v4, Landroid/app/Notification;->icon:I

    .line 13
    sget v3, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    .line 14
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 15
    invoke-static {p0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 16
    iput v3, v2, Ln3/k/a/q;->D:I

    .line 17
    invoke-virtual {v2, p3}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 18
    invoke-virtual {v2, p4}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/16 p3, 0x10

    const/4 p4, 0x1

    .line 19
    invoke-virtual {v2, p3, p4}, Ln3/k/a/q;->p(IZ)V

    const/high16 p3, -0x10000

    .line 20
    invoke-virtual {v2, p3, p4, p4}, Ln3/k/a/q;->r(III)Ln3/k/a/q;

    .line 21
    iget-object p3, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p1, p3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 22
    iput-object v1, v2, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {v2, p2}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    const-string p1, "createNotificationBuilde\u2026    .setLargeIcon(bitmap)"

    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "notificationBuilder.build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->e()Le/a/h4/n;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    return-void
.end method

.method public final n()V
    .locals 11

    const-string v0, "vibrator"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->j:Landroid/os/Vibrator;

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->b:Landroid/media/AudioManager;

    const-string v1, "audioManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "this.applicationContext"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "vibrate_when_ringing"

    const/4 v6, 0x0

    .line 4
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->v:Z

    invoke-virtual {p0, v0}, Lcom/truecaller/flashsdk/core/KidFlashService;->k(Z)V

    .line 6
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->v:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/y/c/b;->d()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 9
    :goto_0
    iget-object v5, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->d:Le/a/y/b/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "deviceUtils"

    if-eqz v5, :cond_e

    :try_start_1
    invoke-interface {v5}, Le/a/y/b/f;->f()Z

    move-result v5

    const/4 v8, 0x3

    const/16 v9, 0xa

    if-eqz v5, :cond_4

    .line 10
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 11
    invoke-virtual {v5, v9}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 12
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    .line 14
    new-instance v10, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v10, v8}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 15
    invoke-virtual {v10, v5}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v6}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v5

    .line 17
    invoke-virtual {v5, v6}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v5

    .line 18
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v5, p0, v8}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v5

    .line 20
    iput-object v5, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->u:Landroid/media/AudioFocusRequest;

    .line 21
    iget-object v8, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->b:Landroid/media/AudioManager;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    throw v2

    .line 22
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->b:Landroid/media/AudioManager;

    if-eqz v5, :cond_d

    invoke-virtual {v5, p0, v8, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v5

    .line 23
    :goto_1
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->i:Landroid/media/MediaPlayer;

    .line 24
    iget-object v8, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->b:Landroid/media/AudioManager;

    if-eqz v8, :cond_c

    invoke-virtual {v8, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->p:I

    if-eqz v1, :cond_10

    if-ne v5, v3, :cond_10

    .line 25
    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->i:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->d:Le/a/y/b/f;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Le/a/y/b/f;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 28
    invoke-virtual {v0, v9}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->i:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    goto :goto_2

    .line 32
    :cond_6
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 33
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 34
    :cond_8
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 35
    :cond_9
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 36
    :cond_a
    iput-boolean v3, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->m:Z

    goto :goto_3

    .line 37
    :cond_b
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    throw v2

    .line 38
    :cond_c
    :try_start_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    throw v2

    .line 39
    :cond_d
    :try_start_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    throw v2

    .line 40
    :cond_e
    :try_start_5
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    throw v2

    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lcom/truecaller/log/UnmutedException$f;

    const-string v2, "Error while Ringing Flash: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 42
    :cond_f
    iget-boolean v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->v:Z

    invoke-virtual {p0, v0}, Lcom/truecaller/flashsdk/core/KidFlashService;->k(Z)V

    :cond_10
    :goto_3
    return-void

    .line 43
    :cond_11
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final o()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->q()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->l:Ljava/util/Timer;

    .line 3
    new-instance v2, Lcom/truecaller/flashsdk/core/KidFlashService$c;

    invoke-direct {v2, p0}, Lcom/truecaller/flashsdk/core/KidFlashService$c;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;)V

    .line 4
    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->l:Ljava/util/Timer;

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->m:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/truecaller/flashsdk/core/KidFlashService;->g(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/truecaller/flashsdk/core/KidFlashService;->g(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Le/a/y/c/c;->b:Le/a/y/c/c;

    invoke-static {}, Le/a/y/c/c;->a()Le/a/y/c/x/a/a;

    move-result-object v0

    .line 3
    new-instance v1, Le/a/y/c/u;

    invoke-direct {v1, p0}, Le/a/y/c/u;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;)V

    invoke-interface {v0, v1}, Le/a/y/c/x/a/a;->f(Le/a/y/c/u;)Le/a/y/c/x/a/d;

    move-result-object v0

    .line 4
    check-cast v0, Le/a/y/c/x/a/b$e;

    .line 5
    iget-object v1, v0, Le/a/y/c/x/a/b$e;->a:Le/a/y/c/x/a/b;

    .line 6
    iget-object v1, v1, Le/a/y/c/x/a/b;->a:Le/a/b0/c;

    .line 7
    invoke-interface {v1}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 8
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->a:Ls1/w/f;

    .line 10
    iget-object v1, v0, Le/a/y/c/x/a/b$e;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 11
    iput-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->b:Landroid/media/AudioManager;

    .line 12
    iget-object v1, v0, Le/a/y/c/x/a/b$e;->a:Le/a/y/c/x/a/b;

    .line 13
    iget-object v1, v1, Le/a/y/c/x/a/b;->m:Ljavax/inject/Provider;

    .line 14
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/b/c;

    .line 15
    iput-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->c:Le/a/y/b/c;

    .line 16
    iget-object v1, v0, Le/a/y/c/x/a/b$e;->a:Le/a/y/c/x/a/b;

    .line 17
    iget-object v1, v1, Le/a/y/c/x/a/b;->l:Ljavax/inject/Provider;

    .line 18
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/b/f;

    .line 19
    iput-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->d:Le/a/y/b/f;

    .line 20
    iget-object v1, v0, Le/a/y/c/x/a/b$e;->a:Le/a/y/c/x/a/b;

    .line 21
    iget-object v1, v1, Le/a/y/c/x/a/b;->k:Ljavax/inject/Provider;

    .line 22
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/b/g0;

    .line 23
    iput-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->e:Le/a/y/b/g0;

    .line 24
    iget-object v1, v0, Le/a/y/c/x/a/b$e;->a:Le/a/y/c/x/a/b;

    .line 25
    iget-object v1, v1, Le/a/y/c/x/a/b;->F:Ljavax/inject/Provider;

    .line 26
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/h/a;

    .line 27
    iput-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->f:Le/a/y/h/a;

    .line 28
    iget-object v0, v0, Le/a/y/c/x/a/b$e;->a:Le/a/y/c/x/a/b;

    .line 29
    iget-object v0, v0, Le/a/y/c/x/a/b;->g:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    .line 31
    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->g:Le/a/y/b/w;

    .line 32
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->h:Le/a/y/c/b;

    .line 33
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->q:Landroid/content/IntentFilter;

    const-string v1, "type_stop_progress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->q:Landroid/content/IntentFilter;

    const-string v1, "type_flash_replied"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->q:Landroid/content/IntentFilter;

    const-string v1, "type_stop_ringer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->q:Landroid/content/IntentFilter;

    const-string v1, "type_flash_minimized"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->q:Landroid/content/IntentFilter;

    const-string v1, "type_flash_active"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->w:Lcom/truecaller/flashsdk/core/KidFlashService$a;

    iget-object v2, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->q:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->o:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->w:Lcom/truecaller/flashsdk/core/KidFlashService$a;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->q()V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->p()V

    .line 6
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const-string p2, "intent"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "extra_flash"

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x2

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/models/Flash;

    if-eqz p1, :cond_7

    .line 4
    new-instance p3, Lcom/truecaller/flashsdk/models/QueuedFlash;

    invoke-direct {p3}, Lcom/truecaller/flashsdk/models/QueuedFlash;-><init>()V

    .line 5
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    iput-object v1, p3, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 6
    iget-wide v1, p1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    iput-wide v1, p3, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 7
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    iput-object v1, p3, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    .line 8
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    iput-object v1, p3, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 9
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    iput-object v1, p3, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    .line 10
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    iput-object v1, p3, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 11
    iget-wide v1, p1, Lcom/truecaller/flashsdk/models/Flash;->g:J

    iput-wide v1, p3, Lcom/truecaller/flashsdk/models/Flash;->g:J

    .line 12
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    iput-object v1, p3, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->h:Le/a/y/c/b;

    const-string v2, "flashManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Le/a/y/c/b;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->h:Le/a/y/c/b;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/y/c/b;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v2, "flash.payload"

    .line 15
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flash.payload.type"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "call_me_back"

    .line 16
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 18
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->g:Le/a/y/b/w;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Le/a/y/b/w;->j()V

    const-string v1, "phone"

    .line 19
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 20
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->v:Z

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    .line 22
    iget-object v2, p3, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    const-string v4, "flash.instanceId"

    .line 23
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 24
    new-instance v2, Lcom/truecaller/log/UnmutedException$f;

    const-string v4, "Error while adding Flash to the queue "

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 25
    :goto_2
    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->t:Landroid/content/Intent;

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p2

    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->t:Landroid/content/Intent;

    invoke-virtual {p2, v1}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    .line 27
    sget-object v4, Lq3/a/h1;->a:Lq3/a/h1;

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/core/KidFlashService;->f()Ls1/w/f;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/truecaller/flashsdk/core/KidFlashService$b;

    invoke-direct {v7, p0, p3, p1, v3}, Lcom/truecaller/flashsdk/core/KidFlashService$b;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Lcom/truecaller/flashsdk/models/Flash;Ls1/w/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->o:Lq3/a/p1;

    :cond_4
    return v0

    :cond_5
    const-string p1, "preferenceUtil"

    .line 28
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 29
    :cond_6
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_7
    return v0
.end method

.method public final p()V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->u:Landroid/media/AudioFocusRequest;

    .line 5
    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->d:Le/a/y/b/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Le/a/y/b/f;->f()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "audioManager"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->b:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    throw v2

    .line 7
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->j:Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    throw v2

    :cond_5
    :try_start_3
    const-string v0, "deviceUtils"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    throw v2

    :catch_0
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->m:Z

    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->l:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService;->l:Ljava/util/Timer;

    return-void
.end method
