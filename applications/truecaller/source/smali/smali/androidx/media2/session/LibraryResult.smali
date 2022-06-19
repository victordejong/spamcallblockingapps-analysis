.class public Landroidx/media2/session/LibraryResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"

# interfaces
.implements Ln3/y/a/a;


# instance fields
.field public a:I

.field public b:J

.field public c:Landroidx/media2/common/MediaItem;

.field public d:Landroidx/media2/common/MediaItem;

.field public e:Landroidx/media2/session/MediaLibraryService$LibraryParams;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroidx/media2/common/ParcelImplListSlice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media2/session/LibraryResult;->a:I

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->d:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    .line 2
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->g:Landroidx/media2/common/ParcelImplListSlice;

    .line 3
    sget-object v1, Ln3/y/d/b;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, v0, Landroidx/media2/common/ParcelImplListSlice;->a:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Landroidx/versionedparcelable/ParcelImpl;->a()Ln3/i0/e;

    move-result-object v3

    .line 9
    check-cast v3, Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 10
    :goto_1
    iput-object v0, p0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    return-void
.end method
