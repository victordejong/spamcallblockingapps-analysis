.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public final p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->c()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->p:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->q:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->c()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->p:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->q:Landroid/util/SparseBooleanArray;

    .line 6
    sget v0, Le/m/a/c/q1/d0;->a:I

    const-string v0, "window"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 8
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 9
    sget v1, Le/m/a/c/q1/d0;->a:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Le/m/a/c/q1/d0;->v(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    sget-object v2, Le/m/a/c/q1/d0;->c:Ljava/lang/String;

    const-string v4, "Sony"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Le/m/a/c/q1/d0;->d:Ljava/lang/String;

    const-string v4, "BRAVIA"

    .line 11
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Landroid/graphics/Point;

    const/16 v0, 0xf00

    const/16 v1, 0x870

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x1c

    if-ge v1, p1, :cond_1

    const-string p1, "sys.display-size"

    .line 14
    invoke-static {p1}, Le/m/a/c/q1/d0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "vendor.display-size"

    .line 15
    invoke-static {p1}, Le/m/a/c/q1/d0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "x"

    invoke-static {p1, v1}, Le/m/a/c/q1/d0;->B(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 18
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 19
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez v1, :cond_2

    if-lez p1, :cond_2

    .line 21
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, p1}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_1

    .line 22
    :catch_0
    :cond_2
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 23
    sget v1, Le/m/a/c/q1/d0;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    .line 24
    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 26
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_3
    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_1

    .line 28
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 29
    :goto_1
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 30
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->i:I

    .line 31
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->j:I

    .line 32
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->k:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public b()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 30

    move-object/from16 v0, p0

    .line 1
    new-instance v29, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-object/from16 v1, v29

    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->c:I

    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->d:I

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->e:I

    iget v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->f:I

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->g:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->h:Z

    iget v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->i:I

    iget v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->j:I

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->k:Z

    iget v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->l:I

    iget v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->m:I

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->n:Z

    iget-object v7, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->a:Ljava/lang/String;

    move-object/from16 v19, v7

    iget v7, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->b:I

    move/from16 v20, v7

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->o:Z

    move/from16 v25, v7

    iget-object v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->p:Landroid/util/SparseArray;

    move-object/from16 v27, v7

    iget-object v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->q:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v7

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v1 .. v28}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZZLjava/lang/String;IZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v29
.end method

.method public final c()V
    .locals 2

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->c:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->d:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->e:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->f:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->g:Z

    .line 6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->h:Z

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->i:I

    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->j:I

    .line 9
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->k:Z

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->l:I

    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->m:I

    .line 12
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->n:Z

    .line 13
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->o:Z

    return-void
.end method
