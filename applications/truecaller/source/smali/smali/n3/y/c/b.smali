.class public final synthetic Ln3/y/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$x;


# instance fields
.field public final synthetic a:Ln3/y/c/w0;


# direct methods
.method public synthetic constructor <init>(Ln3/y/c/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/c/b;->a:Ln3/y/c/w0;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    iget-object v0, p0, Ln3/y/c/b;->a:Ln3/y/c/w0;

    .line 1
    iget-object v0, v0, Ln3/y/c/w0;->l:Landroidx/media2/player/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroidx/media2/common/SessionPlayer$a;->onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method
