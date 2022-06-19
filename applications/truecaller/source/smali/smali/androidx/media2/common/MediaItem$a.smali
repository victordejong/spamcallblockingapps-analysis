.class public Landroidx/media2/common/MediaItem$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/media2/common/MediaMetadata;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroidx/media2/common/MediaItem$a;->b:J

    const-wide v0, 0x7ffffffffffffffL

    .line 3
    iput-wide v0, p0, Landroidx/media2/common/MediaItem$a;->c:J

    return-void
.end method
