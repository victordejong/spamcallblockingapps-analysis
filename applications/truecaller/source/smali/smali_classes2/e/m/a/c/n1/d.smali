.class public abstract Le/m/a/c/n1/d;
.super Le/m/a/c/n1/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/n1/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/c/n1/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/m/a/c/n1/d$a;

    return-void
.end method

.method public final b([Le/m/a/c/u;Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/l1/p$a;Le/m/a/c/y0;)Le/m/a/c/n1/i;
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
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

    new-array v5, v4, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 3
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v13, 0x0

    move v7, v13

    :goto_0
    if-ge v7, v4, :cond_0

    .line 4
    iget v8, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:I

    new-array v9, v8, [Lcom/google/android/exoplayer2/source/TrackGroup;

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

    move v7, v13

    :goto_1
    if-ge v7, v4, :cond_1

    .line 7
    aget-object v8, v0, v7

    invoke-virtual {v8}, Le/m/a/c/u;->H()I

    move-result v8

    aput v8, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v4, v13

    .line 8
    :goto_2
    iget v7, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:I

    if-ge v4, v7, :cond_a

    .line 9
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v7, v7, v4

    .line 10
    iget-object v8, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v8, v8, v13

    .line 11
    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-static {v8}, Le/m/a/c/q1/q;->e(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    move v8, v3

    goto :goto_3

    :cond_2
    move v8, v13

    .line 12
    :goto_3
    array-length v9, v0

    move v12, v3

    move v10, v13

    move v11, v10

    .line 13
    :goto_4
    array-length v15, v0

    if-ge v10, v15, :cond_7

    .line 14
    aget-object v15, v0, v10

    move v3, v13

    .line 15
    :goto_5
    iget v1, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v13, v1, :cond_3

    .line 16
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v13

    .line 17
    invoke-virtual {v15, v1}, Le/m/a/c/u;->F(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 18
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 19
    :cond_3
    aget v1, v2, v10

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :goto_6
    if-gt v3, v11, :cond_5

    if-ne v3, v11, :cond_6

    if-eqz v8, :cond_6

    if-nez v12, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    move v12, v1

    move v11, v3

    move v9, v10

    :cond_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    const/4 v13, 0x0

    goto :goto_4

    .line 20
    :cond_7
    array-length v1, v0

    if-ne v9, v1, :cond_8

    iget v1, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    new-array v1, v1, [I

    goto :goto_8

    :cond_8
    aget-object v1, v0, v9

    .line 21
    iget v3, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    new-array v3, v3, [I

    const/4 v8, 0x0

    .line 22
    :goto_7
    iget v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v8, v10, :cond_9

    .line 23
    iget-object v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v10, v10, v8

    .line 24
    invoke-virtual {v1, v10}, Le/m/a/c/u;->F(Lcom/google/android/exoplayer2/Format;)I

    move-result v10

    aput v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v3

    .line 25
    :goto_8
    aget v3, v2, v9

    .line 26
    aget-object v8, v5, v9

    aput-object v7, v8, v3

    .line 27
    aget-object v7, v6, v9

    aput-object v1, v7, v3

    .line 28
    aget v1, v2, v9

    const/4 v3, 0x1

    add-int/2addr v1, v3

    aput v1, v2, v9

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    const/4 v13, 0x0

    goto/16 :goto_2

    .line 29
    :cond_a
    array-length v1, v0

    new-array v9, v1, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 30
    array-length v1, v0

    new-array v8, v1, [I

    const/4 v1, 0x0

    .line 31
    :goto_9
    array-length v3, v0

    if-ge v1, v3, :cond_b

    .line 32
    aget v3, v2, v1

    .line 33
    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v7, v5, v1

    .line 34
    invoke-static {v7, v3}, Le/m/a/c/q1/d0;->x([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v4, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v4, v9, v1

    .line 35
    aget-object v4, v6, v1

    .line 36
    invoke-static {v4, v3}, Le/m/a/c/q1/d0;->x([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    aput-object v3, v6, v1

    .line 37
    aget-object v3, v0, v1

    .line 38
    iget v3, v3, Le/m/a/c/u;->a:I

    .line 39
    aput v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 40
    :cond_b
    array-length v1, v0

    aget v1, v2, v1

    .line 41
    new-instance v12, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 42
    invoke-static {v0, v1}, Le/m/a/c/q1/d0;->x([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v12, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 43
    new-instance v0, Le/m/a/c/n1/d$a;

    move-object v7, v0

    move-object v10, v14

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Le/m/a/c/n1/d$a;-><init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 44
    move-object/from16 v1, p0

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 45
    iget-object v2, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 46
    iget v3, v0, Le/m/a/c/n1/d$a;->a:I

    .line 47
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->d:[I

    .line 48
    new-array v5, v3, [Le/m/a/c/n1/f$a;

    move-object v10, v0

    move-object v11, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_a
    const/4 v12, 0x2

    if-ge v7, v3, :cond_35

    .line 49
    iget-object v15, v10, Le/m/a/c/n1/d$a;->b:[I

    aget v15, v15, v7

    if-ne v12, v15, :cond_34

    if-nez v9, :cond_32

    .line 50
    iget-object v9, v10, Le/m/a/c/n1/d$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v9, v9, v7

    .line 51
    aget-object v10, v6, v7

    aget v15, v14, v7

    .line 52
    iget-boolean v13, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->x:Z

    if-nez v13, :cond_1c

    iget-boolean v13, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->w:Z

    if-nez v13, :cond_1c

    .line 53
    iget-boolean v13, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->m:Z

    if-eqz v13, :cond_c

    const/16 v13, 0x18

    goto :goto_b

    :cond_c
    const/16 v13, 0x10

    .line 54
    :goto_b
    iget-boolean v12, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->l:Z

    if-eqz v12, :cond_d

    and-int v12, v15, v13

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    goto :goto_c

    :cond_d
    const/4 v12, 0x0

    :goto_c
    move-object/from16 v24, v4

    move-object v15, v11

    const/4 v11, 0x0

    .line 55
    :goto_d
    iget v4, v9, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:I

    if-ge v11, v4, :cond_1b

    .line 56
    iget-object v4, v9, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v4, v4, v11

    .line 57
    aget-object v25, v10, v11

    move-object/from16 v26, v1

    iget v1, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->g:I

    move-object/from16 v27, v14

    iget v14, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->h:I

    move-object/from16 v28, v6

    iget v6, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->i:I

    move/from16 v29, v3

    iget v3, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->j:I

    move/from16 v30, v8

    iget v8, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->n:I

    move-object/from16 v31, v0

    iget v0, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->o:I

    iget-boolean v15, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->p:Z

    move-object/from16 v32, v5

    .line 58
    iget v5, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    move/from16 v33, v7

    const/4 v7, 0x2

    if-ge v5, v7, :cond_e

    goto :goto_e

    .line 59
    :cond_e
    invoke-static {v4, v8, v0, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->f(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v0

    .line 60
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v7, :cond_f

    :goto_e
    move-object/from16 v38, v2

    move-object/from16 v37, v10

    move/from16 v35, v12

    goto/16 :goto_14

    :cond_f
    if-nez v12, :cond_15

    .line 61
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v34, 0x0

    .line 62
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v8, v7, :cond_14

    .line 63
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move/from16 v35, v12

    .line 64
    iget-object v12, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v7, v12, v7

    .line 65
    iget-object v7, v7, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 66
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v36, v5

    move-object/from16 v37, v10

    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 67
    :goto_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v12, v10, :cond_11

    .line 68
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v38, v2

    .line 69
    iget-object v2, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v16, v2, v10

    .line 70
    aget v18, v25, v10

    move-object/from16 v17, v7

    move/from16 v19, v13

    move/from16 v20, v1

    move/from16 v21, v14

    move/from16 v22, v6

    move/from16 v23, v3

    .line 71
    invoke-static/range {v16 .. v23}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->i(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIII)Z

    move-result v2

    if-eqz v2, :cond_10

    add-int/lit8 v5, v5, 0x1

    :cond_10
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v38

    goto :goto_10

    :cond_11
    move-object/from16 v38, v2

    if-le v5, v15, :cond_13

    move v15, v5

    move-object/from16 v34, v7

    goto :goto_11

    :cond_12
    move-object/from16 v38, v2

    move-object/from16 v36, v5

    move-object/from16 v37, v10

    :cond_13
    :goto_11
    add-int/lit8 v8, v8, 0x1

    move/from16 v12, v35

    move-object/from16 v5, v36

    move-object/from16 v10, v37

    move-object/from16 v2, v38

    goto :goto_f

    :cond_14
    move-object/from16 v38, v2

    move-object/from16 v37, v10

    move/from16 v35, v12

    goto :goto_12

    :cond_15
    move-object/from16 v38, v2

    move-object/from16 v37, v10

    move/from16 v35, v12

    const/16 v34, 0x0

    .line 72
    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_16
    :goto_13
    const/4 v5, -0x1

    add-int/2addr v2, v5

    if-ltz v2, :cond_17

    .line 73
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 74
    iget-object v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v16, v7, v5

    .line 75
    aget v18, v25, v5

    move-object/from16 v17, v34

    move/from16 v19, v13

    move/from16 v20, v1

    move/from16 v21, v14

    move/from16 v22, v6

    move/from16 v23, v3

    .line 76
    invoke-static/range {v16 .. v23}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->i(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIII)Z

    move-result v5

    if-nez v5, :cond_16

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_13

    .line 78
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_18

    :goto_14
    move-object/from16 v2, v24

    goto :goto_16

    .line 79
    :cond_18
    sget v1, Le/m/a/c/q1/d0;->a:I

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 81
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_19

    .line 82
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 83
    :cond_19
    :goto_16
    array-length v0, v2

    if-lez v0, :cond_1a

    .line 84
    new-instance v0, Le/m/a/c/n1/f$a;

    invoke-direct {v0, v4, v2}, Le/m/a/c/n1/f$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    goto :goto_19

    :cond_1a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v26

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    move/from16 v3, v29

    move/from16 v8, v30

    move-object/from16 v0, v31

    move-object/from16 v5, v32

    move/from16 v7, v33

    move/from16 v12, v35

    move-object/from16 v10, v37

    move-object/from16 v2, v38

    move-object v15, v2

    goto/16 :goto_d

    :cond_1b
    move-object/from16 v31, v0

    move-object/from16 v26, v1

    move-object/from16 v38, v2

    move/from16 v29, v3

    :goto_17
    move-object/from16 v32, v5

    move-object/from16 v28, v6

    move/from16 v33, v7

    move/from16 v30, v8

    move-object/from16 v37, v10

    move-object/from16 v27, v14

    goto :goto_18

    :cond_1c
    move-object/from16 v31, v0

    move-object/from16 v26, v1

    move-object/from16 v38, v2

    move/from16 v29, v3

    move-object/from16 v24, v4

    goto :goto_17

    :goto_18
    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_30

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 85
    :goto_1a
    iget v6, v9, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:I

    if-ge v3, v6, :cond_2e

    .line 86
    iget-object v6, v9, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v6, v6, v3

    move-object/from16 v7, v38

    .line 87
    iget v8, v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->n:I

    iget v10, v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->o:I

    iget-boolean v11, v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->p:Z

    invoke-static {v6, v8, v10, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->f(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v8

    .line 88
    aget-object v10, v37, v3

    move v11, v5

    move v5, v4

    move v4, v2

    move v2, v1

    move-object v1, v0

    const/4 v0, 0x0

    .line 89
    :goto_1b
    iget v12, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v0, v12, :cond_2d

    .line 90
    aget v12, v10, v0

    iget-boolean v13, v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->y:Z

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->g(IZ)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 91
    iget-object v12, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v12, v12, v0

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v14, v8

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    iget v13, v12, Lcom/google/android/exoplayer2/Format;->n:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1d

    iget v15, v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->g:I

    if-gt v13, v15, :cond_21

    :cond_1d
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->o:I

    if-eq v13, v14, :cond_1e

    iget v14, v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->h:I

    if-gt v13, v14, :cond_21

    :cond_1e
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->p:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v14, v13, v14

    if-eqz v14, :cond_1f

    iget v14, v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->i:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_21

    :cond_1f
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->e:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_20

    iget v14, v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->j:I

    if-gt v13, v14, :cond_21

    :cond_20
    const/4 v13, 0x1

    goto :goto_1c

    :cond_21
    const/4 v13, 0x0

    :goto_1c
    if-nez v13, :cond_22

    .line 93
    iget-boolean v14, v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->k:Z

    if-nez v14, :cond_22

    goto/16 :goto_22

    :cond_22
    if-eqz v13, :cond_23

    const/4 v14, 0x2

    goto :goto_1d

    :cond_23
    const/4 v14, 0x1

    .line 94
    :goto_1d
    aget v15, v10, v0

    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->g(IZ)Z

    move-result v15

    if-eqz v15, :cond_24

    add-int/lit16 v14, v14, 0x3e8

    :cond_24
    if-le v14, v5, :cond_25

    const/4 v1, 0x1

    goto :goto_1e

    :cond_25
    const/4 v1, 0x0

    :goto_1e
    if-ne v14, v5, :cond_2a

    .line 95
    iget v1, v12, Lcom/google/android/exoplayer2/Format;->e:I

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->d(II)I

    move-result v1

    move/from16 v17, v5

    .line 96
    iget-boolean v5, v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->w:Z

    if-eqz v5, :cond_26

    if-eqz v1, :cond_26

    if-gez v1, :cond_29

    goto :goto_20

    .line 97
    :cond_26
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Format;->p()I

    move-result v1

    if-eq v1, v2, :cond_27

    .line 98
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->d(II)I

    move-result v1

    goto :goto_1f

    :cond_27
    iget v1, v12, Lcom/google/android/exoplayer2/Format;->e:I

    .line 99
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->d(II)I

    move-result v1

    :goto_1f
    if-eqz v15, :cond_28

    if-eqz v13, :cond_28

    if-lez v1, :cond_29

    goto :goto_20

    :cond_28
    if-gez v1, :cond_29

    :goto_20
    const/4 v1, 0x1

    goto :goto_21

    :cond_29
    const/4 v1, 0x0

    goto :goto_21

    :cond_2a
    move/from16 v17, v5

    :goto_21
    if-eqz v1, :cond_2c

    .line 100
    iget v1, v12, Lcom/google/android/exoplayer2/Format;->e:I

    .line 101
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Format;->p()I

    move-result v2

    move v11, v0

    move v4, v1

    move-object v1, v6

    move v5, v14

    goto :goto_23

    :cond_2b
    :goto_22
    move-object/from16 v16, v1

    move/from16 v17, v5

    :cond_2c
    move-object/from16 v1, v16

    move/from16 v5, v17

    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    :cond_2d
    move-object/from16 v16, v1

    move/from16 v17, v5

    add-int/lit8 v3, v3, 0x1

    move v1, v2

    move v2, v4

    move-object/from16 v38, v7

    move v5, v11

    move-object/from16 v0, v16

    move/from16 v4, v17

    goto/16 :goto_1a

    :cond_2e
    move-object/from16 v7, v38

    if-nez v0, :cond_2f

    const/4 v15, 0x0

    goto :goto_24

    .line 102
    :cond_2f
    new-instance v15, Le/m/a/c/n1/f$a;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v1, 0x0

    aput v5, v2, v1

    invoke-direct {v15, v0, v2}, Le/m/a/c/n1/f$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :goto_24
    move-object v0, v15

    goto :goto_25

    :cond_30
    move-object/from16 v7, v38

    .line 103
    :goto_25
    aput-object v0, v32, v33

    .line 104
    aget-object v0, v32, v33

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_26

    :cond_31
    const/4 v0, 0x0

    :goto_26
    move v9, v0

    move-object v11, v7

    move-object/from16 v0, v31

    goto :goto_27

    :cond_32
    move-object/from16 v26, v1

    move/from16 v29, v3

    move-object/from16 v24, v4

    move-object/from16 v32, v5

    move-object/from16 v28, v6

    move/from16 v33, v7

    move/from16 v30, v8

    move-object/from16 v27, v14

    move-object v7, v2

    .line 105
    :goto_27
    iget-object v1, v0, Le/m/a/c/n1/d$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v1, v1, v33

    .line 106
    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:I

    if-lez v1, :cond_33

    const/4 v1, 0x1

    goto :goto_28

    :cond_33
    const/4 v1, 0x0

    :goto_28
    or-int v1, v30, v1

    move-object v10, v0

    move v8, v1

    goto :goto_29

    :cond_34
    move-object/from16 v26, v1

    move/from16 v29, v3

    move-object/from16 v24, v4

    move-object/from16 v32, v5

    move-object/from16 v28, v6

    move/from16 v33, v7

    move/from16 v30, v8

    move-object/from16 v27, v14

    move-object v7, v2

    :goto_29
    add-int/lit8 v1, v33, 0x1

    move-object v2, v7

    move-object/from16 v4, v24

    move-object/from16 v14, v27

    move-object/from16 v6, v28

    move/from16 v3, v29

    move-object/from16 v5, v32

    move v7, v1

    move-object/from16 v1, v26

    goto/16 :goto_a

    :cond_35
    move-object/from16 v26, v1

    move-object v7, v2

    move-object/from16 v24, v4

    move-object/from16 v32, v5

    move-object/from16 v28, v6

    move/from16 v30, v8

    move-object/from16 v27, v14

    move v4, v3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2a
    if-ge v3, v4, :cond_4c

    .line 107
    iget-object v6, v10, Le/m/a/c/n1/d$a;->b:[I

    aget v6, v6, v3

    const/4 v8, 0x1

    if-ne v8, v6, :cond_4b

    xor-int/lit8 v6, v30, 0x1

    .line 108
    iget-object v8, v10, Le/m/a/c/n1/d$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v8, v8, v3

    .line 109
    aget-object v9, v28, v3

    aget v10, v27, v3

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    .line 110
    :goto_2b
    iget v15, v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:I

    if-ge v14, v15, :cond_3b

    .line 111
    iget-object v15, v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v15, v15, v14

    .line 112
    aget-object v16, v9, v14

    move/from16 v18, v12

    move/from16 v17, v13

    move-object v12, v10

    const/4 v10, 0x0

    .line 113
    :goto_2c
    iget v13, v15, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v10, v13, :cond_3a

    .line 114
    aget v13, v16, v10

    move-object/from16 v19, v5

    iget-boolean v5, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->y:Z

    invoke-static {v13, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->g(IZ)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 115
    iget-object v5, v15, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v5, v5, v10

    .line 116
    new-instance v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;

    move-object/from16 v20, v15

    aget v15, v16, v10

    invoke-direct {v13, v5, v11, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 117
    iget-boolean v5, v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->a:Z

    if-nez v5, :cond_36

    iget-boolean v5, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->s:Z

    if-nez v5, :cond_36

    goto :goto_2d

    :cond_36
    if-eqz v12, :cond_37

    .line 118
    invoke-virtual {v13, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;)I

    move-result v5

    if-lez v5, :cond_39

    :cond_37
    move/from16 v17, v10

    move-object v12, v13

    move/from16 v18, v14

    goto :goto_2d

    :cond_38
    move-object/from16 v20, v15

    :cond_39
    :goto_2d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v19

    move-object/from16 v15, v20

    goto :goto_2c

    :cond_3a
    move-object/from16 v19, v5

    add-int/lit8 v14, v14, 0x1

    move-object v10, v12

    move/from16 v13, v17

    move/from16 v12, v18

    goto :goto_2b

    :cond_3b
    move-object/from16 v19, v5

    const/4 v5, -0x1

    if-ne v12, v5, :cond_3c

    move-object/from16 v31, v0

    move-object/from16 v20, v1

    move/from16 v18, v2

    move/from16 v17, v3

    move/from16 v29, v4

    move-object/from16 v16, v7

    const/4 v0, 0x0

    goto/16 :goto_32

    .line 119
    :cond_3c
    iget-object v5, v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v5, v5, v12

    .line 120
    iget-boolean v8, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->x:Z

    if-nez v8, :cond_44

    iget-boolean v8, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->w:Z

    if-nez v8, :cond_44

    if-eqz v6, :cond_44

    .line 121
    aget-object v6, v9, v12

    iget v8, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->r:I

    iget-boolean v9, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->t:Z

    iget-boolean v12, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->u:Z

    iget-boolean v11, v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->v:Z

    .line 122
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v31, v0

    move/from16 v29, v4

    move-object/from16 v16, v7

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    .line 123
    :goto_2e
    iget v4, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v7, v4, :cond_40

    .line 124
    iget-object v4, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v4, v4, v7

    move/from16 v17, v3

    .line 125
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;

    move/from16 v18, v2

    iget v2, v4, Lcom/google/android/exoplayer2/Format;->v:I

    move-object/from16 v20, v1

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->w:I

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;-><init>(IILjava/lang/String;)V

    .line 126
    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    :goto_2f
    iget v4, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v1, v4, :cond_3e

    .line 128
    iget-object v4, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v33, v4, v1

    .line 129
    aget v34, v6, v1

    move-object/from16 v35, v3

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v12

    move/from16 v39, v11

    .line 130
    invoke-static/range {v33 .. v39}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->h(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;IZZZ)Z

    move-result v4

    if-eqz v4, :cond_3d

    add-int/lit8 v2, v2, 0x1

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3e
    if-le v2, v0, :cond_3f

    move v0, v2

    move-object v15, v3

    :cond_3f
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    move/from16 v2, v18

    move-object/from16 v1, v20

    goto :goto_2e

    :cond_40
    move-object/from16 v20, v1

    move/from16 v18, v2

    move/from16 v17, v3

    const/4 v1, 0x1

    if-le v0, v1, :cond_42

    .line 131
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 133
    :goto_30
    iget v3, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v1, v3, :cond_43

    .line 134
    iget-object v3, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v33, v3, v1

    .line 135
    aget v34, v6, v1

    move-object/from16 v35, v15

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v12

    move/from16 v39, v11

    invoke-static/range {v33 .. v39}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->h(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;IZZZ)Z

    move-result v3

    if-eqz v3, :cond_41

    add-int/lit8 v3, v2, 0x1

    .line 136
    aput v1, v0, v2

    move v2, v3

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_42
    move-object/from16 v0, v24

    .line 137
    :cond_43
    array-length v1, v0

    if-lez v1, :cond_45

    .line 138
    new-instance v1, Le/m/a/c/n1/f$a;

    invoke-direct {v1, v5, v0}, Le/m/a/c/n1/f$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    goto :goto_31

    :cond_44
    move-object/from16 v31, v0

    move-object/from16 v20, v1

    move/from16 v18, v2

    move/from16 v17, v3

    move/from16 v29, v4

    move-object/from16 v16, v7

    :cond_45
    const/4 v1, 0x0

    :goto_31
    if-nez v1, :cond_46

    .line 139
    new-instance v1, Le/m/a/c/n1/f$a;

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v0, 0x0

    aput v13, v2, v0

    invoke-direct {v1, v5, v2}, Le/m/a/c/n1/f$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 140
    :cond_46
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {v1, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_32
    if-eqz v0, :cond_4a

    if-eqz v20, :cond_48

    .line 142
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;

    move-object/from16 v2, v20

    .line 143
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;)I

    move-result v1

    if-lez v1, :cond_47

    goto :goto_33

    :cond_47
    move/from16 v1, v18

    goto :goto_34

    :cond_48
    :goto_33
    move/from16 v1, v18

    const/4 v2, -0x1

    if-eq v1, v2, :cond_49

    const/4 v2, 0x0

    .line 144
    aput-object v2, v32, v1

    .line 145
    :cond_49
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Le/m/a/c/n1/f$a;

    .line 146
    aput-object v1, v32, v17

    .line 147
    iget-object v2, v1, Le/m/a/c/n1/f$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, v1, Le/m/a/c/n1/f$a;->b:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 148
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v2, v1

    .line 149
    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->A:Ljava/lang/String;

    .line 150
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;

    move-object v5, v1

    move/from16 v2, v17

    move-object v1, v0

    goto :goto_35

    :cond_4a
    move/from16 v1, v18

    move-object/from16 v2, v20

    goto :goto_34

    :cond_4b
    move-object/from16 v31, v0

    move/from16 v17, v3

    move/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v7

    move/from16 v48, v2

    move-object v2, v1

    move/from16 v1, v48

    :goto_34
    move-object/from16 v5, v19

    move-object/from16 v48, v2

    move v2, v1

    move-object/from16 v1, v48

    :goto_35
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v7, v16

    move-object v11, v7

    move/from16 v4, v29

    move-object/from16 v0, v31

    move-object v10, v0

    goto/16 :goto_2a

    :cond_4c
    move-object/from16 v31, v0

    move/from16 v29, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_36
    const/4 v3, 0x3

    move/from16 v4, v29

    if-ge v1, v4, :cond_60

    move-object/from16 v5, v31

    .line 151
    iget-object v6, v5, Le/m/a/c/n1/d$a;->b:[I

    aget v6, v6, v1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5e

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5e

    if-eq v6, v3, :cond_55

    .line 152
    iget-object v3, v5, Le/m/a/c/n1/d$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, v3, v1

    .line 153
    aget-object v6, v28, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 154
    :goto_37
    iget v11, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:I

    if-ge v8, v11, :cond_53

    .line 155
    iget-object v11, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v11, v11, v8

    .line 156
    aget-object v12, v6, v8

    move v13, v10

    move v10, v9

    move-object v9, v7

    const/4 v7, 0x0

    .line 157
    :goto_38
    iget v14, v11, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v7, v14, :cond_52

    .line 158
    aget v14, v12, v7

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    iget-boolean v3, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->y:Z

    invoke-static {v14, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->g(IZ)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 159
    iget-object v3, v11, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v3, v3, v7

    .line 160
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->c:I

    const/4 v14, 0x1

    and-int/2addr v3, v14

    if-eqz v3, :cond_4d

    const/4 v3, 0x1

    goto :goto_39

    :cond_4d
    const/4 v3, 0x0

    :goto_39
    if-eqz v3, :cond_4e

    const/4 v3, 0x2

    goto :goto_3a

    :cond_4e
    const/4 v3, 0x1

    .line 161
    :goto_3a
    aget v14, v12, v7

    move-object/from16 v17, v6

    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->g(IZ)Z

    move-result v14

    if-eqz v14, :cond_4f

    add-int/lit16 v3, v3, 0x3e8

    :cond_4f
    if-le v3, v10, :cond_51

    move v10, v3

    move v13, v7

    move-object v9, v11

    goto :goto_3b

    :cond_50
    move-object/from16 v17, v6

    :cond_51
    :goto_3b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v16, v15

    goto :goto_38

    :cond_52
    move-object/from16 v17, v6

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    add-int/lit8 v8, v8, 0x1

    move-object v7, v9

    move v9, v10

    move v10, v13

    move-object/from16 v16, v15

    goto :goto_37

    :cond_53
    move-object/from16 v15, v16

    if-nez v7, :cond_54

    const/4 v3, 0x0

    goto :goto_3c

    .line 162
    :cond_54
    new-instance v3, Le/m/a/c/n1/f$a;

    const/4 v6, 0x1

    new-array v8, v6, [I

    const/4 v6, 0x0

    aput v10, v8, v6

    invoke-direct {v3, v7, v8}, Le/m/a/c/n1/f$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 163
    :goto_3c
    aput-object v3, v32, v1

    goto/16 :goto_41

    :cond_55
    move-object/from16 v15, v16

    .line 164
    iget-object v3, v5, Le/m/a/c/n1/d$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, v3, v1

    .line 165
    aget-object v6, v28, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 166
    :goto_3d
    iget v11, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:I

    if-ge v10, v11, :cond_5a

    .line 167
    iget-object v11, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v11, v11, v10

    .line 168
    aget-object v12, v6, v10

    move v13, v9

    move-object v9, v8

    move-object v8, v7

    const/4 v7, 0x0

    .line 169
    :goto_3e
    iget v14, v11, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v7, v14, :cond_59

    .line 170
    aget v14, v12, v7

    move-object/from16 v16, v3

    iget-boolean v3, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->y:Z

    invoke-static {v14, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->g(IZ)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 171
    iget-object v3, v11, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v3, v3, v7

    .line 172
    new-instance v14, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-object/from16 v17, v6

    aget v6, v12, v7

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    invoke-direct {v14, v3, v15, v6, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V

    .line 173
    iget-boolean v3, v14, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->a:Z

    if-eqz v3, :cond_58

    if-eqz v9, :cond_56

    .line 174
    invoke-virtual {v14, v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;)I

    move-result v3

    if-lez v3, :cond_58

    :cond_56
    move v13, v7

    move-object v9, v14

    move-object/from16 v8, v18

    goto :goto_3f

    :cond_57
    move-object/from16 v17, v6

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    :cond_58
    :goto_3f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v19, v11

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v11, v18

    goto :goto_3e

    :cond_59
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v11, v19

    add-int/lit8 v10, v10, 0x1

    move-object v7, v8

    move-object v8, v9

    move v9, v13

    goto :goto_3d

    :cond_5a
    move-object/from16 v11, v19

    if-nez v7, :cond_5b

    const/4 v3, 0x0

    goto :goto_40

    .line 175
    :cond_5b
    new-instance v3, Le/m/a/c/n1/f$a;

    const/4 v6, 0x1

    new-array v10, v6, [I

    const/4 v6, 0x0

    aput v9, v10, v6

    invoke-direct {v3, v7, v10}, Le/m/a/c/n1/f$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 176
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_40
    if-eqz v3, :cond_5f

    if-eqz v2, :cond_5c

    .line 178
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    .line 179
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;)I

    move-result v6

    if-lez v6, :cond_5f

    :cond_5c
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5d

    const/4 v2, 0x0

    .line 180
    aput-object v2, v32, v0

    .line 181
    :cond_5d
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Le/m/a/c/n1/f$a;

    aput-object v0, v32, v1

    .line 182
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-object v2, v0

    move v0, v1

    goto :goto_42

    :cond_5e
    move-object/from16 v15, v16

    :goto_41
    move-object/from16 v11, v19

    :cond_5f
    :goto_42
    add-int/lit8 v1, v1, 0x1

    move/from16 v29, v4

    move-object/from16 v31, v5

    move-object/from16 v19, v11

    move-object/from16 v16, v15

    goto/16 :goto_36

    :cond_60
    move-object/from16 v15, v16

    move-object/from16 v5, v31

    const/4 v0, 0x0

    :goto_43
    if-ge v0, v4, :cond_66

    .line 183
    iget-object v1, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->B:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v2, 0x0

    .line 184
    aput-object v2, v32, v0

    goto :goto_47

    :cond_61
    const/4 v2, 0x0

    .line 185
    iget-object v1, v5, Le/m/a/c/n1/d$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v1, v1, v0

    .line 186
    iget-object v6, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseArray;

    .line 187
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_62

    .line 188
    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    const/4 v6, 0x1

    goto :goto_44

    :cond_62
    const/4 v6, 0x0

    :goto_44
    if-eqz v6, :cond_65

    .line 189
    iget-object v6, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseArray;

    .line 190
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_63

    .line 191
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_45

    :cond_63
    move-object v6, v2

    :goto_45
    if-nez v6, :cond_64

    move-object v7, v2

    goto :goto_46

    .line 192
    :cond_64
    new-instance v7, Le/m/a/c/n1/f$a;

    iget v8, v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->a:I

    .line 193
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v1, v1, v8

    .line 194
    iget-object v8, v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->b:[I

    iget v9, v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->d:I

    iget v6, v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->e:I

    .line 195
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v7, v1, v8, v9, v6}, Le/m/a/c/n1/f$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/Object;)V

    :goto_46
    aput-object v7, v32, v0

    :cond_65
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_66
    move-object/from16 v0, v26

    const/4 v2, 0x0

    .line 196
    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b:Le/m/a/c/n1/f$b;

    .line 197
    iget-object v0, v0, Le/m/a/c/n1/h;->a:Le/m/a/c/p1/f;

    .line 198
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    check-cast v1, Le/m/a/c/n1/a$d;

    .line 200
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-array v1, v4, [Le/m/a/c/n1/f;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_48
    if-ge v6, v4, :cond_68

    .line 202
    aget-object v8, v32, v6

    if-eqz v8, :cond_67

    .line 203
    iget-object v9, v8, Le/m/a/c/n1/f$a;->b:[I

    array-length v10, v9

    const/4 v11, 0x1

    if-ne v10, v11, :cond_67

    .line 204
    new-instance v10, Le/m/a/c/n1/c;

    iget-object v11, v8, Le/m/a/c/n1/f$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v12, 0x0

    aget v9, v9, v12

    iget v13, v8, Le/m/a/c/n1/f$a;->c:I

    iget-object v14, v8, Le/m/a/c/n1/f$a;->d:Ljava/lang/Object;

    invoke-direct {v10, v11, v9, v13, v14}, Le/m/a/c/n1/c;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V

    aput-object v10, v1, v6

    .line 205
    iget-object v9, v8, Le/m/a/c/n1/f$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v8, v8, Le/m/a/c/n1/f$a;->b:[I

    aget v8, v8, v12

    .line 206
    iget-object v9, v9, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v8, v9, v8

    .line 207
    iget v8, v8, Lcom/google/android/exoplayer2/Format;->e:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_67

    add-int/2addr v7, v8

    :cond_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 208
    :cond_68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_49
    if-ge v8, v4, :cond_6a

    .line 209
    aget-object v9, v32, v8

    if-eqz v9, :cond_69

    .line 210
    iget-object v10, v9, Le/m/a/c/n1/f$a;->b:[I

    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_69

    .line 211
    iget-object v9, v9, Le/m/a/c/n1/f$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 212
    new-instance v11, Le/m/a/c/n1/a;

    new-instance v12, Le/m/a/c/n1/a$c;

    const v13, 0x3f333333    # 0.7f

    int-to-long v2, v7

    invoke-direct {v12, v0, v13, v2, v3}, Le/m/a/c/n1/a$c;-><init>(Le/m/a/c/p1/f;FJ)V

    const/16 v2, 0x2710

    int-to-long v2, v2

    const/16 v13, 0x61a8

    move-object/from16 v16, v15

    int-to-long v14, v13

    const/high16 v43, 0x3f400000    # 0.75f

    const-wide/16 v44, 0x7d0

    sget-object v46, Le/m/a/c/q1/f;->a:Le/m/a/c/q1/f;

    const/16 v47, 0x0

    move-object/from16 v33, v11

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v12

    move-wide/from16 v37, v2

    move-wide/from16 v39, v14

    move-wide/from16 v41, v14

    invoke-direct/range {v33 .. v47}, Le/m/a/c/n1/a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILe/m/a/c/n1/a$b;JJJFJLe/m/a/c/q1/f;Le/m/a/c/n1/a$a;)V

    .line 213
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    aput-object v11, v1, v8

    goto :goto_4a

    :cond_69
    move-object/from16 v16, v15

    :goto_4a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v15, v16

    const/4 v2, 0x0

    const/4 v3, 0x3

    goto :goto_49

    :cond_6a
    move-object/from16 v16, v15

    .line 215
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_7b

    .line 216
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [[J

    const/4 v3, 0x0

    .line 217
    :goto_4b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_6c

    .line 218
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/m/a/c/n1/a;

    .line 219
    iget-object v8, v7, Le/m/a/c/n1/b;->c:[I

    array-length v8, v8

    .line 220
    new-array v8, v8, [J

    aput-object v8, v2, v3

    const/4 v8, 0x0

    .line 221
    :goto_4c
    iget-object v9, v7, Le/m/a/c/n1/b;->c:[I

    array-length v10, v9

    if-ge v8, v10, :cond_6b

    .line 222
    aget-object v10, v2, v3

    .line 223
    array-length v9, v9

    sub-int/2addr v9, v8

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    .line 224
    iget-object v11, v7, Le/m/a/c/n1/b;->d:[Lcom/google/android/exoplayer2/Format;

    aget-object v9, v11, v9

    .line 225
    iget v9, v9, Lcom/google/android/exoplayer2/Format;->e:I

    int-to-long v11, v9

    aput-wide v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 226
    :cond_6c
    new-array v3, v0, [[D

    const/4 v7, 0x0

    :goto_4d
    const-wide/16 v8, 0x0

    if-ge v7, v0, :cond_6f

    .line 227
    aget-object v10, v2, v7

    array-length v10, v10

    new-array v10, v10, [D

    aput-object v10, v3, v7

    const/4 v10, 0x0

    .line 228
    :goto_4e
    aget-object v11, v2, v7

    array-length v11, v11

    if-ge v10, v11, :cond_6e

    .line 229
    aget-object v11, v3, v7

    aget-object v12, v2, v7

    aget-wide v13, v12, v10

    const-wide/16 v18, -0x1

    cmp-long v12, v13, v18

    if-nez v12, :cond_6d

    move-wide v12, v8

    goto :goto_4f

    :cond_6d
    aget-object v12, v2, v7

    aget-wide v13, v12, v10

    long-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    :goto_4f
    aput-wide v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    :cond_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 230
    :cond_6f
    new-array v7, v0, [[D

    const/4 v10, 0x0

    :goto_50
    if-ge v10, v0, :cond_73

    .line 231
    aget-object v11, v3, v10

    array-length v11, v11

    const/4 v12, -0x1

    add-int/2addr v11, v12

    new-array v11, v11, [D

    aput-object v11, v7, v10

    .line 232
    aget-object v11, v7, v10

    array-length v11, v11

    if-nez v11, :cond_70

    goto :goto_53

    .line 233
    :cond_70
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

    .line 234
    :goto_51
    aget-object v15, v3, v10

    array-length v15, v15

    add-int/2addr v15, v12

    if-ge v11, v15, :cond_72

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    .line 235
    aget-object v12, v3, v10

    aget-wide v20, v12, v11

    aget-object v12, v3, v10

    add-int/lit8 v15, v11, 0x1

    aget-wide v22, v12, v15

    add-double v20, v20, v22

    mul-double v20, v20, v18

    .line 236
    aget-object v12, v7, v10

    cmpl-double v18, v13, v8

    if-nez v18, :cond_71

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    goto :goto_52

    :cond_71
    aget-object v18, v3, v10

    const/16 v19, 0x0

    aget-wide v22, v18, v19

    sub-double v20, v20, v22

    div-double v18, v20, v13

    :goto_52
    aput-wide v18, v12, v11

    move v11, v15

    const/4 v12, -0x1

    goto :goto_51

    :cond_72
    :goto_53
    add-int/lit8 v10, v10, 0x1

    goto :goto_50

    :cond_73
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_54
    if-ge v8, v0, :cond_74

    .line 237
    aget-object v10, v7, v8

    .line 238
    array-length v10, v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_54

    :cond_74
    const/4 v8, 0x3

    add-int/2addr v9, v8

    new-array v8, v8, [I

    const/4 v10, 0x2

    aput v10, v8, v10

    const/4 v10, 0x1

    aput v9, v8, v10

    const/4 v11, 0x0

    aput v0, v8, v11

    .line 239
    const-class v11, J

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[J

    .line 240
    new-array v11, v0, [I

    .line 241
    invoke-static {v8, v10, v2, v11}, Le/m/a/c/n1/a;->j([[[JI[[J[I)V

    const/4 v12, 0x2

    :goto_55
    add-int/lit8 v13, v9, -0x1

    if-ge v12, v13, :cond_78

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v18, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_56
    if-ge v13, v0, :cond_77

    .line 242
    aget v15, v11, v13

    add-int/2addr v15, v10

    aget-object v10, v3, v13

    array-length v10, v10

    if-ne v15, v10, :cond_75

    goto :goto_57

    .line 243
    :cond_75
    aget-object v10, v7, v13

    aget v15, v11, v13

    aget-wide v20, v10, v15

    cmpg-double v10, v20, v18

    if-gez v10, :cond_76

    move v14, v13

    move-wide/from16 v18, v20

    :cond_76
    :goto_57
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto :goto_56

    .line 244
    :cond_77
    aget v10, v11, v14

    const/4 v13, 0x1

    add-int/2addr v10, v13

    aput v10, v11, v14

    .line 245
    invoke-static {v8, v12, v2, v11}, Le/m/a/c/n1/a;->j([[[JI[[J[I)V

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_55

    .line 246
    :cond_78
    array-length v0, v8

    const/4 v2, 0x0

    :goto_58
    if-ge v2, v0, :cond_79

    aget-object v3, v8, v2

    .line 247
    aget-object v7, v3, v13

    add-int/lit8 v10, v9, -0x2

    aget-object v11, v3, v10

    const/4 v12, 0x0

    aget-wide v14, v11, v12

    const-wide/16 v18, 0x2

    mul-long v14, v14, v18

    aput-wide v14, v7, v12

    .line 248
    aget-object v7, v3, v13

    aget-object v3, v3, v10

    const/4 v10, 0x1

    aget-wide v14, v3, v10

    mul-long v14, v14, v18

    aput-wide v14, v7, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_79
    const/4 v12, 0x0

    move v0, v12

    .line 249
    :goto_59
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7c

    .line 250
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/n1/a;

    aget-object v3, v8, v0

    .line 251
    iget-object v2, v2, Le/m/a/c/n1/a;->f:Le/m/a/c/n1/a$b;

    check-cast v2, Le/m/a/c/n1/a$c;

    .line 252
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    array-length v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7a

    const/4 v2, 0x1

    goto :goto_5a

    :cond_7a
    move v2, v12

    :goto_5a
    invoke-static {v2}, Ln3/g0/y;->r(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_7b
    const/4 v12, 0x0

    .line 254
    :cond_7c
    new-array v0, v4, [Le/m/a/c/v0;

    move v2, v12

    :goto_5b
    if-ge v2, v4, :cond_80

    move-object/from16 v3, v16

    .line 255
    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->B:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 256
    iget-object v6, v5, Le/m/a/c/n1/d$a;->b:[I

    aget v6, v6, v2

    const/4 v7, 0x6

    if-eq v6, v7, :cond_7d

    .line 257
    aget-object v6, v1, v2

    if-eqz v6, :cond_7e

    :cond_7d
    const/4 v6, 0x1

    goto :goto_5c

    :cond_7e
    move v6, v12

    :goto_5c
    if-eqz v6, :cond_7f

    .line 258
    sget-object v6, Le/m/a/c/v0;->b:Le/m/a/c/v0;

    goto :goto_5d

    :cond_7f
    const/4 v6, 0x0

    :goto_5d
    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v3

    goto :goto_5b

    :cond_80
    move-object/from16 v3, v16

    .line 259
    iget v2, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->z:I

    if-nez v2, :cond_81

    goto/16 :goto_65

    :cond_81
    move v3, v12

    const/4 v4, -0x1

    const/4 v6, -0x1

    .line 260
    :goto_5e
    iget v7, v5, Le/m/a/c/n1/d$a;->a:I

    if-ge v3, v7, :cond_89

    .line 261
    iget-object v7, v5, Le/m/a/c/n1/d$a;->b:[I

    aget v7, v7, v3

    .line 262
    aget-object v8, v1, v3

    const/4 v9, 0x1

    if-eq v7, v9, :cond_83

    const/4 v9, 0x2

    if-ne v7, v9, :cond_82

    goto :goto_5f

    :cond_82
    const/4 v7, -0x1

    const/4 v8, 0x1

    goto :goto_63

    :cond_83
    const/4 v9, 0x2

    :goto_5f
    if-eqz v8, :cond_82

    .line 263
    aget-object v10, v28, v3

    .line 264
    iget-object v11, v5, Le/m/a/c/n1/d$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v11, v11, v3

    .line 265
    invoke-interface {v8}, Le/m/a/c/n1/f;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v11

    move v13, v12

    .line 266
    :goto_60
    invoke-interface {v8}, Le/m/a/c/n1/f;->length()I

    move-result v14

    if-ge v13, v14, :cond_85

    .line 267
    aget-object v14, v10, v11

    invoke-interface {v8, v13}, Le/m/a/c/n1/f;->d(I)I

    move-result v15

    aget v14, v14, v15

    const/16 v15, 0x20

    and-int/2addr v14, v15

    if-eq v14, v15, :cond_84

    move v8, v12

    goto :goto_61

    :cond_84
    add-int/lit8 v13, v13, 0x1

    goto :goto_60

    :cond_85
    const/4 v8, 0x1

    :goto_61
    if-eqz v8, :cond_82

    const/4 v8, 0x1

    if-ne v7, v8, :cond_87

    const/4 v7, -0x1

    if-eq v6, v7, :cond_86

    goto :goto_62

    :cond_86
    move v6, v3

    goto :goto_63

    :cond_87
    const/4 v7, -0x1

    if-eq v4, v7, :cond_88

    :goto_62
    move v3, v12

    goto :goto_64

    :cond_88
    move v4, v3

    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_89
    const/4 v7, -0x1

    const/4 v8, 0x1

    move v3, v8

    :goto_64
    if-eq v6, v7, :cond_8a

    if-eq v4, v7, :cond_8a

    move v12, v8

    :cond_8a
    and-int/2addr v3, v12

    if-eqz v3, :cond_8b

    .line 268
    new-instance v3, Le/m/a/c/v0;

    invoke-direct {v3, v2}, Le/m/a/c/v0;-><init>(I)V

    .line 269
    aput-object v3, v0, v6

    .line 270
    aput-object v3, v0, v4

    .line 271
    :cond_8b
    :goto_65
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 272
    new-instance v1, Le/m/a/c/n1/i;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Le/m/a/c/v0;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Le/m/a/c/n1/f;

    invoke-direct {v1, v2, v0, v5}, Le/m/a/c/n1/i;-><init>([Le/m/a/c/v0;[Le/m/a/c/n1/f;Ljava/lang/Object;)V

    return-object v1
.end method
