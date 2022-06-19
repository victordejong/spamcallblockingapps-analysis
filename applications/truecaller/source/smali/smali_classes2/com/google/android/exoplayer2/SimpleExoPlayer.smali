.class public Lcom/google/android/exoplayer2/SimpleExoPlayer;
.super Le/m/a/c/t;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/c0;
.implements Le/m/a/c/q0$a;
.implements Le/m/a/c/q0$e;
.implements Le/m/a/c/q0$d;
.implements Le/m/a/c/q0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleExoPlayer$c;,
        Lcom/google/android/exoplayer2/SimpleExoPlayer$b;,
        Lcom/google/android/exoplayer2/SimpleExoPlayer$d;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private final analyticsCollector:Le/m/a/c/b1/a;

.field private audioAttributes:Le/m/a/c/c1/i;

.field private final audioBecomingNoisyManager:Le/m/a/c/r;

.field private final audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Le/m/a/c/c1/m;",
            ">;"
        }
    .end annotation
.end field

.field private audioDecoderCounters:Le/m/a/c/e1/d;

.field private final audioFocusManager:Le/m/a/c/s;

.field private audioFormat:Lcom/google/android/exoplayer2/Format;

.field private final audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Le/m/a/c/c1/k;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private audioVolume:F

.field private final bandwidthMeter:Le/m/a/c/p1/f;

.field private cameraMotionListener:Le/m/a/c/r1/t/a;

.field private final componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$c;

.field private currentCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/c/m1/b;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Landroid/os/Handler;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private isPriorityTaskManagerRegistered:Z

.field private mediaSource:Le/m/a/c/l1/p;

.field private final metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Le/m/a/c/i1/e;",
            ">;"
        }
    .end annotation
.end field

.field private ownsSurface:Z

.field private final player:Le/m/a/c/d0;

.field private playerReleased:Z

.field private priorityTaskManager:Le/m/a/c/q1/v;

.field public final renderers:[Le/m/a/c/u0;

.field private surface:Landroid/view/Surface;

.field private surfaceHeight:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceWidth:I

.field private final textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Le/m/a/c/m1/k;",
            ">;"
        }
    .end annotation
.end field

.field private textureView:Landroid/view/TextureView;

.field private final videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Le/m/a/c/r1/s;",
            ">;"
        }
    .end annotation
.end field

.field private videoDecoderCounters:Le/m/a/c/e1/d;

.field private videoDecoderOutputBufferRenderer:Le/m/a/c/r1/m;

.field private videoFormat:Lcom/google/android/exoplayer2/Format;

.field private videoFrameMetadataListener:Le/m/a/c/r1/o;

.field private final videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Le/m/a/c/r1/r;",
            ">;"
        }
    .end annotation
.end field

.field private videoScalingMode:I

.field private final wakeLockManager:Le/m/a/c/z0;

.field private final wifiLockManager:Le/m/a/c/a1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/c/w0;Le/m/a/c/n1/h;Le/m/a/c/i0;Le/m/a/c/f1/e;Le/m/a/c/p1/f;Le/m/a/c/b1/a;Le/m/a/c/q1/f;Landroid/os/Looper;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/m/a/c/w0;",
            "Le/m/a/c/n1/h;",
            "Le/m/a/c/i0;",
            "Le/m/a/c/f1/e<",
            "Le/m/a/c/f1/h;",
            ">;",
            "Le/m/a/c/p1/f;",
            "Le/m/a/c/b1/a;",
            "Le/m/a/c/q1/f;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 3
    invoke-direct/range {p0 .. p0}, Le/m/a/c/t;-><init>()V

    .line 4
    iput-object v10, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->bandwidthMeter:Le/m/a/c/p1/f;

    .line 5
    iput-object v11, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    .line 6
    new-instance v9, Lcom/google/android/exoplayer2/SimpleExoPlayer$c;

    const/4 v8, 0x0

    invoke-direct {v9, v0, v8}, Lcom/google/android/exoplayer2/SimpleExoPlayer$c;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer$a;)V

    iput-object v9, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$c;

    .line 7
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v7, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v6, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v5, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    new-instance v3, Landroid/os/Handler;

    move-object/from16 v15, p9

    invoke-direct {v3, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    .line 14
    move-object/from16 v14, p2

    check-cast v14, Le/m/a/c/a0;

    .line 15
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_0

    move-object/from16 v23, v8

    goto :goto_0

    :cond_0
    move-object/from16 v23, v2

    .line 16
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v12, v14, Le/m/a/c/a0;->a:Landroid/content/Context;

    sget-object v24, Le/m/a/c/h1/g;->a:Le/m/a/c/h1/g;

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 18
    new-instance v8, Le/m/a/c/r1/k;

    const/16 v22, 0x32

    const-wide/16 v16, 0x1388

    move-object/from16 v20, v12

    move-object v12, v8

    move-object/from16 v25, v13

    move-object/from16 v13, v20

    move-object/from16 v26, v4

    move-object v4, v14

    move-object/from16 v14, v24

    move-wide/from16 v15, v16

    move-object/from16 v17, v23

    move-object/from16 v20, v3

    move-object/from16 v21, v9

    invoke-direct/range {v12 .. v22}, Le/m/a/c/r1/k;-><init>(Landroid/content/Context;Le/m/a/c/h1/g;JLe/m/a/c/f1/e;ZZLandroid/os/Handler;Le/m/a/c/r1/s;I)V

    move-object/from16 v15, v25

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v13, v4, Le/m/a/c/a0;->a:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v8, 0x0

    new-array v4, v8, [Le/m/a/c/c1/l;

    .line 20
    new-instance v14, Le/m/a/c/c1/w;

    new-instance v12, Le/m/a/c/c1/t;

    .line 21
    sget-object v18, Le/m/a/c/c1/j;->c:Le/m/a/c/c1/j;

    .line 22
    new-instance v8, Landroid/content/IntentFilter;

    move-object/from16 v21, v5

    const-string v5, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v8, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 23
    invoke-virtual {v13, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v8

    .line 24
    sget v5, Le/m/a/c/q1/d0;->a:I

    move-object/from16 v22, v6

    const/16 v6, 0x11

    const/4 v1, 0x1

    if-lt v5, v6, :cond_1

    sget-object v5, Le/m/a/c/q1/d0;->c:Ljava/lang/String;

    const-string v6, "Amazon"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 25
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "external_surround_sound_enabled"

    move-object/from16 v25, v7

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 26
    sget-object v5, Le/m/a/c/c1/j;->d:Le/m/a/c/c1/j;

    goto :goto_3

    :cond_2
    move-object/from16 v25, v7

    const/4 v7, 0x0

    :cond_3
    if-eqz v8, :cond_5

    const-string v5, "android.media.extra.AUDIO_PLUG_STATE"

    .line 27
    invoke-virtual {v8, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 28
    :cond_4
    new-instance v5, Le/m/a/c/c1/j;

    const-string v6, "android.media.extra.ENCODINGS"

    .line 29
    invoke-virtual {v8, v6}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    const/16 v7, 0x8

    const-string v1, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 30
    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v5, v6, v1}, Le/m/a/c/c1/j;-><init>([II)V

    goto :goto_3

    .line 31
    :cond_5
    :goto_2
    sget-object v5, Le/m/a/c/c1/j;->c:Le/m/a/c/c1/j;

    .line 32
    :goto_3
    invoke-direct {v12, v5, v4}, Le/m/a/c/c1/t;-><init>(Le/m/a/c/c1/j;[Le/m/a/c/c1/l;)V

    move-object v1, v12

    move-object v12, v14

    move-object v4, v14

    move-object/from16 v14, v24

    move-object v5, v15

    move-object/from16 v15, v23

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v20}, Le/m/a/c/c1/w;-><init>(Landroid/content/Context;Le/m/a/c/h1/g;Le/m/a/c/f1/e;ZZLandroid/os/Handler;Le/m/a/c/c1/m;Le/m/a/c/c1/n;)V

    .line 33
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 35
    new-instance v4, Le/m/a/c/m1/l;

    invoke-direct {v4, v9, v1}, Le/m/a/c/m1/l;-><init>(Le/m/a/c/m1/k;Landroid/os/Looper;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 37
    new-instance v4, Le/m/a/c/i1/f;

    invoke-direct {v4, v9, v1}, Le/m/a/c/i1/f;-><init>(Le/m/a/c/i1/e;Landroid/os/Looper;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Le/m/a/c/r1/t/b;

    invoke-direct {v1}, Le/m/a/c/r1/t/b;-><init>()V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v4, v1, [Le/m/a/c/u0;

    .line 39
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Le/m/a/c/u0;

    .line 40
    iput-object v4, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 41
    iput v5, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 42
    iput v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    .line 43
    sget-object v5, Le/m/a/c/c1/i;->f:Le/m/a/c/c1/i;

    iput-object v5, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Le/m/a/c/c1/i;

    const/4 v12, 0x1

    .line 44
    iput v12, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    .line 46
    new-instance v13, Le/m/a/c/d0;

    move-object v14, v3

    move-object v3, v13

    move-object/from16 v15, v26

    move-object/from16 v8, v21

    const/16 v16, 0x0

    move-object/from16 v5, p3

    move-object/from16 v7, v22

    move-object/from16 v6, p4

    move-object v12, v7

    move-object/from16 v1, v25

    move-object/from16 v7, p6

    move-object v2, v8

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v8, p8

    move-object v10, v9

    move-object/from16 v9, p9

    invoke-direct/range {v3 .. v9}, Le/m/a/c/d0;-><init>([Le/m/a/c/u0;Le/m/a/c/n1/h;Le/m/a/c/i0;Le/m/a/c/p1/f;Le/m/a/c/q1/f;Landroid/os/Looper;)V

    iput-object v13, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 47
    iget-object v3, v11, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    if-eqz v3, :cond_7

    iget-object v3, v11, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 48
    iget-object v3, v3, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v8, v16

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v8, 0x1

    .line 50
    :goto_5
    invoke-static {v8}, Ln3/g0/y;->x(Z)V

    .line 51
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object v13, v11, Le/m/a/c/b1/a;->e:Le/m/a/c/q0;

    .line 53
    iget-object v3, v13, Le/m/a/c/d0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Le/m/a/c/t$a;

    invoke-direct {v4, v11}, Le/m/a/c/t$a;-><init>(Le/m/a/c/q0$b;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v13, v10}, Le/m/a/c/d0;->addListener(Le/m/a/c/q0$b;)V

    .line 55
    invoke-virtual {v2, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v1, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v15, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v12, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addMetadataOutput(Le/m/a/c/i1/e;)V

    move-object/from16 v1, p6

    move-object v2, v10

    .line 60
    invoke-interface {v1, v14, v11}, Le/m/a/c/p1/f;->d(Landroid/os/Handler;Le/m/a/c/p1/f$a;)V

    move-object/from16 v1, p5

    .line 61
    instance-of v3, v1, Le/m/a/c/f1/b;

    if-nez v3, :cond_8

    .line 62
    new-instance v1, Le/m/a/c/r;

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v14, v2}, Le/m/a/c/r;-><init>(Landroid/content/Context;Landroid/os/Handler;Le/m/a/c/r$b;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioBecomingNoisyManager:Le/m/a/c/r;

    .line 63
    new-instance v1, Le/m/a/c/s;

    invoke-direct {v1, v3, v14, v2}, Le/m/a/c/s;-><init>(Landroid/content/Context;Landroid/os/Handler;Le/m/a/c/s$b;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Le/m/a/c/s;

    .line 64
    new-instance v1, Le/m/a/c/z0;

    invoke-direct {v1, v3}, Le/m/a/c/z0;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Le/m/a/c/z0;

    .line 65
    new-instance v1, Le/m/a/c/a1;

    invoke-direct {v1, v3}, Le/m/a/c/a1;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Le/m/a/c/a1;

    return-void

    .line 66
    :cond_8
    check-cast v1, Le/m/a/c/f1/b;

    .line 67
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    throw v17
.end method

.method public constructor <init>(Landroid/content/Context;Le/m/a/c/w0;Le/m/a/c/n1/h;Le/m/a/c/i0;Le/m/a/c/p1/f;Le/m/a/c/b1/a;Le/m/a/c/q1/f;Landroid/os/Looper;)V
    .locals 10

    .line 1
    sget-object v5, Le/m/a/c/f1/e;->a:Le/m/a/c/f1/e;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 2
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Landroid/content/Context;Le/m/a/c/w0;Le/m/a/c/n1/h;Le/m/a/c/i0;Le/m/a/c/f1/e;Le/m/a/c/p1/f;Le/m/a/c/b1/a;Le/m/a/c/q1/f;Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic access$1002(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Le/m/a/c/e1/d;)Le/m/a/c/e1/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Le/m/a/c/e1/d;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/google/android/exoplayer2/SimpleExoPlayer;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendVolumeToRenderers()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/google/android/exoplayer2/SimpleExoPlayer;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Le/m/a/c/q1/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Le/m/a/c/q1/v;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    return p0
.end method

.method public static synthetic access$1902(Lcom/google/android/exoplayer2/SimpleExoPlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updateWakeAndWifiLock()V

    return-void
.end method

.method public static synthetic access$302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/google/android/exoplayer2/SimpleExoPlayer;Le/m/a/c/e1/d;)Le/m/a/c/e1/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Le/m/a/c/e1/d;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/android/exoplayer2/SimpleExoPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return p0
.end method

.method public static synthetic access$802(Lcom/google/android/exoplayer2/SimpleExoPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return p1
.end method

.method public static synthetic access$900(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHeight:I

    if-eq p2, v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceWidth:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHeight:I

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/r1/r;

    .line 5
    invoke-interface {v1, p1, p2}, Le/m/a/c/r1/r;->i(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$c;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 4
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$c;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 7
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method private sendVolumeToRenderers()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Le/m/a/c/s;

    .line 2
    iget v1, v1, Le/m/a/c/s;->g:F

    mul-float/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    invoke-interface {v4}, Le/m/a/c/u0;->p()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 5
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v5, v4}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Le/m/a/c/s0;->e(I)Le/m/a/c/s0;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Le/m/a/c/s0;->d(Ljava/lang/Object;)Le/m/a/c/s0;

    invoke-virtual {v4}, Le/m/a/c/s0;->c()Le/m/a/c/s0;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setVideoDecoderOutputBufferRendererInternal(Le/m/a/c/r1/m;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Le/m/a/c/u0;->p()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 4
    invoke-virtual {v4, v3}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object v3

    const/16 v4, 0x8

    .line 5
    invoke-virtual {v3, v4}, Le/m/a/c/s0;->e(I)Le/m/a/c/s0;

    .line 6
    iget-boolean v4, v3, Le/m/a/c/s0;->h:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ln3/g0/y;->x(Z)V

    .line 7
    iput-object p1, v3, Le/m/a/c/s0;->e:Ljava/lang/Object;

    .line 8
    invoke-virtual {v3}, Le/m/a/c/s0;->c()Le/m/a/c/s0;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderOutputBufferRenderer:Le/m/a/c/r1/m;

    return-void
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 3
    invoke-interface {v6}, Le/m/a/c/u0;->p()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 4
    iget-object v7, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 5
    invoke-virtual {v7, v6}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object v6

    invoke-virtual {v6, v5}, Le/m/a/c/s0;->e(I)Le/m/a/c/s0;

    .line 6
    iget-boolean v7, v6, Le/m/a/c/s0;->h:Z

    xor-int/2addr v5, v7

    invoke-static {v5}, Ln3/g0/y;->x(Z)V

    .line 7
    iput-object p1, v6, Le/m/a/c/s0;->e:Ljava/lang/Object;

    .line 8
    invoke-virtual {v6}, Le/m/a/c/s0;->c()Le/m/a/c/s0;

    .line 9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_5

    if-eq v1, p1, :cond_5

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/s0;

    .line 12
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    iget-boolean v2, v1, Le/m/a/c/s0;->h:Z

    invoke-static {v2}, Ln3/g0/y;->x(Z)V

    .line 14
    iget-object v2, v1, Le/m/a/c/s0;->f:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v2, v4, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v2}, Ln3/g0/y;->x(Z)V

    .line 15
    :goto_3
    iget-boolean v2, v1, Le/m/a/c/s0;->j:Z

    if-nez v2, :cond_3

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 17
    :cond_3
    :try_start_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 21
    :cond_5
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 22
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    return-void
.end method

.method private updatePlayWhenReady(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v1, :cond_1

    move v0, v1

    .line 1
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {p2, p1, v0}, Le/m/a/c/d0;->f(ZI)V

    return-void
.end method

.method private updateWakeAndWifiLock()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Le/m/a/c/z0;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    .line 4
    iput-boolean v1, v0, Le/m/a/c/z0;->d:Z

    .line 5
    invoke-virtual {v0}, Le/m/a/c/z0;->b()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Le/m/a/c/a1;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    .line 7
    iput-boolean v1, v0, Le/m/a/c/a1;->d:Z

    .line 8
    invoke-virtual {v0}, Le/m/a/c/a1;->b()V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Le/m/a/c/z0;

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Le/m/a/c/z0;->d:Z

    .line 11
    invoke-virtual {v0}, Le/m/a/c/z0;->b()V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Le/m/a/c/a1;

    .line 13
    iput-boolean v1, v0, Le/m/a/c/a1;->d:Z

    .line 14
    invoke-virtual {v0}, Le/m/a/c/a1;->b()V

    :goto_1
    return-void
.end method

.method private verifyApplicationThread()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v1, "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 3
    invoke-static {v1, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->hasNotifiedFullWrongThreadWarning:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Le/m/a/c/b1/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    .line 3
    iget-object v0, v0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAudioDebugListener(Le/m/a/c/c1/m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAudioListener(Le/m/a/c/c1/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Le/m/a/c/q0$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Le/m/a/c/t$a;

    invoke-direct {v1, p1}, Le/m/a/c/t$a;-><init>(Le/m/a/c/q0$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMetadataOutput(Le/m/a/c/i1/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTextOutput(Le/m/a/c/m1/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    invoke-interface {p1, v0}, Le/m/a/c/m1/k;->j(Ljava/util/List;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoDebugListener(Le/m/a/c/r1/s;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoListener(Le/m/a/c/r1/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 3

    .line 1
    new-instance v0, Le/m/a/c/c1/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/a/c/c1/q;-><init>(IF)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAuxEffectInfo(Le/m/a/c/c1/q;)V

    return-void
.end method

.method public clearCameraMotionListener(Le/m/a/c/r1/t/a;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->cameraMotionListener:Le/m/a/c/r1/t/a;

    if-eq v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 4
    invoke-interface {v2}, Le/m/a/c/u0;->p()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 6
    invoke-virtual {v3, v2}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object v2

    const/4 v3, 0x7

    .line 7
    invoke-virtual {v2, v3}, Le/m/a/c/s0;->e(I)Le/m/a/c/s0;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Le/m/a/c/s0;->d(Ljava/lang/Object;)Le/m/a/c/s0;

    .line 9
    invoke-virtual {v2}, Le/m/a/c/s0;->c()Le/m/a/c/s0;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearMetadataOutput(Le/m/a/c/i1/e;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeMetadataOutput(Le/m/a/c/i1/e;)V

    return-void
.end method

.method public clearTextOutput(Le/m/a/c/m1/k;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeTextOutput(Le/m/a/c/m1/k;)V

    return-void
.end method

.method public clearVideoDecoderOutputBufferRenderer()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoDecoderOutputBufferRendererInternal(Le/m/a/c/r1/m;)V

    return-void
.end method

.method public clearVideoDecoderOutputBufferRenderer(Le/m/a/c/r1/m;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderOutputBufferRenderer:Le/m/a/c/r1/m;

    if-ne p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoDecoderOutputBufferRenderer()V

    :cond_0
    return-void
.end method

.method public clearVideoFrameMetadataListener(Le/m/a/c/r1/o;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFrameMetadataListener:Le/m/a/c/r1/o;

    if-eq v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 4
    invoke-interface {v2}, Le/m/a/c/u0;->p()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 6
    invoke-virtual {v3, v2}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object v2

    const/4 v3, 0x6

    .line 7
    invoke-virtual {v2, v3}, Le/m/a/c/s0;->e(I)Le/m/a/c/s0;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Le/m/a/c/s0;->d(Ljava/lang/Object;)Le/m/a/c/s0;

    .line 9
    invoke-virtual {v2}, Le/m/a/c/s0;->c()Le/m/a/c/s0;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$d;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeVideoListener(Le/m/a/c/r1/r;)V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 4
    invoke-direct {p0, v1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0, p1}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object p1

    return-object p1
.end method

.method public getAnalyticsCollector()Le/m/a/c/b1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    return-object v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0}, Le/m/a/c/d0;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Le/m/a/c/c1/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Le/m/a/c/c1/i;

    return-object v0
.end method

.method public getAudioComponent()Le/m/a/c/q0$a;
    .locals 0

    return-object p0
.end method

.method public getAudioDecoderCounters()Le/m/a/c/e1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Le/m/a/c/e1/d;

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Le/m/a/c/c1/i;

    iget v0, v0, Le/m/a/c/c1/i;->c:I

    invoke-static {v0}, Le/m/a/c/q1/d0;->n(I)I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0}, Le/m/a/c/d0;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0}, Le/m/a/c/d0;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0}, Le/m/a/c/d0;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    invoke-virtual {v0}, Le/m/a/c/d0;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget v0, v0, Le/m/a/c/l1/p$a;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    invoke-virtual {v0}, Le/m/a/c/d0;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->b:Le/m/a/c/l1/p$a;

    iget v0, v0, Le/m/a/c/l1/p$a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0}, Le/m/a/c/d0;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0}, Le/m/a/c/d0;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Le/m/a/c/y0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->a:Le/m/a/c/y0;

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Le/m/a/c/n1/g;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->i:Le/m/a/c/n1/i;

    iget-object v0, v0, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0}, Le/m/a/c/d0;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0}, Le/m/a/c/d0;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadataComponent()Le/m/a/c/q0$c;
    .locals 0

    return-object p0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-boolean v0, v0, Le/m/a/c/d0;->k:Z

    return v0
.end method

.method public getPlaybackError()Le/m/a/c/b0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-object v0, v0, Le/m/a/c/n0;->f:Le/m/a/c/b0;

    return-object v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 2
    iget-object v0, v0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 3
    iget-object v0, v0, Le/m/a/c/e0;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Le/m/a/c/o0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->t:Le/m/a/c/o0;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget v0, v0, Le/m/a/c/n0;->e:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget v0, v0, Le/m/a/c/d0;->l:I

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->b:[Le/m/a/c/u0;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->b:[Le/m/a/c/u0;

    aget-object p1, v0, p1

    invoke-interface {p1}, Le/m/a/c/u0;->p()I

    move-result p1

    return p1
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget v0, v0, Le/m/a/c/d0;->m:I

    return v0
.end method

.method public getSeekParameters()Le/m/a/c/x0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->u:Le/m/a/c/x0;

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-boolean v0, v0, Le/m/a/c/d0;->n:Z

    return v0
.end method

.method public getTextComponent()Le/m/a/c/q0$d;
    .locals 0

    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-wide v0, v0, Le/m/a/c/n0;->l:J

    invoke-static {v0, v1}, Le/m/a/c/v;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoComponent()Le/m/a/c/q0$e;
    .locals 0

    return-object p0
.end method

.method public getVideoDecoderCounters()Le/m/a/c/e1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Le/m/a/c/e1/d;

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    iget-object v0, v0, Le/m/a/c/d0;->v:Le/m/a/c/n0;

    iget-boolean v0, v0, Le/m/a/c/n0;->g:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0}, Le/m/a/c/d0;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public prepare(Le/m/a/c/l1/p;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Le/m/a/c/l1/p;ZZ)V

    return-void
.end method

.method public prepare(Le/m/a/c/l1/p;ZZ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->mediaSource:Le/m/a/c/l1/p;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    invoke-interface {v0, v1}, Le/m/a/c/l1/p;->c(Le/m/a/c/l1/q;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    invoke-virtual {v0}, Le/m/a/c/b1/a;->z()V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->mediaSource:Le/m/a/c/l1/p;

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    invoke-interface {p1, v0, v1}, Le/m/a/c/l1/p;->f(Landroid/os/Handler;Le/m/a/c/l1/q;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Le/m/a/c/s;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Le/m/a/c/s;->d(ZI)I

    move-result v1

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0, p1, p2, p3}, Le/m/a/c/d0;->prepare(Le/m/a/c/l1/p;ZZ)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioBecomingNoisyManager:Le/m/a/c/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/m/a/c/r;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Le/m/a/c/z0;

    .line 4
    iput-boolean v1, v0, Le/m/a/c/z0;->d:Z

    .line 5
    invoke-virtual {v0}, Le/m/a/c/z0;->b()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Le/m/a/c/a1;

    .line 7
    iput-boolean v1, v0, Le/m/a/c/a1;->d:Z

    .line 8
    invoke-virtual {v0}, Le/m/a/c/a1;->b()V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Le/m/a/c/s;

    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Le/m/a/c/s;->c:Le/m/a/c/s$b;

    .line 11
    invoke-virtual {v0}, Le/m/a/c/s;->a()V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0}, Le/m/a/c/d0;->release()V

    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 15
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 17
    :cond_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->mediaSource:Le/m/a/c/l1/p;

    if-eqz v0, :cond_2

    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    invoke-interface {v0, v3}, Le/m/a/c/l1/p;->c(Le/m/a/c/l1/q;)V

    .line 20
    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->mediaSource:Le/m/a/c/l1/p;

    .line 21
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Le/m/a/c/q1/v;

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v0, v1}, Le/m/a/c/q1/v;->b(I)V

    .line 25
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->bandwidthMeter:Le/m/a/c/p1/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    invoke-interface {v0, v1}, Le/m/a/c/p1/f;->f(Le/m/a/c/p1/f$a;)V

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->playerReleased:Z

    return-void
.end method

.method public removeAnalyticsListener(Le/m/a/c/b1/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    .line 3
    iget-object v0, v0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAudioDebugListener(Le/m/a/c/c1/m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAudioListener(Le/m/a/c/c1/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Le/m/a/c/q0$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0, p1}, Le/m/a/c/d0;->removeListener(Le/m/a/c/q0$b;)V

    return-void
.end method

.method public removeMetadataOutput(Le/m/a/c/i1/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTextOutput(Le/m/a/c/m1/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVideoDebugListener(Le/m/a/c/r1/s;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVideoListener(Le/m/a/c/r1/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public retry()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->mediaSource:Le/m/a/c/l1/p;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackError()Le/m/a/c/b0;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->mediaSource:Le/m/a/c/l1/p;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Le/m/a/c/l1/p;ZZ)V

    :cond_1
    return-void
.end method

.method public seekTo(IJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    .line 3
    iget-object v1, v0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 4
    iget-boolean v1, v1, Le/m/a/c/b1/a$b;->h:Z

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Le/m/a/c/b1/a;->w()Le/m/a/c/b1/b$a;

    .line 6
    iget-object v1, v0, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Le/m/a/c/b1/a$b;->h:Z

    .line 8
    iget-object v0, v0, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/b1/b;

    .line 9
    invoke-interface {v1}, Le/m/a/c/b1/b;->h()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0, p1, p2, p3}, Le/m/a/c/d0;->seekTo(IJ)V

    return-void
.end method

.method public setAudioAttributes(Le/m/a/c/c1/i;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioAttributes(Le/m/a/c/c1/i;Z)V

    return-void
.end method

.method public setAudioAttributes(Le/m/a/c/c1/i;Z)V
    .locals 8

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->playerReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Le/m/a/c/c1/i;

    invoke-static {v0, p1}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Le/m/a/c/c1/i;

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 7
    invoke-interface {v6}, Le/m/a/c/u0;->p()I

    move-result v7

    if-ne v7, v3, :cond_1

    .line 8
    iget-object v7, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 9
    invoke-virtual {v7, v6}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object v6

    .line 10
    invoke-virtual {v6, v1}, Le/m/a/c/s0;->e(I)Le/m/a/c/s0;

    .line 11
    iget-boolean v7, v6, Le/m/a/c/s0;->h:Z

    xor-int/2addr v7, v3

    invoke-static {v7}, Ln3/g0/y;->x(Z)V

    .line 12
    iput-object p1, v6, Le/m/a/c/s0;->e:Ljava/lang/Object;

    .line 13
    invoke-virtual {v6}, Le/m/a/c/s0;->c()Le/m/a/c/s0;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/c1/k;

    .line 15
    invoke-interface {v4, p1}, Le/m/a/c/c1/k;->k(Le/m/a/c/c1/i;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Le/m/a/c/s;

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 17
    :goto_2
    iget-object p2, v0, Le/m/a/c/s;->d:Le/m/a/c/c1/i;

    invoke-static {p2, p1}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 18
    iput-object p1, v0, Le/m/a/c/s;->d:Le/m/a/c/c1/i;

    if-nez p1, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    iget p2, p1, Le/m/a/c/c1/i;->c:I

    const/4 v4, 0x2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 20
    :pswitch_1
    sget p1, Le/m/a/c/q1/d0;->a:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_6

    const/4 v1, 0x4

    goto :goto_4

    .line 21
    :pswitch_2
    iget p1, p1, Le/m/a/c/c1/i;->a:I

    if-ne p1, v3, :cond_7

    :cond_6
    :pswitch_3
    move v1, v4

    goto :goto_4

    :pswitch_4
    move v1, v3

    goto :goto_4

    :goto_3
    move v1, v2

    .line 22
    :cond_7
    :goto_4
    :pswitch_5
    iput v1, v0, Le/m/a/c/s;->f:I

    if-eq v1, v3, :cond_8

    if-nez v1, :cond_9

    :cond_8
    move v2, v3

    :cond_9
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 23
    invoke-static {v2, p1}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    .line 24
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    .line 25
    iget-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Le/m/a/c/s;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Le/m/a/c/s;->d(ZI)I

    move-result p2

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAudioDebugListener(Le/m/a/c/c1/m;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAudioDebugListener(Le/m/a/c/c1/m;)V

    :cond_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v0, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    move v9, v4

    goto :goto_1

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0

    :cond_3
    const/4 v5, 0x6

    goto :goto_0

    :cond_4
    const/16 v5, 0xd

    :goto_0
    move v9, v5

    goto :goto_1

    :cond_5
    move v9, v3

    :goto_1
    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_6

    move v7, v3

    goto :goto_2

    :cond_6
    move v7, v2

    goto :goto_2

    :cond_7
    move v7, v4

    .line 2
    :goto_2
    new-instance p1, Le/m/a/c/c1/i;

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Le/m/a/c/c1/i;-><init>(IIIILe/m/a/c/c1/i$a;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioAttributes(Le/m/a/c/c1/i;)V

    return-void
.end method

.method public setAuxEffectInfo(Le/m/a/c/c1/q;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Le/m/a/c/u0;->p()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 5
    invoke-virtual {v4, v3}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object v3

    const/4 v4, 0x5

    .line 6
    invoke-virtual {v3, v4}, Le/m/a/c/s0;->e(I)Le/m/a/c/s0;

    .line 7
    iget-boolean v4, v3, Le/m/a/c/s0;->h:Z

    xor-int/2addr v4, v5

    invoke-static {v4}, Ln3/g0/y;->x(Z)V

    .line 8
    iput-object p1, v3, Le/m/a/c/s0;->e:Ljava/lang/Object;

    .line 9
    invoke-virtual {v3}, Le/m/a/c/s0;->c()Le/m/a/c/s0;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCameraMotionListener(Le/m/a/c/r1/t/a;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->cameraMotionListener:Le/m/a/c/r1/t/a;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-interface {v3}, Le/m/a/c/u0;->p()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 6
    invoke-virtual {v4, v3}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object v3

    const/4 v4, 0x7

    .line 7
    invoke-virtual {v3, v4}, Le/m/a/c/s0;->e(I)Le/m/a/c/s0;

    .line 8
    iget-boolean v4, v3, Le/m/a/c/s0;->h:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ln3/g0/y;->x(Z)V

    .line 9
    iput-object p1, v3, Le/m/a/c/s0;->e:Ljava/lang/Object;

    .line 10
    invoke-virtual {v3}, Le/m/a/c/s0;->c()Le/m/a/c/s0;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 2
    iget-boolean v1, v0, Le/m/a/c/d0;->r:Z

    if-eq v1, p1, :cond_5

    .line 3
    iput-boolean p1, v0, Le/m/a/c/d0;->r:Z

    .line 4
    iget-object v0, v0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, v0, Le/m/a/c/e0;->w:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Le/m/a/c/e0;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0xe

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, v0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    invoke-virtual {p1, v2, v1, v3}, Le/m/a/c/q1/a0;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 9
    iget-object v4, v0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    .line 10
    invoke-virtual {v4, v2, v3, v3, p1}, Le/m/a/c/q1/a0;->b(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 13
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move v3, v1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 14
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_3

    .line 16
    :cond_4
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->playerReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioBecomingNoisyManager:Le/m/a/c/r;

    invoke-virtual {v0, p1}, Le/m/a/c/r;->a(Z)V

    return-void
.end method

.method public setHandleWakeLock(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setWakeMode(I)V

    return-void
.end method

.method public setMetadataOutput(Le/m/a/c/i1/e;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addMetadataOutput(Le/m/a/c/i1/e;)V

    :cond_0
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Le/m/a/c/s;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Le/m/a/c/s;->d(ZI)I

    move-result v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method public setPlaybackParameters(Le/m/a/c/o0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Le/m/a/c/o0;->e:Le/m/a/c/o0;

    .line 5
    :cond_0
    iget-object v1, v0, Le/m/a/c/d0;->t:Le/m/a/c/o0;

    invoke-virtual {v1, p1}, Le/m/a/c/o0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget v1, v0, Le/m/a/c/d0;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Le/m/a/c/d0;->s:I

    .line 7
    iput-object p1, v0, Le/m/a/c/d0;->t:Le/m/a/c/o0;

    .line 8
    iget-object v1, v0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 9
    iget-object v1, v1, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Le/m/a/c/q1/a0;->c(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 10
    new-instance v1, Le/m/a/c/n;

    invoke-direct {v1, p1}, Le/m/a/c/n;-><init>(Le/m/a/c/o0;)V

    invoke-virtual {v0, v1}, Le/m/a/c/d0;->c(Le/m/a/c/t$b;)V

    :goto_0
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 2
    new-instance v0, Le/m/a/c/o0;

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result p1

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, p1, v2}, Le/m/a/c/o0;-><init>(FFZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Le/m/a/c/o0;)V

    return-void
.end method

.method public setPriorityTaskManager(Le/m/a/c/q1/v;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Le/m/a/c/q1/v;

    invoke-static {v0, p1}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Le/m/a/c/q1/v;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1}, Le/m/a/c/q1/v;->b(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1, v1}, Le/m/a/c/q1/v;->a(I)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Le/m/a/c/q1/v;

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0, p1}, Le/m/a/c/d0;->setRepeatMode(I)V

    return-void
.end method

.method public setSeekParameters(Le/m/a/c/x0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Le/m/a/c/x0;->d:Le/m/a/c/x0;

    .line 5
    :cond_0
    iget-object v1, v0, Le/m/a/c/d0;->u:Le/m/a/c/x0;

    invoke-virtual {v1, p1}, Le/m/a/c/x0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iput-object p1, v0, Le/m/a/c/d0;->u:Le/m/a/c/x0;

    .line 7
    iget-object v0, v0, Le/m/a/c/d0;->e:Le/m/a/c/e0;

    .line 8
    iget-object v0, v0, Le/m/a/c/e0;->g:Le/m/a/c/q1/a0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Le/m/a/c/q1/a0;->c(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0, p1}, Le/m/a/c/d0;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setTextOutput(Le/m/a/c/m1/k;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addTextOutput(Le/m/a/c/m1/k;)V

    :cond_0
    return-void
.end method

.method public setVideoDebugListener(Le/m/a/c/r1/s;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoDebugListener(Le/m/a/c/r1/s;)V

    :cond_0
    return-void
.end method

.method public setVideoDecoderOutputBufferRenderer(Le/m/a/c/r1/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoDecoderOutputBufferRendererInternal(Le/m/a/c/r1/m;)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Le/m/a/c/r1/o;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFrameMetadataListener:Le/m/a/c/r1/o;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-interface {v3}, Le/m/a/c/u0;->p()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 6
    invoke-virtual {v4, v3}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object v3

    const/4 v4, 0x6

    .line 7
    invoke-virtual {v3, v4}, Le/m/a/c/s0;->e(I)Le/m/a/c/s0;

    .line 8
    iget-boolean v4, v3, Le/m/a/c/s0;->h:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ln3/g0/y;->x(Z)V

    .line 9
    iput-object p1, v3, Le/m/a/c/s0;->e:Ljava/lang/Object;

    .line 10
    invoke-virtual {v3}, Le/m/a/c/s0;->c()Le/m/a/c/s0;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$d;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoListener(Le/m/a/c/r1/r;)V

    :cond_0
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Le/m/a/c/u0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-interface {v3}, Le/m/a/c/u0;->p()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    .line 6
    invoke-virtual {v4, v3}, Le/m/a/c/d0;->createMessage(Le/m/a/c/s0$b;)Le/m/a/c/s0;

    move-result-object v3

    const/4 v4, 0x4

    .line 7
    invoke-virtual {v3, v4}, Le/m/a/c/s0;->e(I)Le/m/a/c/s0;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/m/a/c/s0;->d(Ljava/lang/Object;)Le/m/a/c/s0;

    .line 9
    invoke-virtual {v3}, Le/m/a/c/s0;->c()Le/m/a/c/s0;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoDecoderOutputBufferRenderer()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 5
    :goto_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoDecoderOutputBufferRenderer()V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 6
    invoke-direct {p0, v1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$c;

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-direct {p0, v2, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 11
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 14
    invoke-direct {p0, v1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoDecoderOutputBufferRenderer()V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 6
    invoke-direct {p0, v2, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v3

    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$c;

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_3

    .line 10
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 11
    invoke-direct {p0, v2, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_1

    .line 12
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 13
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p1, v0, v1}, Le/m/a/c/q1/d0;->e(FFF)F

    move-result p1

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendVolumeToRenderers()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/c1/k;

    .line 7
    invoke-interface {v1, p1}, Le/m/a/c/c1/k;->j(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWakeMode(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Le/m/a/c/z0;

    invoke-virtual {p1, v1}, Le/m/a/c/z0;->a(Z)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Le/m/a/c/a1;

    invoke-virtual {p1, v1}, Le/m/a/c/a1;->a(Z)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Le/m/a/c/z0;

    invoke-virtual {p1, v1}, Le/m/a/c/z0;->a(Z)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Le/m/a/c/a1;

    invoke-virtual {p1, v0}, Le/m/a/c/a1;->a(Z)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Le/m/a/c/z0;

    invoke-virtual {p1, v0}, Le/m/a/c/z0;->a(Z)V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Le/m/a/c/a1;

    invoke-virtual {p1, v0}, Le/m/a/c/a1;->a(Z)V

    :goto_0
    return-void
.end method

.method public stop(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Le/m/a/c/s;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Le/m/a/c/s;->d(ZI)I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Le/m/a/c/d0;

    invoke-virtual {v0, p1}, Le/m/a/c/d0;->stop(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->mediaSource:Le/m/a/c/l1/p;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    invoke-interface {v0, v1}, Le/m/a/c/l1/p;->c(Le/m/a/c/l1/q;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Le/m/a/c/b1/a;

    invoke-virtual {v0}, Le/m/a/c/b1/a;->z()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->mediaSource:Le/m/a/c/l1/p;

    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    return-void
.end method
