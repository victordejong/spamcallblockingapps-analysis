.class public Landroidx/media2/session/SessionResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"

# interfaces
.implements Ln3/y/a/a;


# instance fields
.field public a:I

.field public b:J

.field public c:Landroid/os/Bundle;

.field public d:Landroidx/media2/common/MediaItem;

.field public e:Landroidx/media2/common/MediaItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 3
    iput p1, p0, Landroidx/media2/session/SessionResult;->a:I

    .line 4
    iput-object p2, p0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    .line 6
    iput-wide v0, p0, Landroidx/media2/session/SessionResult;->b:J

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media2/session/SessionResult;->a:I

    return v0
.end method
