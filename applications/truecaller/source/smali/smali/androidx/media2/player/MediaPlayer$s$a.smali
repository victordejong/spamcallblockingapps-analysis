.class public Landroidx/media2/player/MediaPlayer$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$s;->h(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/VideoSize;

.field public final synthetic b:Landroidx/media2/player/MediaPlayer$s;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer$s;Landroidx/media2/common/VideoSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$s$a;->b:Landroidx/media2/player/MediaPlayer$s;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$s$a;->a:Landroidx/media2/common/VideoSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$s$a;->b:Landroidx/media2/player/MediaPlayer$s;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$s$a;->a:Landroidx/media2/common/VideoSize;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onVideoSizeChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/VideoSize;)V

    return-void
.end method
