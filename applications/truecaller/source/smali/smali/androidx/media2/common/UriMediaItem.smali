.class public Landroidx/media2/common/UriMediaItem;
.super Landroidx/media2/common/MediaItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/UriMediaItem$a;
    }
.end annotation


# instance fields
.field public final e:Landroid/net/Uri;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/common/UriMediaItem$a;)V
    .locals 6

    .line 1
    iget-object v1, p1, Landroidx/media2/common/MediaItem$a;->a:Landroidx/media2/common/MediaMetadata;

    iget-wide v2, p1, Landroidx/media2/common/MediaItem$a;->b:J

    iget-wide v4, p1, Landroidx/media2/common/MediaItem$a;->c:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaMetadata;JJ)V

    .line 2
    iget-object v0, p1, Landroidx/media2/common/UriMediaItem$a;->d:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/common/UriMediaItem;->e:Landroid/net/Uri;

    .line 3
    iget-object v0, p1, Landroidx/media2/common/UriMediaItem$a;->e:Ljava/util/Map;

    iput-object v0, p0, Landroidx/media2/common/UriMediaItem;->f:Ljava/util/Map;

    .line 4
    iget-object p1, p1, Landroidx/media2/common/UriMediaItem$a;->f:Ljava/util/List;

    iput-object p1, p0, Landroidx/media2/common/UriMediaItem;->g:Ljava/util/List;

    return-void
.end method
