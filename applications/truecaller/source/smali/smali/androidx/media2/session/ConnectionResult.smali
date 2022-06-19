.class public Landroidx/media2/session/ConnectionResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"


# instance fields
.field public A:Landroidx/media2/common/MediaMetadata;

.field public B:I

.field public a:I

.field public b:Ln3/y/d/a;

.field public c:Landroid/os/IBinder;

.field public d:Landroid/app/PendingIntent;

.field public e:I

.field public f:Landroidx/media2/common/MediaItem;

.field public g:Landroidx/media2/common/MediaItem;

.field public h:J

.field public i:J

.field public j:F

.field public k:J

.field public l:Landroidx/media2/session/MediaController$PlaybackInfo;

.field public m:I

.field public n:I

.field public o:Landroidx/media2/common/ParcelImplListSlice;

.field public p:Landroidx/media2/session/SessionCommandGroup;

.field public q:I

.field public r:I

.field public s:I

.field public t:Landroid/os/Bundle;

.field public u:Landroidx/media2/common/VideoSize;

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public w:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field public x:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field public y:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field public z:Landroidx/media2/common/SessionPlayer$TrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->c:Landroid/os/IBinder;

    .line 2
    sget v1, Ln3/y/d/a$a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "androidx.media2.session.IMediaSession"

    .line 3
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    instance-of v2, v1, Ln3/y/d/a;

    if-eqz v2, :cond_1

    .line 5
    move-object v0, v1

    check-cast v0, Ln3/y/d/a;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Ln3/y/d/a$a$a;

    invoke-direct {v1, v0}, Ln3/y/d/a$a$a;-><init>(Landroid/os/IBinder;)V

    move-object v0, v1

    .line 7
    :goto_0
    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->b:Ln3/y/d/a;

    .line 8
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->g:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->f:Landroidx/media2/common/MediaItem;

    return-void
.end method
