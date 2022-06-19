.class public final Landroidx/media2/common/UriMediaItem$a;
.super Landroidx/media2/common/MediaItem$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/UriMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public d:Landroid/net/Uri;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media2/common/MediaItem$a;-><init>()V

    const-string v0, "uri cannot be null"

    .line 2
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$a;->d:Landroid/net/Uri;

    .line 4
    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$a;->d:Landroid/net/Uri;

    return-void
.end method
