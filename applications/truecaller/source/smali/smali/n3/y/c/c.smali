.class public final synthetic Ln3/y/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$x;


# instance fields
.field public final synthetic a:Landroidx/media2/player/MediaPlayer$s;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/media2/player/MediaPlayer$s;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/c/c;->a:Landroidx/media2/player/MediaPlayer$s;

    iput-object p2, p0, Ln3/y/c/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    iget-object v0, p0, Ln3/y/c/c;->a:Landroidx/media2/player/MediaPlayer$s;

    iget-object v1, p0, Ln3/y/c/c;->b:Ljava/util/List;

    .line 1
    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onTracksChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V

    return-void
.end method
