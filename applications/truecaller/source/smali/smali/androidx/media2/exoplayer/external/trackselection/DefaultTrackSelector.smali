.class public Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.super Ln3/y/b/a/v0/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;
    }
.end annotation


# static fields
.field public static final f:[I


# instance fields
.field public final d:Ln3/y/b/a/v0/e$b;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->f:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ln3/y/b/a/v0/a$d;

    invoke-direct {v0}, Ln3/y/b/a/v0/a$d;-><init>()V

    .line 2
    sget-object v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->B:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 3
    invoke-direct {p0}, Ln3/y/b/a/v0/d;-><init>()V

    .line 4
    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d:Ln3/y/b/a/v0/e$b;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 35

    move-object/from16 v0, p0

    .line 6
    new-instance v1, Ln3/y/b/a/v0/a$d;

    invoke-direct {v1}, Ln3/y/b/a/v0/a$d;-><init>()V

    .line 7
    sget-object v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->B:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 8
    iget-object v14, v2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->a:Ljava/lang/String;

    .line 9
    iget-object v15, v2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->b:Ljava/lang/String;

    .line 10
    iget-boolean v10, v2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->c:Z

    .line 11
    iget v9, v2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->d:I

    .line 12
    iget v4, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->f:I

    .line 13
    iget v5, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    .line 14
    iget v6, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    .line 15
    iget v7, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->i:I

    .line 16
    iget-boolean v8, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j:Z

    .line 17
    iget-boolean v13, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k:Z

    .line 18
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->l:Z

    .line 19
    iget v12, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->p:I

    .line 20
    iget v11, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:I

    move/from16 v16, v13

    .line 21
    iget-boolean v13, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:Z

    move/from16 v17, v13

    .line 22
    iget-boolean v13, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:Z

    move/from16 v18, v13

    .line 23
    iget-boolean v13, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->t:Z

    move/from16 v19, v13

    .line 24
    iget-boolean v13, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->u:Z

    move/from16 v20, v13

    .line 25
    iget-boolean v13, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    move/from16 v21, v13

    .line 26
    iget-boolean v13, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    move/from16 v22, v13

    .line 27
    iget-boolean v13, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    move/from16 v23, v13

    .line 28
    iget v13, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->y:I

    move/from16 v24, v3

    .line 29
    iget-object v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:Landroid/util/SparseArray;

    move/from16 v25, v13

    .line 30
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    const/16 v26, 0x0

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v9, v26

    .line 31
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 32
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    move/from16 v29, v11

    new-instance v11, Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v31, v3

    move-object/from16 v3, v30

    check-cast v3, Ljava/util/Map;

    invoke-direct {v11, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v13, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v11, v29

    move-object/from16 v3, v31

    goto :goto_0

    :cond_0
    move/from16 v29, v11

    .line 33
    iget-object v2, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseBooleanArray;

    .line 34
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 35
    sget v3, Ln3/y/b/a/x0/x;->a:I

    const-string v3, "window"

    move-object/from16 v9, p1

    .line 36
    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 37
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 38
    sget v10, Ln3/y/b/a/x0/x;->a:I

    const/16 v11, 0x1c

    if-gt v10, v11, :cond_5

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v30

    if-nez v30, :cond_5

    invoke-static/range {p1 .. p1}, Ln3/y/b/a/x0/x;->v(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 39
    sget-object v11, Ln3/y/b/a/x0/x;->c:Ljava/lang/String;

    const-string v9, "Sony"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Ln3/y/b/a/x0/x;->d:Ljava/lang/String;

    const-string v11, "BRAVIA"

    .line 40
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v11, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 42
    new-instance v3, Landroid/graphics/Point;

    const/16 v9, 0xf00

    const/16 v10, 0x870

    invoke-direct {v3, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    move/from16 v30, v12

    goto/16 :goto_4

    :cond_1
    const/16 v9, 0x1c

    if-ge v10, v9, :cond_2

    const-string v9, "sys.display-size"

    .line 43
    invoke-static {v9}, Ln3/y/b/a/x0/x;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    const-string v9, "vendor.display-size"

    .line 44
    invoke-static {v9}, Ln3/y/b/a/x0/x;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 45
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 46
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "x"

    invoke-static {v10, v11}, Ln3/y/b/a/x0/x;->B(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 47
    array-length v11, v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v30, v12

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 48
    :try_start_1
    aget-object v11, v10, v26

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    .line 49
    aget-object v10, v10, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v11, :cond_3

    if-lez v10, :cond_3

    .line 50
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v11, v10}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v12

    goto :goto_4

    :catch_0
    move/from16 v30, v12

    :catch_1
    :cond_3
    const-string v10, "Invalid display size: "

    .line 51
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move/from16 v30, v12

    .line 52
    :goto_2
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 53
    sget v10, Ln3/y/b/a/x0/x;->a:I

    const/16 v11, 0x17

    if-lt v10, v11, :cond_6

    .line 54
    invoke-virtual {v3}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 56
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    iput v3, v9, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_6
    const/16 v11, 0x11

    if-lt v10, v11, :cond_7

    .line 57
    invoke-virtual {v3, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_3

    .line 58
    :cond_7
    invoke-virtual {v3, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_3
    move-object v3, v9

    .line 59
    :goto_4
    iget v11, v3, Landroid/graphics/Point;->x:I

    move/from16 v26, v29

    iget v12, v3, Landroid/graphics/Point;->y:I

    move/from16 v29, v30

    .line 60
    new-instance v10, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-object v3, v10

    const/4 v9, 0x1

    move-object/from16 v33, v13

    move/from16 v30, v22

    move/from16 v31, v23

    move/from16 v32, v25

    move/from16 v25, v21

    move v13, v9

    move/from16 v23, v27

    move/from16 v9, v16

    move-object/from16 v34, v10

    move/from16 v22, v28

    move/from16 v10, v24

    move-object/from16 v21, v15

    move/from16 v15, v29

    move/from16 v16, v26

    move/from16 v24, v25

    move/from16 v25, v30

    move/from16 v26, v31

    move/from16 v27, v32

    move-object/from16 v28, v33

    move-object/from16 v29, v2

    invoke-direct/range {v3 .. v29}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 61
    invoke-direct/range {p0 .. p0}, Ln3/y/b/a/v0/d;-><init>()V

    .line 62
    iput-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d:Ln3/y/b/a/v0/e$b;

    .line 63
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v2, v34

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static c(II)I
    .locals 0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, p0, p1

    :cond_2
    :goto_0
    return v0
.end method

.method public static f(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Z)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget p2, Ln3/y/b/a/x0/x;->a:I

    const-string p2, "-"

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 7
    aget-object p0, p0, v0

    .line 8
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 9
    aget-object p1, p1, v0

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static g(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    if-ge v2, v3, :cond_0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_a

    if-ne p2, v2, :cond_1

    goto/16 :goto_7

    :cond_1
    move v3, v1

    move v4, v2

    .line 4
    :goto_1
    iget v5, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    const/4 v6, 0x1

    if-ge v3, v5, :cond_7

    .line 5
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v5, v5, v3

    .line 6
    iget v7, v5, Landroidx/media2/exoplayer/external/Format;->n:I

    if-lez v7, :cond_6

    iget v8, v5, Landroidx/media2/exoplayer/external/Format;->o:I

    if-lez v8, :cond_6

    if-eqz p3, :cond_4

    if-le v7, v8, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v1

    :goto_2
    if-le p1, p2, :cond_3

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    if-eq v9, v6, :cond_4

    move v6, p1

    move v9, p2

    goto :goto_4

    :cond_4
    move v9, p1

    move v6, p2

    :goto_4
    mul-int v10, v7, v6

    mul-int v11, v8, v9

    if-lt v10, v11, :cond_5

    .line 7
    new-instance v6, Landroid/graphics/Point;

    invoke-static {v11, v7}, Ln3/y/b/a/x0/x;->e(II)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_5

    .line 8
    :cond_5
    new-instance v7, Landroid/graphics/Point;

    invoke-static {v10, v8}, Ln3/y/b/a/x0/x;->e(II)I

    move-result v8

    invoke-direct {v7, v8, v6}, Landroid/graphics/Point;-><init>(II)V

    move-object v6, v7

    .line 9
    :goto_5
    iget v7, v5, Landroidx/media2/exoplayer/external/Format;->n:I

    iget v5, v5, Landroidx/media2/exoplayer/external/Format;->o:I

    mul-int v8, v7, v5

    .line 10
    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    const v10, 0x3f7ae148    # 0.98f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    if-lt v7, v9, :cond_6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    if-lt v5, v6, :cond_6

    if-ge v8, v4, :cond_6

    move v4, v8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-eq v4, v2, :cond_a

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_6
    if-ltz p1, :cond_a

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 13
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object p2, p3, p2

    .line 14
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Format;->w()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_8

    if-le p2, v4, :cond_9

    .line 15
    :cond_8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_a
    :goto_7
    return-object v0
.end method

.method public static h(IZ)Z
    .locals 1

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static i(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;IZZZ)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->h(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->e:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-gt p1, p3, :cond_4

    :cond_0
    if-nez p6, :cond_1

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->v:I

    if-eq p1, v1, :cond_4

    iget p3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->a:I

    if-ne p1, p3, :cond_4

    :cond_1
    if-nez p4, :cond_2

    iget-object p1, p0, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->c:Ljava/lang/String;

    .line 2
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    if-nez p5, :cond_3

    iget p0, p0, Landroidx/media2/exoplayer/external/Format;->w:I

    if-eq p0, v1, :cond_4

    iget p1, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->b:I

    if-ne p0, p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static j(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->h(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 2
    invoke-static {p2, p1}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->n:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-gt p1, p4, :cond_5

    :cond_1
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->o:I

    if-eq p1, p2, :cond_2

    if-gt p1, p5, :cond_5

    :cond_2
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->p:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p1, p3

    if-eqz p3, :cond_3

    int-to-float p3, p6

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_5

    :cond_3
    iget p0, p0, Landroidx/media2/exoplayer/external/Format;->e:I

    if-eq p0, p2, :cond_4

    if-gt p0, p7, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public d()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 2
    new-instance v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    .line 3
    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-object v1
.end method

.method public l(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/y/b/a/v0/g;->a:Ln3/y/b/a/v0/g$a;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Ln3/y/b/a/v;

    .line 4
    iget-object p1, p1, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ln3/y/b/a/x0/t;->b(I)Z

    :cond_0
    return-void
.end method

.method public m(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->l(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method
