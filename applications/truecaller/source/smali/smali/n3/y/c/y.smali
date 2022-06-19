.class public Ln3/y/c/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/c/m$j;


# instance fields
.field public final synthetic a:Landroidx/media2/common/MediaItem;

.field public final synthetic b:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field public final synthetic c:Landroidx/media2/common/SubtitleData;

.field public final synthetic d:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/y;->d:Ln3/y/c/m;

    iput-object p2, p0, Ln3/y/c/y;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Ln3/y/c/y;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object p4, p0, Ln3/y/c/y;->c:Landroidx/media2/common/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/c/x0$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/y;->d:Ln3/y/c/m;

    iget-object v1, p0, Ln3/y/c/y;->a:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Ln3/y/c/y;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget-object v3, p0, Ln3/y/c/y;->c:Landroidx/media2/common/SubtitleData;

    invoke-virtual {p1, v0, v1, v2, v3}, Ln3/y/c/x0$b;->e(Ln3/y/c/x0;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method
