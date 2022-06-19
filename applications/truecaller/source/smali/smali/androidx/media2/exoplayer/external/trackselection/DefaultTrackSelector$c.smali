.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;
.super Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public final y:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public final z:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;-><init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;)V

    .line 2
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->f:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->e:I

    .line 3
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->f:I

    .line 4
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->g:I

    .line 5
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->i:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->h:I

    .line 6
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->i:Z

    .line 7
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->j:Z

    .line 8
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->l:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->k:Z

    .line 9
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->m:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->l:I

    .line 10
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->n:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->m:I

    .line 11
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->o:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->n:Z

    .line 12
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->p:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->o:I

    .line 13
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->p:I

    .line 14
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->q:Z

    .line 15
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->r:Z

    .line 16
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->t:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->s:Z

    .line 17
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->u:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->t:Z

    .line 18
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->u:Z

    .line 19
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->v:Z

    .line 20
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->w:Z

    .line 21
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->y:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->x:I

    .line 22
    iget-object v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:Landroid/util/SparseArray;

    .line 23
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 25
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->y:Landroid/util/SparseArray;

    .line 27
    iget-object p1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseBooleanArray;

    .line 28
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->z:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .locals 30

    move-object/from16 v0, p0

    .line 1
    new-instance v28, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-object/from16 v1, v28

    iget v2, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->e:I

    iget v3, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->f:I

    iget v4, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->g:I

    iget v5, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->h:I

    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->i:Z

    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->j:Z

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->k:Z

    iget v9, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->l:I

    iget v10, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->m:I

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->n:Z

    iget-object v12, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->a:Ljava/lang/String;

    iget v13, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->o:I

    iget v14, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->p:I

    iget-boolean v15, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->q:Z

    move-object/from16 v29, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->r:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->s:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->t:Z

    move/from16 v18, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->b:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->c:Z

    move/from16 v20, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->d:I

    move/from16 v21, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->u:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->v:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->w:Z

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->x:I

    move/from16 v25, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->y:Landroid/util/SparseArray;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->z:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v1

    move-object/from16 v1, v29

    invoke-direct/range {v1 .. v27}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v28
.end method

.method public final b(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->z:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->z:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->z:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method

.method public final c(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->y:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 5
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
