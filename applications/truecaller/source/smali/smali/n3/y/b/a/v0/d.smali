.class public abstract Ln3/y/b/a/v0/d;
.super Ln3/y/b/a/v0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/v0/d$a;
    }
.end annotation


# instance fields
.field public c:Ln3/y/b/a/v0/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/v0/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ln3/y/b/a/v0/d$a;

    iput-object p1, p0, Ln3/y/b/a/v0/d;->c:Ln3/y/b/a/v0/d$a;

    return-void
.end method

.method public final b([Ln3/y/b/a/b;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/t0/t$a;Ln3/y/b/a/l0;)Ln3/y/b/a/v0/h;
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 2
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 3
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_0

    .line 4
    iget v8, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    new-array v9, v8, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    aput-object v9, v5, v7

    .line 5
    new-array v8, v8, [[I

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v4, v0

    new-array v14, v4, [I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    .line 7
    aget-object v8, v0, v7

    invoke-virtual {v8}, Ln3/y/b/a/b;->F()I

    move-result v8

    aput v8, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 8
    :goto_2
    iget v7, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v4, v7, :cond_8

    .line 9
    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v7, v7, v4

    .line 10
    array-length v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11
    :goto_3
    array-length v11, v0

    if-ge v9, v11, :cond_5

    .line 12
    aget-object v11, v0, v9

    const/4 v12, 0x0

    .line 13
    :goto_4
    iget v15, v7, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    if-ge v12, v15, :cond_4

    .line 14
    iget-object v15, v7, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v15, v15, v12

    .line 15
    invoke-virtual {v11, v15}, Ln3/y/b/a/b;->D(Landroidx/media2/exoplayer/external/Format;)I

    move-result v15

    and-int/lit8 v15, v15, 0x7

    if-le v15, v10, :cond_3

    const/4 v8, 0x4

    if-ne v15, v8, :cond_2

    move v8, v9

    goto :goto_5

    :cond_2
    move v8, v9

    move v10, v15

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 16
    :cond_5
    :goto_5
    array-length v9, v0

    if-ne v8, v9, :cond_6

    .line 17
    iget v9, v7, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    new-array v9, v9, [I

    goto :goto_7

    :cond_6
    aget-object v9, v0, v8

    .line 18
    iget v10, v7, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    new-array v10, v10, [I

    const/4 v11, 0x0

    .line 19
    :goto_6
    iget v12, v7, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    if-ge v11, v12, :cond_7

    .line 20
    iget-object v12, v7, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v12, v12, v11

    .line 21
    invoke-virtual {v9, v12}, Ln3/y/b/a/b;->D(Landroidx/media2/exoplayer/external/Format;)I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    move-object v9, v10

    .line 22
    :goto_7
    aget v10, v2, v8

    .line 23
    aget-object v11, v5, v8

    aput-object v7, v11, v10

    .line 24
    aget-object v7, v6, v8

    aput-object v9, v7, v10

    .line 25
    aget v7, v2, v8

    add-int/2addr v7, v3

    aput v7, v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 26
    :cond_8
    array-length v1, v0

    new-array v9, v1, [Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 27
    array-length v1, v0

    new-array v8, v1, [I

    const/4 v1, 0x0

    .line 28
    :goto_8
    array-length v4, v0

    if-ge v1, v4, :cond_9

    .line 29
    aget v4, v2, v1

    .line 30
    new-instance v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v10, v5, v1

    .line 31
    invoke-static {v10, v4}, Ln3/y/b/a/x0/x;->x([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v7, v10}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    aput-object v7, v9, v1

    .line 32
    aget-object v7, v6, v1

    .line 33
    invoke-static {v7, v4}, Ln3/y/b/a/x0/x;->x([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    aput-object v4, v6, v1

    .line 34
    aget-object v4, v0, v1

    .line 35
    iget v4, v4, Ln3/y/b/a/b;->a:I

    .line 36
    aput v4, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 37
    :cond_9
    array-length v1, v0

    aget v1, v2, v1

    .line 38
    new-instance v12, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 39
    invoke-static {v0, v1}, Ln3/y/b/a/x0/x;->x([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v12, v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    .line 40
    new-instance v0, Ln3/y/b/a/v0/d$a;

    move-object v7, v0

    move-object v10, v14

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Ln3/y/b/a/v0/d$a;-><init>([I[Landroidx/media2/exoplayer/external/source/TrackGroupArray;[I[[[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    .line 41
    move-object/from16 v1, p0

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 42
    iget-object v2, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 43
    iget v4, v0, Ln3/y/b/a/v0/d$a;->a:I

    .line 44
    sget-object v5, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->f:[I

    .line 45
    new-array v7, v4, [Ln3/y/b/a/v0/e$a;

    move-object v10, v0

    move-object v12, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_9
    const/4 v15, 0x2

    if-ge v8, v4, :cond_32

    .line 46
    iget-object v13, v10, Ln3/y/b/a/v0/d$a;->b:[I

    aget v13, v13, v8

    if-ne v15, v13, :cond_31

    if-nez v11, :cond_2f

    .line 47
    iget-object v10, v10, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v10, v10, v8

    .line 48
    aget-object v11, v6, v8

    aget v13, v14, v8

    .line 49
    iget-boolean v3, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    if-nez v3, :cond_19

    iget-boolean v3, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    if-nez v3, :cond_19

    .line 50
    iget-boolean v3, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->l:Z

    if-eqz v3, :cond_a

    const/16 v3, 0x18

    goto :goto_a

    :cond_a
    const/16 v3, 0x10

    .line 51
    :goto_a
    iget-boolean v15, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k:Z

    if-eqz v15, :cond_b

    and-int/2addr v13, v3

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    goto :goto_b

    :cond_b
    const/4 v13, 0x0

    :goto_b
    move-object/from16 v24, v5

    move-object v15, v12

    const/4 v12, 0x0

    .line 52
    :goto_c
    iget v5, v10, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v12, v5, :cond_18

    .line 53
    iget-object v5, v10, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v5, v5, v12

    .line 54
    aget-object v25, v11, v12

    move-object/from16 v26, v1

    iget v1, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->f:I

    move-object/from16 v27, v14

    iget v14, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    move-object/from16 v28, v6

    iget v6, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    move/from16 v29, v4

    iget v4, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->i:I

    move/from16 v30, v9

    iget v9, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->m:I

    move-object/from16 v31, v0

    iget v0, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->n:I

    iget-boolean v15, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->o:Z

    move-object/from16 v32, v7

    .line 55
    iget v7, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    move/from16 v33, v8

    const/4 v8, 0x2

    if-ge v7, v8, :cond_c

    goto :goto_d

    .line 56
    :cond_c
    invoke-static {v5, v9, v0, v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->g(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v0

    .line 57
    move-object v7, v0

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v8, :cond_d

    :goto_d
    move-object/from16 v38, v2

    move-object/from16 v39, v10

    move-object/from16 v36, v11

    move/from16 v35, v13

    goto/16 :goto_13

    :cond_d
    if-nez v13, :cond_13

    .line 58
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move/from16 v35, v13

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v34, 0x0

    .line 59
    :goto_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v15, v13, :cond_12

    .line 60
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v36, v11

    .line 61
    iget-object v11, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v11, v11, v13

    .line 62
    iget-object v11, v11, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 63
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v38, v2

    move-object/from16 v37, v8

    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 64
    :goto_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_f

    .line 65
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v39, v10

    .line 66
    iget-object v10, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v16, v10, v2

    .line 67
    aget v18, v25, v2

    move-object/from16 v17, v11

    move/from16 v19, v3

    move/from16 v20, v1

    move/from16 v21, v14

    move/from16 v22, v6

    move/from16 v23, v4

    .line 68
    invoke-static/range {v16 .. v23}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->j(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v8, v8, 0x1

    :cond_e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v39

    goto :goto_f

    :cond_f
    move-object/from16 v39, v10

    if-le v8, v9, :cond_11

    move v9, v8

    move-object/from16 v34, v11

    goto :goto_10

    :cond_10
    move-object/from16 v38, v2

    move-object/from16 v37, v8

    move-object/from16 v39, v10

    :cond_11
    :goto_10
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v36

    move-object/from16 v8, v37

    move-object/from16 v2, v38

    move-object/from16 v10, v39

    goto :goto_e

    :cond_12
    move-object/from16 v38, v2

    move-object/from16 v39, v10

    move-object/from16 v36, v11

    goto :goto_11

    :cond_13
    move-object/from16 v38, v2

    move-object/from16 v39, v10

    move-object/from16 v36, v11

    move/from16 v35, v13

    const/16 v34, 0x0

    .line 69
    :goto_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_14
    :goto_12
    const/4 v8, -0x1

    add-int/2addr v2, v8

    if-ltz v2, :cond_15

    .line 70
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 71
    iget-object v9, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v16, v9, v8

    .line 72
    aget v18, v25, v8

    move-object/from16 v17, v34

    move/from16 v19, v3

    move/from16 v20, v1

    move/from16 v21, v14

    move/from16 v22, v6

    move/from16 v23, v4

    .line 73
    invoke-static/range {v16 .. v23}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->j(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z

    move-result v8

    if-nez v8, :cond_14

    .line 74
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12

    .line 75
    :cond_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_16

    :goto_13
    move-object/from16 v0, v24

    goto :goto_14

    :cond_16
    invoke-static {v0}, Ln3/y/b/a/x0/x;->E(Ljava/util/List;)[I

    move-result-object v0

    .line 76
    :goto_14
    array-length v1, v0

    if-lez v1, :cond_17

    .line 77
    new-instance v1, Ln3/y/b/a/v0/e$a;

    invoke-direct {v1, v5, v0}, Ln3/y/b/a/v0/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    goto :goto_17

    :cond_17
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    move/from16 v4, v29

    move/from16 v9, v30

    move-object/from16 v0, v31

    move-object/from16 v7, v32

    move/from16 v8, v33

    move/from16 v13, v35

    move-object/from16 v11, v36

    move-object/from16 v2, v38

    move-object v15, v2

    move-object/from16 v10, v39

    goto/16 :goto_c

    :cond_18
    move-object/from16 v31, v0

    move-object/from16 v26, v1

    move-object/from16 v38, v2

    move/from16 v29, v4

    :goto_15
    move-object/from16 v28, v6

    move-object/from16 v32, v7

    move/from16 v33, v8

    move/from16 v30, v9

    move-object/from16 v39, v10

    move-object/from16 v36, v11

    move-object/from16 v27, v14

    goto :goto_16

    :cond_19
    move-object/from16 v31, v0

    move-object/from16 v26, v1

    move-object/from16 v38, v2

    move/from16 v29, v4

    move-object/from16 v24, v5

    goto :goto_15

    :goto_16
    const/4 v1, 0x0

    :goto_17
    if-nez v1, :cond_2d

    move-object/from16 v6, v39

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 78
    :goto_18
    iget v7, v6, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v3, v7, :cond_2b

    .line 79
    iget-object v7, v6, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v7, v7, v3

    move-object/from16 v8, v38

    .line 80
    iget v9, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->m:I

    iget v10, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->n:I

    iget-boolean v11, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->o:Z

    invoke-static {v7, v9, v10, v11}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->g(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v9

    .line 81
    aget-object v10, v36, v3

    move v11, v5

    move v5, v4

    move v4, v2

    move v2, v1

    move-object v1, v0

    const/4 v0, 0x0

    .line 82
    :goto_19
    iget v12, v7, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    if-ge v0, v12, :cond_2a

    .line 83
    aget v12, v10, v0

    iget-boolean v13, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    invoke-static {v12, v13}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->h(IZ)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 84
    iget-object v12, v7, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v12, v12, v0

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v14, v9

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    iget v13, v12, Landroidx/media2/exoplayer/external/Format;->n:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1a

    iget v15, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->f:I

    if-gt v13, v15, :cond_1e

    :cond_1a
    iget v13, v12, Landroidx/media2/exoplayer/external/Format;->o:I

    if-eq v13, v14, :cond_1b

    iget v14, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    if-gt v13, v14, :cond_1e

    :cond_1b
    iget v13, v12, Landroidx/media2/exoplayer/external/Format;->p:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v14, v13, v14

    if-eqz v14, :cond_1c

    iget v14, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_1e

    :cond_1c
    iget v13, v12, Landroidx/media2/exoplayer/external/Format;->e:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1d

    iget v14, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->i:I

    if-gt v13, v14, :cond_1e

    :cond_1d
    const/4 v13, 0x1

    goto :goto_1a

    :cond_1e
    const/4 v13, 0x0

    :goto_1a
    if-nez v13, :cond_1f

    .line 86
    iget-boolean v14, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j:Z

    if-nez v14, :cond_1f

    goto/16 :goto_20

    :cond_1f
    if-eqz v13, :cond_20

    const/4 v14, 0x2

    goto :goto_1b

    :cond_20
    const/4 v14, 0x1

    .line 87
    :goto_1b
    aget v15, v10, v0

    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-static {v15, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->h(IZ)Z

    move-result v15

    if-eqz v15, :cond_21

    add-int/lit16 v14, v14, 0x3e8

    :cond_21
    if-le v14, v5, :cond_22

    const/4 v1, 0x1

    goto :goto_1c

    :cond_22
    const/4 v1, 0x0

    :goto_1c
    if-ne v14, v5, :cond_27

    .line 88
    iget v1, v12, Landroidx/media2/exoplayer/external/Format;->e:I

    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e(II)I

    move-result v1

    move/from16 v17, v5

    .line 89
    iget-boolean v5, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    if-eqz v5, :cond_23

    if-eqz v1, :cond_23

    if-gez v1, :cond_26

    goto :goto_1e

    .line 90
    :cond_23
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/Format;->w()I

    move-result v1

    if-eq v1, v2, :cond_24

    .line 91
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e(II)I

    move-result v1

    goto :goto_1d

    .line 92
    :cond_24
    iget v1, v12, Landroidx/media2/exoplayer/external/Format;->e:I

    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e(II)I

    move-result v1

    :goto_1d
    if-eqz v15, :cond_25

    if-eqz v13, :cond_25

    if-lez v1, :cond_26

    goto :goto_1e

    :cond_25
    if-gez v1, :cond_26

    :goto_1e
    const/4 v1, 0x1

    goto :goto_1f

    :cond_26
    const/4 v1, 0x0

    goto :goto_1f

    :cond_27
    move/from16 v17, v5

    :goto_1f
    if-eqz v1, :cond_29

    .line 93
    iget v1, v12, Landroidx/media2/exoplayer/external/Format;->e:I

    .line 94
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/Format;->w()I

    move-result v2

    move v11, v0

    move v4, v1

    move-object v1, v7

    move v5, v14

    goto :goto_21

    :cond_28
    :goto_20
    move-object/from16 v16, v1

    move/from16 v17, v5

    :cond_29
    move-object/from16 v1, v16

    move/from16 v5, v17

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_19

    :cond_2a
    move-object/from16 v16, v1

    move/from16 v17, v5

    add-int/lit8 v3, v3, 0x1

    move v1, v2

    move v2, v4

    move-object/from16 v38, v8

    move v5, v11

    move-object/from16 v0, v16

    move/from16 v4, v17

    goto/16 :goto_18

    :cond_2b
    move-object/from16 v8, v38

    if-nez v0, :cond_2c

    const/4 v15, 0x0

    goto :goto_22

    .line 95
    :cond_2c
    new-instance v15, Ln3/y/b/a/v0/e$a;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v1, 0x0

    aput v5, v2, v1

    invoke-direct {v15, v0, v2}, Ln3/y/b/a/v0/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    :goto_22
    move-object v1, v15

    goto :goto_23

    :cond_2d
    move-object/from16 v8, v38

    .line 96
    :goto_23
    aput-object v1, v32, v33

    .line 97
    aget-object v0, v32, v33

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_24

    :cond_2e
    const/4 v0, 0x0

    :goto_24
    move v11, v0

    move-object v12, v8

    move-object/from16 v0, v31

    goto :goto_25

    :cond_2f
    move-object/from16 v26, v1

    move/from16 v29, v4

    move-object/from16 v24, v5

    move-object/from16 v28, v6

    move-object/from16 v32, v7

    move/from16 v33, v8

    move/from16 v30, v9

    move-object/from16 v27, v14

    move-object v8, v2

    .line 98
    :goto_25
    iget-object v1, v0, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v1, v1, v33

    .line 99
    iget v1, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-lez v1, :cond_30

    const/4 v1, 0x1

    goto :goto_26

    :cond_30
    const/4 v1, 0x0

    :goto_26
    or-int v9, v30, v1

    move-object v10, v0

    goto :goto_27

    :cond_31
    move-object/from16 v26, v1

    move/from16 v29, v4

    move-object/from16 v24, v5

    move-object/from16 v28, v6

    move-object/from16 v32, v7

    move/from16 v33, v8

    move/from16 v30, v9

    move-object/from16 v27, v14

    move-object v8, v2

    :goto_27
    add-int/lit8 v1, v33, 0x1

    move-object v2, v8

    move-object/from16 v5, v24

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    move/from16 v4, v29

    move-object/from16 v7, v32

    const/4 v3, 0x1

    move v8, v1

    move-object/from16 v1, v26

    goto/16 :goto_9

    :cond_32
    move-object/from16 v26, v1

    move-object v8, v2

    move-object/from16 v24, v5

    move-object/from16 v28, v6

    move-object/from16 v32, v7

    move/from16 v30, v9

    move-object/from16 v27, v14

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_28
    if-ge v3, v4, :cond_49

    .line 100
    iget-object v6, v10, Ln3/y/b/a/v0/d$a;->b:[I

    aget v6, v6, v3

    const/4 v7, 0x1

    if-ne v7, v6, :cond_48

    xor-int/lit8 v6, v30, 0x1

    .line 101
    iget-object v7, v10, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v7, v7, v3

    .line 102
    aget-object v9, v28, v3

    aget v10, v27, v3

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    .line 103
    :goto_29
    iget v15, v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v14, v15, :cond_38

    .line 104
    iget-object v15, v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v15, v15, v14

    .line 105
    aget-object v16, v9, v14

    move/from16 v18, v11

    move/from16 v17, v13

    move-object v11, v10

    const/4 v10, 0x0

    .line 106
    :goto_2a
    iget v13, v15, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    if-ge v10, v13, :cond_37

    .line 107
    aget v13, v16, v10

    move-object/from16 v19, v5

    iget-boolean v5, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    invoke-static {v13, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->h(IZ)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 108
    iget-object v5, v15, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v5, v5, v10

    .line 109
    new-instance v13, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-object/from16 v20, v15

    aget v15, v16, v10

    invoke-direct {v13, v5, v12, v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;-><init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 110
    iget-boolean v5, v13, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a:Z

    if-nez v5, :cond_33

    iget-boolean v5, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:Z

    if-nez v5, :cond_33

    goto :goto_2b

    :cond_33
    if-eqz v11, :cond_34

    .line 111
    invoke-virtual {v13, v11}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;)I

    move-result v5

    if-lez v5, :cond_36

    :cond_34
    move/from16 v17, v10

    move-object v11, v13

    move/from16 v18, v14

    goto :goto_2b

    :cond_35
    move-object/from16 v20, v15

    :cond_36
    :goto_2b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v19

    move-object/from16 v15, v20

    goto :goto_2a

    :cond_37
    move-object/from16 v19, v5

    add-int/lit8 v14, v14, 0x1

    move-object v10, v11

    move/from16 v13, v17

    move/from16 v11, v18

    goto :goto_29

    :cond_38
    move-object/from16 v19, v5

    const/4 v5, -0x1

    if-ne v11, v5, :cond_39

    move-object/from16 v31, v0

    move-object/from16 v20, v1

    move/from16 v18, v2

    move/from16 v17, v3

    move/from16 v29, v4

    move-object/from16 v16, v8

    const/4 v0, 0x0

    goto/16 :goto_30

    .line 112
    :cond_39
    iget-object v5, v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v5, v5, v11

    .line 113
    iget-boolean v7, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    if-nez v7, :cond_41

    iget-boolean v7, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    if-nez v7, :cond_41

    if-eqz v6, :cond_41

    .line 114
    aget-object v6, v9, v11

    iget v7, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:I

    iget-boolean v9, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:Z

    iget-boolean v11, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->t:Z

    iget-boolean v12, v12, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->u:Z

    .line 115
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v31, v0

    move/from16 v29, v4

    move-object/from16 v16, v8

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    .line 116
    :goto_2c
    iget v4, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    if-ge v8, v4, :cond_3d

    .line 117
    iget-object v4, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v4, v4, v8

    move/from16 v17, v3

    .line 118
    new-instance v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;

    move/from16 v18, v2

    iget v2, v4, Landroidx/media2/exoplayer/external/Format;->v:I

    move-object/from16 v20, v1

    iget v1, v4, Landroidx/media2/exoplayer/external/Format;->w:I

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    invoke-direct {v3, v2, v1, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;-><init>(IILjava/lang/String;)V

    .line 119
    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 120
    :goto_2d
    iget v4, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    if-ge v1, v4, :cond_3b

    .line 121
    iget-object v4, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v33, v4, v1

    .line 122
    aget v34, v6, v1

    move-object/from16 v35, v3

    move/from16 v36, v7

    move/from16 v37, v9

    move/from16 v38, v11

    move/from16 v39, v12

    .line 123
    invoke-static/range {v33 .. v39}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->i(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;IZZZ)Z

    move-result v4

    if-eqz v4, :cond_3a

    add-int/lit8 v2, v2, 0x1

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_3b
    if-le v2, v0, :cond_3c

    move v0, v2

    move-object v15, v3

    :cond_3c
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v17

    move/from16 v2, v18

    move-object/from16 v1, v20

    goto :goto_2c

    :cond_3d
    move-object/from16 v20, v1

    move/from16 v18, v2

    move/from16 v17, v3

    const/4 v1, 0x1

    if-le v0, v1, :cond_3f

    .line 124
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 126
    :goto_2e
    iget v3, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    if-ge v1, v3, :cond_40

    .line 127
    iget-object v3, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v33, v3, v1

    .line 128
    aget v34, v6, v1

    move-object/from16 v35, v15

    move/from16 v36, v7

    move/from16 v37, v9

    move/from16 v38, v11

    move/from16 v39, v12

    invoke-static/range {v33 .. v39}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->i(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;IZZZ)Z

    move-result v3

    if-eqz v3, :cond_3e

    add-int/lit8 v3, v2, 0x1

    .line 129
    aput v1, v0, v2

    move v2, v3

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3f
    move-object/from16 v0, v24

    .line 130
    :cond_40
    array-length v1, v0

    if-lez v1, :cond_42

    .line 131
    new-instance v1, Ln3/y/b/a/v0/e$a;

    invoke-direct {v1, v5, v0}, Ln3/y/b/a/v0/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    goto :goto_2f

    :cond_41
    move-object/from16 v31, v0

    move-object/from16 v20, v1

    move/from16 v18, v2

    move/from16 v17, v3

    move/from16 v29, v4

    move-object/from16 v16, v8

    :cond_42
    const/4 v1, 0x0

    :goto_2f
    if-nez v1, :cond_43

    .line 132
    new-instance v1, Ln3/y/b/a/v0/e$a;

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v0, 0x0

    aput v13, v2, v0

    invoke-direct {v1, v5, v2}, Ln3/y/b/a/v0/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 133
    :cond_43
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v1, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_30
    if-eqz v0, :cond_47

    if-eqz v20, :cond_45

    .line 135
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-object/from16 v2, v20

    .line 136
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;)I

    move-result v1

    if-lez v1, :cond_44

    goto :goto_31

    :cond_44
    move/from16 v1, v18

    goto :goto_32

    :cond_45
    :goto_31
    move/from16 v1, v18

    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    const/4 v2, 0x0

    .line 137
    aput-object v2, v32, v1

    .line 138
    :cond_46
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ln3/y/b/a/v0/e$a;

    .line 139
    aput-object v1, v32, v17

    .line 140
    iget-object v2, v1, Ln3/y/b/a/v0/e$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, v1, Ln3/y/b/a/v0/e$a;->b:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 141
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v1, v2, v1

    .line 142
    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    .line 143
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-object v5, v1

    move/from16 v2, v17

    move-object v1, v0

    goto :goto_33

    :cond_47
    move/from16 v1, v18

    move-object/from16 v2, v20

    goto :goto_32

    :cond_48
    move-object/from16 v31, v0

    move/from16 v17, v3

    move/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v8

    move/from16 v48, v2

    move-object v2, v1

    move/from16 v1, v48

    :goto_32
    move-object/from16 v5, v19

    move-object/from16 v48, v2

    move v2, v1

    move-object/from16 v1, v48

    :goto_33
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v8, v16

    move-object v12, v8

    move/from16 v4, v29

    move-object/from16 v0, v31

    move-object v10, v0

    goto/16 :goto_28

    :cond_49
    move-object/from16 v31, v0

    move/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v8

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_34
    const/4 v3, 0x3

    move/from16 v4, v29

    if-ge v1, v4, :cond_5d

    move-object/from16 v5, v31

    .line 144
    iget-object v6, v5, Ln3/y/b/a/v0/d$a;->b:[I

    aget v6, v6, v1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5b

    if-eq v6, v3, :cond_52

    .line 145
    iget-object v3, v5, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v3, v3, v1

    .line 146
    aget-object v6, v28, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 147
    :goto_35
    iget v11, v3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v8, v11, :cond_50

    .line 148
    iget-object v11, v3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v11, v11, v8

    .line 149
    aget-object v12, v6, v8

    move v13, v10

    move v10, v9

    move-object v9, v7

    const/4 v7, 0x0

    .line 150
    :goto_36
    iget v14, v11, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    if-ge v7, v14, :cond_4f

    .line 151
    aget v14, v12, v7

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    iget-boolean v3, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    invoke-static {v14, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->h(IZ)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 152
    iget-object v3, v11, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v3, v3, v7

    .line 153
    iget v3, v3, Landroidx/media2/exoplayer/external/Format;->c:I

    const/4 v14, 0x1

    and-int/2addr v3, v14

    if-eqz v3, :cond_4a

    const/4 v3, 0x1

    goto :goto_37

    :cond_4a
    const/4 v3, 0x0

    :goto_37
    if-eqz v3, :cond_4b

    const/4 v3, 0x2

    goto :goto_38

    :cond_4b
    const/4 v3, 0x1

    .line 154
    :goto_38
    aget v14, v12, v7

    move-object/from16 v17, v6

    const/4 v6, 0x0

    invoke-static {v14, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->h(IZ)Z

    move-result v14

    if-eqz v14, :cond_4c

    add-int/lit16 v3, v3, 0x3e8

    :cond_4c
    if-le v3, v10, :cond_4e

    move v10, v3

    move v13, v7

    move-object v9, v11

    goto :goto_39

    :cond_4d
    move-object/from16 v17, v6

    :cond_4e
    :goto_39
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v16, v15

    goto :goto_36

    :cond_4f
    move-object/from16 v17, v6

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    add-int/lit8 v8, v8, 0x1

    move-object v7, v9

    move v9, v10

    move v10, v13

    move-object/from16 v16, v15

    goto :goto_35

    :cond_50
    move-object/from16 v15, v16

    if-nez v7, :cond_51

    const/4 v3, 0x0

    goto :goto_3a

    .line 155
    :cond_51
    new-instance v3, Ln3/y/b/a/v0/e$a;

    const/4 v6, 0x1

    new-array v8, v6, [I

    const/4 v6, 0x0

    aput v10, v8, v6

    invoke-direct {v3, v7, v8}, Ln3/y/b/a/v0/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 156
    :goto_3a
    aput-object v3, v32, v1

    goto/16 :goto_3f

    :cond_52
    move-object/from16 v15, v16

    .line 157
    iget-object v3, v5, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v3, v3, v1

    .line 158
    aget-object v6, v28, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 159
    :goto_3b
    iget v11, v3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v10, v11, :cond_57

    .line 160
    iget-object v11, v3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v11, v11, v10

    .line 161
    aget-object v12, v6, v10

    move v13, v9

    move-object v9, v8

    move-object v8, v7

    const/4 v7, 0x0

    .line 162
    :goto_3c
    iget v14, v11, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    if-ge v7, v14, :cond_56

    .line 163
    aget v14, v12, v7

    move-object/from16 v16, v3

    iget-boolean v3, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    invoke-static {v14, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->h(IZ)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 164
    iget-object v3, v11, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v3, v3, v7

    .line 165
    new-instance v14, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    move-object/from16 v17, v6

    aget v6, v12, v7

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    invoke-direct {v14, v3, v15, v6, v11}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;-><init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V

    .line 166
    iget-boolean v3, v14, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->a:Z

    if-eqz v3, :cond_55

    if-eqz v9, :cond_53

    .line 167
    invoke-virtual {v14, v9}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;)I

    move-result v3

    if-lez v3, :cond_55

    :cond_53
    move v13, v7

    move-object v9, v14

    move-object/from16 v8, v18

    goto :goto_3d

    :cond_54
    move-object/from16 v17, v6

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    :cond_55
    :goto_3d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v19, v11

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v11, v18

    goto :goto_3c

    :cond_56
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v11, v19

    add-int/lit8 v10, v10, 0x1

    move-object v7, v8

    move-object v8, v9

    move v9, v13

    goto :goto_3b

    :cond_57
    move-object/from16 v11, v19

    if-nez v7, :cond_58

    const/4 v3, 0x0

    goto :goto_3e

    .line 168
    :cond_58
    new-instance v3, Ln3/y/b/a/v0/e$a;

    const/4 v6, 0x1

    new-array v10, v6, [I

    const/4 v6, 0x0

    aput v9, v10, v6

    invoke-direct {v3, v7, v10}, Ln3/y/b/a/v0/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 169
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_3e
    if-eqz v3, :cond_5c

    if-eqz v2, :cond_59

    .line 171
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    .line 172
    invoke-virtual {v6, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;)I

    move-result v6

    if-lez v6, :cond_5c

    :cond_59
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5a

    const/4 v2, 0x0

    .line 173
    aput-object v2, v32, v0

    .line 174
    :cond_5a
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ln3/y/b/a/v0/e$a;

    aput-object v0, v32, v1

    .line 175
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    move-object v2, v0

    move v0, v1

    goto :goto_40

    :cond_5b
    move-object/from16 v15, v16

    :goto_3f
    move-object/from16 v11, v19

    :cond_5c
    :goto_40
    add-int/lit8 v1, v1, 0x1

    move/from16 v29, v4

    move-object/from16 v31, v5

    move-object/from16 v19, v11

    move-object/from16 v16, v15

    goto/16 :goto_34

    :cond_5d
    move-object/from16 v15, v16

    move-object/from16 v5, v31

    const/4 v0, 0x0

    :goto_41
    if-ge v0, v4, :cond_63

    .line 176
    iget-object v1, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v2, 0x0

    .line 177
    aput-object v2, v32, v0

    goto :goto_45

    :cond_5e
    const/4 v2, 0x0

    .line 178
    iget-object v1, v5, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v1, v1, v0

    .line 179
    iget-object v6, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_5f

    .line 180
    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v6, 0x1

    goto :goto_42

    :cond_5f
    const/4 v6, 0x0

    :goto_42
    if-eqz v6, :cond_62

    .line 181
    iget-object v6, v15, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_60

    .line 182
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_43

    :cond_60
    move-object v6, v2

    :goto_43
    if-nez v6, :cond_61

    move-object v7, v2

    goto :goto_44

    .line 183
    :cond_61
    new-instance v7, Ln3/y/b/a/v0/e$a;

    iget v8, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->a:I

    .line 184
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v1, v1, v8

    .line 185
    iget-object v8, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->b:[I

    iget v9, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->d:I

    iget v6, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->e:I

    .line 186
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v7, v1, v8, v9, v6}, Ln3/y/b/a/v0/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/Object;)V

    :goto_44
    aput-object v7, v32, v0

    :cond_62
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_63
    move-object/from16 v0, v26

    const/4 v2, 0x0

    .line 187
    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d:Ln3/y/b/a/v0/e$b;

    .line 188
    iget-object v0, v0, Ln3/y/b/a/v0/g;->b:Ln3/y/b/a/w0/d;

    .line 189
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    check-cast v1, Ln3/y/b/a/v0/a$d;

    .line 191
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-array v1, v4, [Ln3/y/b/a/v0/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_46
    if-ge v6, v4, :cond_65

    .line 193
    aget-object v8, v32, v6

    if-eqz v8, :cond_64

    .line 194
    iget-object v9, v8, Ln3/y/b/a/v0/e$a;->b:[I

    array-length v10, v9

    const/4 v11, 0x1

    if-ne v10, v11, :cond_64

    .line 195
    new-instance v10, Ln3/y/b/a/v0/c;

    iget-object v11, v8, Ln3/y/b/a/v0/e$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v12, 0x0

    aget v9, v9, v12

    iget v13, v8, Ln3/y/b/a/v0/e$a;->c:I

    iget-object v14, v8, Ln3/y/b/a/v0/e$a;->d:Ljava/lang/Object;

    invoke-direct {v10, v11, v9, v13, v14}, Ln3/y/b/a/v0/c;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;IILjava/lang/Object;)V

    aput-object v10, v1, v6

    .line 196
    iget-object v9, v8, Ln3/y/b/a/v0/e$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v8, v8, Ln3/y/b/a/v0/e$a;->b:[I

    aget v8, v8, v12

    .line 197
    iget-object v9, v9, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v8, v9, v8

    .line 198
    iget v8, v8, Landroidx/media2/exoplayer/external/Format;->e:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_64

    add-int/2addr v7, v8

    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 199
    :cond_65
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_47
    if-ge v8, v4, :cond_67

    .line 200
    aget-object v9, v32, v8

    if-eqz v9, :cond_66

    .line 201
    iget-object v10, v9, Ln3/y/b/a/v0/e$a;->b:[I

    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_66

    .line 202
    iget-object v9, v9, Ln3/y/b/a/v0/e$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 203
    new-instance v11, Ln3/y/b/a/v0/a;

    new-instance v12, Ln3/y/b/a/v0/a$c;

    const/high16 v13, 0x3f400000    # 0.75f

    int-to-long v2, v7

    invoke-direct {v12, v0, v13, v2, v3}, Ln3/y/b/a/v0/a$c;-><init>(Ln3/y/b/a/w0/d;FJ)V

    const/16 v2, 0x2710

    int-to-long v2, v2

    const/16 v13, 0x61a8

    move-object/from16 v16, v15

    int-to-long v14, v13

    const/high16 v43, 0x3f400000    # 0.75f

    const-wide/16 v44, 0x7d0

    sget-object v46, Ln3/y/b/a/x0/a;->a:Ln3/y/b/a/x0/a;

    const/16 v47, 0x0

    move-object/from16 v33, v11

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v12

    move-wide/from16 v37, v2

    move-wide/from16 v39, v14

    move-wide/from16 v41, v14

    invoke-direct/range {v33 .. v47}, Ln3/y/b/a/v0/a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILn3/y/b/a/v0/a$b;JJJFJLn3/y/b/a/x0/a;Ln3/y/b/a/v0/a$a;)V

    .line 204
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    aput-object v11, v1, v8

    goto :goto_48

    :cond_66
    move-object/from16 v16, v15

    :goto_48
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v15, v16

    const/4 v2, 0x0

    const/4 v3, 0x3

    goto :goto_47

    :cond_67
    move-object/from16 v16, v15

    .line 206
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_78

    .line 207
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [[J

    const/4 v3, 0x0

    .line 208
    :goto_49
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_69

    .line 209
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/y/b/a/v0/a;

    .line 210
    iget-object v8, v7, Ln3/y/b/a/v0/b;->c:[I

    array-length v8, v8

    .line 211
    new-array v8, v8, [J

    aput-object v8, v2, v3

    const/4 v8, 0x0

    .line 212
    :goto_4a
    iget-object v9, v7, Ln3/y/b/a/v0/b;->c:[I

    array-length v10, v9

    if-ge v8, v10, :cond_68

    .line 213
    aget-object v10, v2, v3

    .line 214
    array-length v9, v9

    sub-int/2addr v9, v8

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    .line 215
    iget-object v11, v7, Ln3/y/b/a/v0/b;->d:[Landroidx/media2/exoplayer/external/Format;

    aget-object v9, v11, v9

    .line 216
    iget v9, v9, Landroidx/media2/exoplayer/external/Format;->e:I

    int-to-long v11, v9

    aput-wide v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 217
    :cond_69
    new-array v3, v0, [[D

    const/4 v7, 0x0

    :goto_4b
    const-wide/16 v8, 0x0

    if-ge v7, v0, :cond_6c

    .line 218
    aget-object v10, v2, v7

    array-length v10, v10

    new-array v10, v10, [D

    aput-object v10, v3, v7

    const/4 v10, 0x0

    .line 219
    :goto_4c
    aget-object v11, v2, v7

    array-length v11, v11

    if-ge v10, v11, :cond_6b

    .line 220
    aget-object v11, v3, v7

    aget-object v12, v2, v7

    aget-wide v13, v12, v10

    const-wide/16 v18, -0x1

    cmp-long v12, v13, v18

    if-nez v12, :cond_6a

    move-wide v12, v8

    goto :goto_4d

    :cond_6a
    aget-object v12, v2, v7

    aget-wide v13, v12, v10

    long-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    :goto_4d
    aput-wide v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 221
    :cond_6c
    new-array v7, v0, [[D

    const/4 v10, 0x0

    :goto_4e
    if-ge v10, v0, :cond_70

    .line 222
    aget-object v11, v3, v10

    array-length v11, v11

    const/4 v12, -0x1

    add-int/2addr v11, v12

    new-array v11, v11, [D

    aput-object v11, v7, v10

    .line 223
    aget-object v11, v7, v10

    array-length v11, v11

    if-nez v11, :cond_6d

    goto :goto_51

    .line 224
    :cond_6d
    aget-object v11, v3, v10

    aget-object v13, v3, v10

    array-length v13, v13

    add-int/2addr v13, v12

    aget-wide v13, v11, v13

    aget-object v11, v3, v10

    const/4 v15, 0x0

    aget-wide v18, v11, v15

    sub-double v13, v13, v18

    const/4 v11, 0x0

    .line 225
    :goto_4f
    aget-object v15, v3, v10

    array-length v15, v15

    add-int/2addr v15, v12

    if-ge v11, v15, :cond_6f

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    .line 226
    aget-object v12, v3, v10

    aget-wide v20, v12, v11

    aget-object v12, v3, v10

    add-int/lit8 v15, v11, 0x1

    aget-wide v22, v12, v15

    add-double v20, v20, v22

    mul-double v20, v20, v18

    .line 227
    aget-object v12, v7, v10

    cmpl-double v18, v13, v8

    if-nez v18, :cond_6e

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    goto :goto_50

    .line 228
    :cond_6e
    aget-object v18, v3, v10

    const/16 v19, 0x0

    aget-wide v22, v18, v19

    sub-double v20, v20, v22

    div-double v18, v20, v13

    :goto_50
    aput-wide v18, v12, v11

    move v11, v15

    const/4 v12, -0x1

    goto :goto_4f

    :cond_6f
    :goto_51
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    :cond_70
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_52
    if-ge v8, v0, :cond_71

    .line 229
    aget-object v10, v7, v8

    .line 230
    array-length v10, v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    :cond_71
    const/4 v8, 0x3

    add-int/2addr v9, v8

    new-array v8, v8, [I

    const/4 v10, 0x2

    aput v10, v8, v10

    const/4 v10, 0x1

    aput v9, v8, v10

    const/4 v11, 0x0

    aput v0, v8, v11

    .line 231
    const-class v11, J

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[J

    .line 232
    new-array v11, v0, [I

    .line 233
    invoke-static {v8, v10, v2, v11}, Ln3/y/b/a/v0/a;->s([[[JI[[J[I)V

    const/4 v12, 0x2

    :goto_53
    add-int/lit8 v13, v9, -0x1

    if-ge v12, v13, :cond_75

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v18, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_54
    if-ge v13, v0, :cond_74

    .line 234
    aget v15, v11, v13

    add-int/2addr v15, v10

    aget-object v10, v3, v13

    array-length v10, v10

    if-ne v15, v10, :cond_72

    goto :goto_55

    .line 235
    :cond_72
    aget-object v10, v7, v13

    aget v15, v11, v13

    aget-wide v20, v10, v15

    cmpg-double v10, v20, v18

    if-gez v10, :cond_73

    move v14, v13

    move-wide/from16 v18, v20

    :cond_73
    :goto_55
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto :goto_54

    .line 236
    :cond_74
    aget v10, v11, v14

    const/4 v13, 0x1

    add-int/2addr v10, v13

    aput v10, v11, v14

    .line 237
    invoke-static {v8, v12, v2, v11}, Ln3/y/b/a/v0/a;->s([[[JI[[J[I)V

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_53

    .line 238
    :cond_75
    array-length v0, v8

    const/4 v2, 0x0

    :goto_56
    if-ge v2, v0, :cond_76

    aget-object v3, v8, v2

    .line 239
    aget-object v7, v3, v13

    add-int/lit8 v10, v9, -0x2

    aget-object v11, v3, v10

    const/4 v12, 0x0

    aget-wide v14, v11, v12

    const-wide/16 v18, 0x2

    mul-long v14, v14, v18

    aput-wide v14, v7, v12

    .line 240
    aget-object v7, v3, v13

    aget-object v3, v3, v10

    const/4 v10, 0x1

    aget-wide v14, v3, v10

    mul-long v14, v14, v18

    aput-wide v14, v7, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_76
    const/4 v12, 0x0

    move v0, v12

    .line 241
    :goto_57
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_79

    .line 242
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/v0/a;

    aget-object v3, v8, v0

    .line 243
    iget-object v2, v2, Ln3/y/b/a/v0/a;->g:Ln3/y/b/a/v0/a$b;

    check-cast v2, Ln3/y/b/a/v0/a$c;

    .line 244
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    array-length v7, v3

    const/4 v9, 0x2

    if-lt v7, v9, :cond_77

    const/4 v7, 0x1

    goto :goto_58

    :cond_77
    move v7, v12

    :goto_58
    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 246
    iput-object v3, v2, Ln3/y/b/a/v0/a$c;->d:[[J

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_78
    const/4 v12, 0x0

    .line 247
    :cond_79
    new-array v0, v4, [Ln3/y/b/a/i0;

    move v2, v12

    :goto_59
    if-ge v2, v4, :cond_7d

    move-object/from16 v3, v16

    .line 248
    iget-object v6, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 249
    iget-object v6, v5, Ln3/y/b/a/v0/d$a;->b:[I

    aget v6, v6, v2

    const/4 v7, 0x6

    if-eq v6, v7, :cond_7a

    .line 250
    aget-object v6, v1, v2

    if-eqz v6, :cond_7b

    :cond_7a
    const/4 v6, 0x1

    goto :goto_5a

    :cond_7b
    move v6, v12

    :goto_5a
    if-eqz v6, :cond_7c

    .line 251
    sget-object v6, Ln3/y/b/a/i0;->b:Ln3/y/b/a/i0;

    goto :goto_5b

    :cond_7c
    const/4 v6, 0x0

    :goto_5b
    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v3

    goto :goto_59

    :cond_7d
    move-object/from16 v3, v16

    .line 252
    iget v2, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->y:I

    if-nez v2, :cond_7e

    goto/16 :goto_63

    :cond_7e
    move v3, v12

    const/4 v4, -0x1

    const/4 v8, -0x1

    .line 253
    :goto_5c
    iget v6, v5, Ln3/y/b/a/v0/d$a;->a:I

    if-ge v3, v6, :cond_86

    .line 254
    iget-object v6, v5, Ln3/y/b/a/v0/d$a;->b:[I

    aget v6, v6, v3

    .line 255
    aget-object v7, v1, v3

    const/4 v9, 0x1

    if-eq v6, v9, :cond_80

    const/4 v9, 0x2

    if-ne v6, v9, :cond_7f

    goto :goto_5d

    :cond_7f
    const/4 v6, -0x1

    const/4 v7, 0x1

    goto :goto_61

    :cond_80
    const/4 v9, 0x2

    :goto_5d
    if-eqz v7, :cond_7f

    .line 256
    aget-object v10, v28, v3

    .line 257
    iget-object v11, v5, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v11, v11, v3

    .line 258
    invoke-interface {v7}, Ln3/y/b/a/v0/e;->f()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v11

    move v13, v12

    .line 259
    :goto_5e
    invoke-interface {v7}, Ln3/y/b/a/v0/e;->length()I

    move-result v14

    if-ge v13, v14, :cond_82

    .line 260
    aget-object v14, v10, v11

    invoke-interface {v7, v13}, Ln3/y/b/a/v0/e;->d(I)I

    move-result v15

    aget v14, v14, v15

    const/16 v15, 0x20

    and-int/2addr v14, v15

    if-eq v14, v15, :cond_81

    move v7, v12

    goto :goto_5f

    :cond_81
    add-int/lit8 v13, v13, 0x1

    goto :goto_5e

    :cond_82
    const/4 v7, 0x1

    :goto_5f
    if-eqz v7, :cond_7f

    const/4 v7, 0x1

    if-ne v6, v7, :cond_84

    const/4 v6, -0x1

    if-eq v4, v6, :cond_83

    goto :goto_60

    :cond_83
    move v4, v3

    goto :goto_61

    :cond_84
    const/4 v6, -0x1

    if-eq v8, v6, :cond_85

    :goto_60
    move v3, v12

    goto :goto_62

    :cond_85
    move v8, v3

    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_86
    const/4 v6, -0x1

    const/4 v7, 0x1

    move v3, v7

    :goto_62
    if-eq v4, v6, :cond_87

    if-eq v8, v6, :cond_87

    move v12, v7

    :cond_87
    and-int/2addr v3, v12

    if-eqz v3, :cond_88

    .line 261
    new-instance v3, Ln3/y/b/a/i0;

    invoke-direct {v3, v2}, Ln3/y/b/a/i0;-><init>(I)V

    .line 262
    aput-object v3, v0, v4

    .line 263
    aput-object v3, v0, v8

    .line 264
    :cond_88
    :goto_63
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 265
    new-instance v1, Ln3/y/b/a/v0/h;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ln3/y/b/a/i0;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ln3/y/b/a/v0/e;

    invoke-direct {v1, v2, v0, v5}, Ln3/y/b/a/v0/h;-><init>([Ln3/y/b/a/i0;[Ln3/y/b/a/v0/e;Ljava/lang/Object;)V

    return-object v1
.end method
