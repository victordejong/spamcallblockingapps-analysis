.class public final Landroidx/media2/player/MediaPlayer;
.super Landroidx/media2/common/SessionPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/MediaPlayer$q;,
        Landroidx/media2/player/MediaPlayer$p;,
        Landroidx/media2/player/MediaPlayer$o;,
        Landroidx/media2/player/MediaPlayer$TrackInfo;,
        Landroidx/media2/player/MediaPlayer$w;,
        Landroidx/media2/player/MediaPlayer$s;,
        Landroidx/media2/player/MediaPlayer$t;,
        Landroidx/media2/player/MediaPlayer$r;,
        Landroidx/media2/player/MediaPlayer$x;,
        Landroidx/media2/player/MediaPlayer$v;,
        Landroidx/media2/player/MediaPlayer$u;
    }
.end annotation


# static fields
.field public static s:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static t:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static u:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static v:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static w:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ln3/y/c/x0;

.field public d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/MediaPlayer$u;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/MediaPlayer$v<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Object;

.field public h:I

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/common/MediaItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public final k:Ln3/y/c/d;

.field public final l:Ljava/lang/Object;

.field public m:Landroidx/media2/player/MediaPlayer$q;

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:Landroidx/media2/common/MediaItem;

.field public q:Landroidx/media2/common/MediaItem;

.field public r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    cmpg-float v3, v1, v2

    if-ltz v3, :cond_2

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 5
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->s:Ln3/g/a;

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Landroidx/media2/player/MediaPlayer;->s:Ln3/g/a;

    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Landroidx/media2/player/MediaPlayer;->s:Ln3/g/a;

    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 10
    invoke-virtual {v0, v3, v4}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Landroidx/media2/player/MediaPlayer;->s:Ln3/g/a;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Landroidx/media2/player/MediaPlayer;->s:Ln3/g/a;

    const/4 v4, 0x3

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 14
    invoke-virtual {v0, v5, v6}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Landroidx/media2/player/MediaPlayer;->s:Ln3/g/a;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, -0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Landroidx/media2/player/MediaPlayer;->s:Ln3/g/a;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->t:Ln3/g/a;

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Landroidx/media2/player/MediaPlayer;->t:Ln3/g/a;

    const/16 v7, -0x3ec

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Landroidx/media2/player/MediaPlayer;->t:Ln3/g/a;

    const/16 v8, -0x3ef

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Landroidx/media2/player/MediaPlayer;->t:Ln3/g/a;

    const/16 v8, -0x3f2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Landroidx/media2/player/MediaPlayer;->t:Ln3/g/a;

    const/16 v8, -0x6e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->u:Ln3/g/a;

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 25
    invoke-virtual {v0, v8, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Landroidx/media2/player/MediaPlayer;->u:Ln3/g/a;

    const/16 v8, 0x2bc

    .line 27
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 28
    invoke-virtual {v0, v9, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Landroidx/media2/player/MediaPlayer;->u:Ln3/g/a;

    const/16 v8, 0x2c0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Landroidx/media2/player/MediaPlayer;->u:Ln3/g/a;

    const/16 v8, 0x320

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Landroidx/media2/player/MediaPlayer;->u:Ln3/g/a;

    const/16 v8, 0x321

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Landroidx/media2/player/MediaPlayer;->u:Ln3/g/a;

    const/16 v8, 0x322

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Landroidx/media2/player/MediaPlayer;->u:Ln3/g/a;

    const/16 v8, 0x324

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Landroidx/media2/player/MediaPlayer;->u:Ln3/g/a;

    const/16 v8, 0x325

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->v:Ln3/g/a;

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Landroidx/media2/player/MediaPlayer;->v:Ln3/g/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Landroidx/media2/player/MediaPlayer;->v:Ln3/g/a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Landroidx/media2/player/MediaPlayer;->v:Ln3/g/a;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->w:Ln3/g/a;

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v8, v1}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Landroidx/media2/player/MediaPlayer;->w:Ln3/g/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x3e9

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Landroidx/media2/player/MediaPlayer;->w:Ln3/g/a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x3eb

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 49
    invoke-virtual {v0, v1, v3}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Landroidx/media2/player/MediaPlayer;->w:Ln3/g/a;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Landroidx/media2/player/MediaPlayer;->w:Ln3/g/a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Landroidx/media2/player/MediaPlayer;->w:Ln3/g/a;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x3ed

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pitch must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 pitch is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative speed is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 speed is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->f:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    .line 7
    new-instance v0, Landroidx/media2/player/MediaPlayer$q;

    invoke-direct {v0}, Landroidx/media2/player/MediaPlayer$q;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$q;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/media2/player/MediaPlayer;->h:I

    .line 10
    new-instance v0, Ln3/y/c/m;

    invoke-direct {v0, p1}, Ln3/y/c/m;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    .line 13
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    new-instance v2, Landroidx/media2/player/MediaPlayer$s;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$s;-><init>(Landroidx/media2/player/MediaPlayer;)V

    check-cast v1, Ln3/y/c/m;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v3, v1, Ln3/y/c/m;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 17
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, v1, Ln3/y/c/m;->g:Landroid/util/Pair;

    .line 18
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/media2/player/MediaPlayer$t;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$t;-><init>(Landroidx/media2/player/MediaPlayer;)V

    check-cast v0, Ln3/y/c/m;

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, v0, Ln3/y/c/m;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_1
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 24
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, -0x2

    .line 25
    iput v0, p0, Landroidx/media2/player/MediaPlayer;->o:I

    .line 26
    new-instance v0, Ln3/y/c/d;

    invoke-direct {v0, p1, p0}, Ln3/y/c/d;-><init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->k:Ln3/y/c/d;

    return-void

    :catchall_0
    move-exception p1

    .line 27
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 28
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method


# virtual methods
.method public B0()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Landroidx/media2/player/MediaPlayer$b;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$b;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public B1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroidx/media2/player/MediaPlayer;->h:I

    if-eq v1, p1, :cond_0

    .line 3
    iput p1, p0, Landroidx/media2/player/MediaPlayer;->h:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Landroidx/media2/player/MediaPlayer$h;

    invoke-direct {v0, p0, p1}, Landroidx/media2/player/MediaPlayer$h;-><init>(Landroidx/media2/player/MediaPlayer;I)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public D0()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Landroidx/media2/player/MediaPlayer$a;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$a;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public E()F
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v0}, Ln3/y/c/x0;->d()Ln3/y/c/z0;

    move-result-object v0

    invoke-virtual {v0}, Ln3/y/c/z0;->a()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    return v2

    :catchall_0
    move-exception v1

    .line 6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public E1()Ln3/h/a/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/h/a/f<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/h/a/f;

    invoke-direct {v0}, Ln3/h/a/f;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v2, Ln3/y/c/m;

    .line 4
    new-instance v3, Ln3/y/c/j;

    const/4 v4, 0x0

    const/16 v5, 0x1d

    invoke-direct {v3, v2, v5, v4}, Ln3/y/c/j;-><init>(Ln3/y/c/m;IZ)V

    invoke-virtual {v2, v3}, Ln3/y/c/m;->f(Ln3/y/c/m$k;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v5, v0, v3}, Landroidx/media2/player/MediaPlayer;->F0(ILn3/h/a/f;Ljava/lang/Object;)V

    .line 6
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public F0(ILn3/h/a/f;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln3/h/a/f<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media2/player/MediaPlayer$u;

    invoke-direct {v0, p1, p2}, Landroidx/media2/player/MediaPlayer$u;-><init>(ILn3/h/a/f;)V

    .line 2
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Ln3/y/c/l0;

    invoke-direct {p1, p0, p2, p3, v0}, Ln3/y/c/l0;-><init>(Landroidx/media2/player/MediaPlayer;Ln3/h/a/f;Ljava/lang/Object;Landroidx/media2/player/MediaPlayer$u;)V

    iget-object p3, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, p1, p3}, Ln3/h/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public F1()Ln3/k/h/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/k/h/c<",
            "Landroidx/media2/common/MediaItem;",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->o:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->p:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->q:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iput-object v1, p0, Landroidx/media2/player/MediaPlayer;->p:Landroidx/media2/common/MediaItem;

    .line 4
    iput-object v1, p0, Landroidx/media2/player/MediaPlayer;->q:Landroidx/media2/common/MediaItem;

    .line 5
    new-instance v0, Ln3/k/h/c;

    invoke-direct {v0, v1, v1}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 6
    :cond_1
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->p:Landroidx/media2/common/MediaItem;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    iget v2, p0, Landroidx/media2/player/MediaPlayer;->o:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->p:Landroidx/media2/common/MediaItem;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 9
    :goto_0
    iget v2, p0, Landroidx/media2/player/MediaPlayer;->o:I

    add-int/lit8 v2, v2, 0x1

    .line 10
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-lt v2, v3, :cond_3

    move v2, v4

    :cond_3
    if-ne v2, v4, :cond_4

    .line 11
    iput-object v1, p0, Landroidx/media2/player/MediaPlayer;->q:Landroidx/media2/common/MediaItem;

    goto :goto_1

    .line 12
    :cond_4
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->q:Landroidx/media2/common/MediaItem;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 14
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    iput-object v2, p0, Landroidx/media2/player/MediaPlayer;->q:Landroidx/media2/common/MediaItem;

    goto :goto_2

    :cond_5
    :goto_1
    move-object v2, v1

    :goto_2
    if-nez v0, :cond_6

    if-nez v2, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    new-instance v1, Ln3/k/h/c;

    invoke-direct {v1, v0, v2}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-object v1
.end method

.method public G0(Landroidx/media2/player/MediaPlayer$v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/MediaPlayer$v<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->f:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->L0()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public I()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroidx/media2/player/MediaPlayer;->h:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public J()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->o:I

    if-gez v0, :cond_1

    .line 7
    monitor-exit v1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    .line 8
    monitor-exit v1

    return v2

    .line 9
    :cond_2
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$q;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/media2/player/MediaPlayer$q;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public J0()Ln3/h/a/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/h/a/f<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/h/a/f;

    invoke-direct {v0}, Ln3/h/a/f;-><init>()V

    .line 2
    new-instance v1, Landroidx/media2/common/SessionPlayer$b;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Ln3/h/a/f;->h(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public K(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v0, Ln3/y/c/m;

    .line 6
    new-instance v1, Ln3/y/c/u;

    invoke-direct {v1, v0, p1}, Ln3/y/c/u;-><init>(Ln3/y/c/m;I)V

    invoke-virtual {v0, v1}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    if-nez p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-direct {v2, p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;-><init>(Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    :goto_0
    return-object v2

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public K0(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ln3/h/a/f<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ln3/h/a/f;

    invoke-direct {v1}, Ln3/h/a/f;-><init>()V

    .line 3
    new-instance v2, Landroidx/media2/common/SessionPlayer$b;

    .line 4
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v3}, Ln3/y/c/x0;->c()Landroidx/media2/common/MediaItem;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    .line 5
    invoke-virtual {v1, v2}, Ln3/h/a/f;->h(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final L0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->f:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$v;

    .line 5
    iget-object v3, v2, Ln3/h/a/a;->a:Ljava/lang/Object;

    .line 6
    instance-of v3, v3, Ln3/h/a/a$c;

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$v;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    :cond_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$v;

    .line 11
    iget-boolean v3, v2, Landroidx/media2/player/MediaPlayer$v;->h:Z

    if-nez v3, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$v;->k()Z

    goto :goto_1

    .line 13
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public P()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v0, Ln3/y/c/m;

    .line 6
    new-instance v1, Ln3/y/c/t;

    invoke-direct {v1, v0}, Ln3/y/c/t;-><init>(Ln3/y/c/m;)V

    invoke-virtual {v0, v1}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public Q()Landroidx/media2/common/VideoSize;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroidx/media2/player/VideoSize;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/media2/player/VideoSize;-><init>(II)V

    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v1, Landroidx/media2/player/VideoSize;

    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v0, Ln3/y/c/m;

    .line 6
    new-instance v2, Ln3/y/c/o;

    invoke-direct {v2, v0}, Ln3/y/c/o;-><init>(Ln3/y/c/m;)V

    invoke-virtual {v0, v2}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v2, Ln3/y/c/m;

    .line 8
    new-instance v3, Ln3/y/c/p;

    invoke-direct {v3, v2}, Ln3/y/c/p;-><init>(Ln3/y/c/m;)V

    invoke-virtual {v2, v3}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 9
    invoke-direct {v1, v0, v2}, Landroidx/media2/player/VideoSize;-><init>(II)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public Q0()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    monitor-exit v0

    return v1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v0, Ln3/y/c/m;

    .line 6
    new-instance v1, Ln3/y/c/s;

    invoke-direct {v1, v0}, Ln3/y/c/s;-><init>(Ln3/y/c/m;)V

    invoke-virtual {v0, v1}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public S()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Landroidx/media2/player/MediaPlayer$l;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$l;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public U0(Landroidx/media2/player/MediaPlayer$r;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer;->j()Ljava/util/List;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/k/h/c;

    .line 7
    iget-object v2, v1, Ln3/k/h/c;->a:Ljava/lang/Object;

    instance-of v3, v2, Landroidx/media2/player/MediaPlayer$w;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Landroidx/media2/player/MediaPlayer$w;

    .line 9
    iget-object v1, v1, Ln3/k/h/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media2/player/MediaPlayer$k;

    invoke-direct {v3, p0, p1, v2}, Landroidx/media2/player/MediaPlayer$k;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$r;Landroidx/media2/player/MediaPlayer$w;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public W()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Landroidx/media2/player/MediaPlayer$g;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$g;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public W0(Landroidx/media2/player/MediaPlayer$x;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer;->j()Ljava/util/List;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/k/h/c;

    .line 7
    iget-object v2, v1, Ln3/k/h/c;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/common/SessionPlayer$a;

    .line 8
    iget-object v1, v1, Ln3/k/h/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media2/player/MediaPlayer$j;

    invoke-direct {v3, p0, p1, v2}, Landroidx/media2/player/MediaPlayer$j;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$x;Landroidx/media2/common/SessionPlayer$a;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "trackInfo shouldn\'t be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v0, Landroidx/media2/player/MediaPlayer$f;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$f;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 7
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/media2/common/SessionPlayer;->close()V

    .line 2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    .line 5
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->j1()V

    .line 6
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->k:Ln3/y/c/d;

    .line 7
    iget-object v1, v1, Ln3/y/c/d;->a:Ln3/y/c/d$a;

    check-cast v1, Ln3/y/c/d$b;

    .line 8
    iget-object v2, v1, Ln3/y/c/d$b;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ln3/y/c/d$b;->c()V

    .line 10
    invoke-virtual {v1}, Ln3/y/c/d$b;->a()V

    .line 11
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v1}, Ln3/y/c/x0;->a()V

    .line 13
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 14
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 15
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public d()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-wide v2

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v0, Ln3/y/c/m;

    .line 6
    new-instance v1, Ln3/y/c/i;

    invoke-direct {v1, v0}, Ln3/y/c/i;-><init>(Ln3/y/c/m;)V

    invoke-virtual {v0, v1}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    return-wide v0

    :catch_0
    :cond_1
    return-wide v2

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public j1()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$u;

    .line 3
    iget-object v2, v2, Landroidx/media2/player/MediaPlayer$u;->b:Ln3/h/a/f;

    invoke-virtual {v2, v3}, Ln3/h/a/a;->cancel(Z)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->f:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 7
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$v;

    .line 8
    iget-boolean v4, v2, Landroidx/media2/player/MediaPlayer$v;->i:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ln3/h/a/a;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    iget-object v4, v2, Ln3/h/a/a;->a:Ljava/lang/Object;

    .line 10
    instance-of v4, v4, Ln3/h/a/a$c;

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {v2, v3}, Ln3/h/a/a;->cancel(Z)Z

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 13
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 14
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 15
    :try_start_2
    iput v1, p0, Landroidx/media2/player/MediaPlayer;->h:I

    .line 16
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 17
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 19
    :try_start_3
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$q;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$q;->a()V

    .line 20
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->p:Landroidx/media2/common/MediaItem;

    .line 22
    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->q:Landroidx/media2/common/MediaItem;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Landroidx/media2/player/MediaPlayer;->o:I

    .line 24
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->r:Z

    .line 25
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->k:Ln3/y/c/d;

    invoke-virtual {v0}, Ln3/y/c/d;->a()V

    .line 27
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v0}, Ln3/y/c/x0;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 28
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 29
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 30
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 31
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method public k()Landroidx/media2/common/MediaItem;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v0}, Ln3/y/c/x0;->c()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public l()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-wide v2

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v0, Ln3/y/c/m;

    .line 6
    new-instance v1, Ln3/y/c/g;

    invoke-direct {v1, v0}, Ln3/y/c/g;-><init>(Ln3/y/c/m;)V

    invoke-virtual {v0, v1}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    return-wide v0

    :catch_0
    :cond_1
    return-wide v2

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public l1(Landroidx/media2/common/MediaItem;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 5
    :cond_0
    new-instance v0, Landroidx/media2/player/MediaPlayer$i;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/player/MediaPlayer$i;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public m1(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Ljava/util/List<",
            "Ln3/h/a/f<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    const-string v0, "curItem shouldn\'t be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->r:Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->n1(Landroidx/media2/common/MediaItem;)Ln3/h/a/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->E1()Ln3/h/a/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ln3/h/a/f;

    invoke-direct {v1}, Ln3/h/a/f;-><init>()V

    .line 9
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 10
    :try_start_1
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v3, Ln3/y/c/m;

    .line 11
    new-instance v4, Ln3/y/c/c0;

    const/4 v5, 0x0

    const/16 v6, 0x13

    invoke-direct {v4, v3, v6, v5, p1}, Ln3/y/c/c0;-><init>(Ln3/y/c/m;IZLandroidx/media2/common/MediaItem;)V

    invoke-virtual {v3, v4}, Ln3/y/c/m;->f(Ln3/y/c/m$k;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, v6, v1, v4}, Landroidx/media2/player/MediaPlayer;->F0(ILn3/h/a/f;Ljava/lang/Object;)V

    .line 13
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter p1

    const/4 v2, 0x1

    .line 15
    :try_start_2
    iput-boolean v2, p0, Landroidx/media2/player/MediaPlayer;->r:Z

    .line 16
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p0, p2}, Landroidx/media2/player/MediaPlayer;->n1(Landroidx/media2/common/MediaItem;)Ln3/h/a/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :catchall_0
    move-exception p2

    .line 19
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 20
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 21
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public n0(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Landroidx/media2/player/MediaPlayer$m;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media2/player/MediaPlayer$m;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZJ)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n1(Landroidx/media2/common/MediaItem;)Ln3/h/a/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Ln3/h/a/f<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/h/a/f;

    invoke-direct {v0}, Ln3/h/a/f;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v2, Ln3/y/c/m;

    .line 4
    new-instance v3, Ln3/y/c/k;

    const/4 v4, 0x0

    const/16 v5, 0x16

    invoke-direct {v3, v2, v5, v4, p1}, Ln3/y/c/k;-><init>(Ln3/y/c/m;IZLandroidx/media2/common/MediaItem;)V

    invoke-virtual {v2, v3}, Ln3/y/c/m;->f(Ln3/y/c/m$k;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v5, v0, v3}, Landroidx/media2/player/MediaPlayer;->F0(ILn3/h/a/f;Ljava/lang/Object;)V

    .line 6
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p0(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "trackInfo shouldn\'t be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v0, Landroidx/media2/player/MediaPlayer$e;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$e;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 7
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public q()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-wide v2

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v0, Ln3/y/c/m;

    .line 6
    new-instance v1, Ln3/y/c/h;

    invoke-direct {v1, v0}, Ln3/y/c/h;-><init>(Ln3/y/c/m;)V

    invoke-virtual {v0, v1}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    return-wide v0

    :catch_0
    :cond_1
    return-wide v2

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public s()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->o:I

    if-gez v0, :cond_1

    .line 7
    monitor-exit v1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 8
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 9
    monitor-exit v1

    return v2

    .line 10
    :cond_2
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$q;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/media2/player/MediaPlayer$q;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public s1(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Landroidx/media2/player/MediaPlayer$d;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$d;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "volume should be between 0.0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t0(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Landroidx/media2/player/MediaPlayer$n;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$n;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public z0(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Landroidx/media2/player/MediaPlayer$c;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$c;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroid/view/Surface;)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public z1(F)Ln3/h/a/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ln3/h/a/f<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/h/a/f;

    invoke-direct {v0}, Ln3/h/a/f;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v2, Ln3/y/c/m;

    .line 4
    new-instance v3, Ln3/y/c/r;

    const/4 v4, 0x0

    const/16 v5, 0x1a

    invoke-direct {v3, v2, v5, v4, p1}, Ln3/y/c/r;-><init>(Ln3/y/c/m;IZF)V

    invoke-virtual {v2, v3}, Ln3/y/c/m;->f(Ln3/y/c/m$k;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v5, v0, v3}, Landroidx/media2/player/MediaPlayer;->F0(ILn3/h/a/f;Ljava/lang/Object;)V

    .line 6
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
