.class public final Ln3/y/c/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/c/d1$a;,
        Ln3/y/c/d1$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/media2/common/MediaItem;

.field public final c:Ln3/y/c/b1;

.field public final d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/y/c/d1$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/y/c/d1$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/y/c/d1$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/y/c/d1$a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Ln3/y/c/d1$b;

.field public k:Ln3/y/c/d1$b;

.field public l:Ln3/y/c/d1$b;

.field public m:Ln3/y/c/d1$a;

.field public n:I


# direct methods
.method public constructor <init>(Ln3/y/c/b1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/c/d1;->c:Ln3/y/c/b1;

    .line 3
    new-instance p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>()V

    iput-object p1, p0, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ln3/y/c/d1;->e:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ln3/y/c/d1;->f:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ln3/y/c/d1;->g:Landroid/util/SparseArray;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ln3/y/c/d1;->h:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ln3/y/c/d1;->j:Ln3/y/c/d1$b;

    .line 9
    iput-object v0, p0, Ln3/y/c/d1;->k:Ln3/y/c/d1$b;

    .line 10
    iput-object v0, p0, Ln3/y/c/d1;->l:Ln3/y/c/d1$b;

    .line 11
    iput-object v0, p0, Ln3/y/c/d1;->m:Ln3/y/c/d1$a;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Ln3/y/c/d1;->n:I

    .line 13
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    .line 14
    sget-object v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->B:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->c:Z

    const/4 v2, 0x3

    .line 16
    invoke-virtual {v0, v2, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->b(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    .line 17
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->m(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    iget-object p1, p0, Ln3/y/c/d1;->l:Ln3/y/c/d1$b;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, p1, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    :goto_0
    return-object v1

    .line 3
    :cond_2
    iget-object p1, p0, Ln3/y/c/d1;->m:Ln3/y/c/d1$a;

    if-nez p1, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    iget-object v1, p1, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    :goto_1
    return-object v1

    .line 5
    :cond_4
    iget-object p1, p0, Ln3/y/c/d1;->j:Ln3/y/c/d1$b;

    if-nez p1, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    iget-object v1, p1, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    :goto_2
    return-object v1

    .line 7
    :cond_6
    iget-object p1, p0, Ln3/y/c/d1;->k:Ln3/y/c/d1$b;

    if-nez p1, :cond_7

    goto :goto_3

    .line 8
    :cond_7
    iget-object v1, p1, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    :goto_3
    return-object v1
.end method
