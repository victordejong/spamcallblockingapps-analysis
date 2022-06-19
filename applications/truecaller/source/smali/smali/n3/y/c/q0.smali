.class public Ln3/y/c/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$x;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/q0;->b:Landroidx/media2/player/MediaPlayer;

    iput p2, p0, Ln3/y/c/q0;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/c/q0;->b:Landroidx/media2/player/MediaPlayer;

    iget v1, p0, Ln3/y/c/q0;->a:F

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V

    return-void
.end method
