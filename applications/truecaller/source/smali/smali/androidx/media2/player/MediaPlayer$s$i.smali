.class public Landroidx/media2/player/MediaPlayer$s$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$s;->e(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field public final synthetic c:Landroidx/media2/common/SubtitleData;

.field public final synthetic d:Landroidx/media2/player/MediaPlayer$s;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer$s;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$s$i;->d:Landroidx/media2/player/MediaPlayer$s;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$s$i;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$s$i;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$s$i;->c:Landroidx/media2/common/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$s$i;->d:Landroidx/media2/player/MediaPlayer$s;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$s$i;->a:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$s$i;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$s$i;->c:Landroidx/media2/common/SubtitleData;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/common/SessionPlayer$a;->onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method
