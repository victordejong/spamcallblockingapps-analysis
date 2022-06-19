.class public Landroidx/media2/player/MediaPlayer$s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$s;->b(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroidx/media2/player/MediaPlayer$s;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer$s;Landroidx/media2/common/MediaItem;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$s$c;->d:Landroidx/media2/player/MediaPlayer$s;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$s$c;->a:Landroidx/media2/common/MediaItem;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$s$c;->b:I

    iput p4, p0, Landroidx/media2/player/MediaPlayer$s$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/player/MediaPlayer$w;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$s$c;->d:Landroidx/media2/player/MediaPlayer$s;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$s;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$s$c;->a:Landroidx/media2/common/MediaItem;

    iget v2, p0, Landroidx/media2/player/MediaPlayer$s$c;->b:I

    iget v3, p0, Landroidx/media2/player/MediaPlayer$s$c;->c:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/player/MediaPlayer$w;->onError(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;II)V

    return-void
.end method
