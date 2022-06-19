.class public Ln3/y/c/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$x;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/o0;->b:Landroidx/media2/player/MediaPlayer;

    iput-wide p2, p0, Ln3/y/c/o0;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/c/o0;->b:Landroidx/media2/player/MediaPlayer;

    iget-wide v1, p0, Ln3/y/c/o0;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/common/SessionPlayer$a;->onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V

    return-void
.end method
