.class public Ln3/y/c/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$x;


# instance fields
.field public final synthetic a:Landroidx/media2/player/MediaPlayer$u;

.field public final synthetic b:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/t0;->b:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Ln3/y/c/t0;->a:Landroidx/media2/player/MediaPlayer$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/c/t0;->b:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Ln3/y/c/t0;->a:Landroidx/media2/player/MediaPlayer$u;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer$u;->c:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onTrackDeselected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method
