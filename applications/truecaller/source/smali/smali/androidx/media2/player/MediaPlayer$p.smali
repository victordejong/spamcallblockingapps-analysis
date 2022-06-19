.class public Landroidx/media2/player/MediaPlayer$p;
.super Landroidx/media2/common/SessionPlayer$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# direct methods
.method public constructor <init>(ILandroidx/media2/common/MediaItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media2/common/SessionPlayer$b;->a:I

    return v0
.end method
