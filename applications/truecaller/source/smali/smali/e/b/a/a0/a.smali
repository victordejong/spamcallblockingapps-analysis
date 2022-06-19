.class public Le/b/a/a0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/util/JsonReader;)Le/b/a/e;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Le/b/a/b0/e;->c()F

    move-result v1

    .line 2
    new-instance v2, Ln3/g/e;

    const/16 v3, 0xa

    .line 3
    invoke-direct {v2, v3}, Ln3/g/e;-><init>(I)V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v9, Ln3/g/i;

    invoke-direct {v9}, Ln3/g/i;-><init>()V

    .line 10
    new-instance v10, Le/b/a/e;

    invoke-direct {v10}, Le/b/a/e;-><init>()V

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 12
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_36

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v18

    const-string v12, "h"

    move/from16 v19, v11

    const-string v11, "layers"

    const/16 v20, 0x5

    move/from16 v21, v15

    const-string v15, "w"

    const/16 v22, 0x3

    const/16 v23, -0x1

    move/from16 v24, v14

    const/16 v25, 0x2

    const/16 v26, 0x1

    sparse-switch v18, :sswitch_data_0

    :goto_1
    move/from16 v3, v23

    goto/16 :goto_2

    :sswitch_0
    const-string v14, "markers"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v14, "fonts"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v14, "chars"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_3
    const-string v14, "op"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x7

    goto :goto_2

    :sswitch_4
    const-string v14, "ip"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x6

    goto :goto_2

    :sswitch_5
    const-string v14, "fr"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v3, v20

    goto :goto_2

    :sswitch_6
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_7
    const-string v14, "v"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move/from16 v3, v22

    goto :goto_2

    :sswitch_8
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    move/from16 v3, v25

    goto :goto_2

    :sswitch_9
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    move/from16 v3, v26

    goto :goto_2

    :sswitch_a
    const-string v14, "assets"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_2
    const-string v14, "fFamily"

    const/16 v27, 0x0

    packed-switch v3, :pswitch_data_0

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_7

    .line 15
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 16
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move-object/from16 v3, v27

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 18
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_5
    move/from16 v14, v23

    goto :goto_6

    :sswitch_b
    const-string v15, "tm"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v14, v25

    goto :goto_6

    :sswitch_c
    const-string v15, "dr"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_5

    :cond_c
    move/from16 v14, v26

    goto :goto_6

    :sswitch_d
    const-string v15, "cm"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_5

    :cond_d
    const/4 v14, 0x0

    :goto_6
    packed-switch v14, :pswitch_data_1

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 21
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v11, v14

    goto :goto_4

    .line 22
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v12, v14

    goto :goto_4

    .line 23
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 24
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 25
    new-instance v14, Le/b/a/y/h;

    invoke-direct {v14, v3, v11, v12}, Le/b/a/y/h;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    :goto_7
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    goto/16 :goto_15

    .line 27
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 28
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v11, "list"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 31
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 32
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move-object/from16 v3, v27

    move-object v11, v3

    move-object v12, v11

    const/4 v15, 0x0

    .line 34
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    move-object/from16 v28, v8

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v18

    move/from16 v29, v1

    sparse-switch v18, :sswitch_data_2

    :goto_b
    move/from16 v1, v23

    goto :goto_d

    :sswitch_e
    const-string v1, "fName"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_c

    :cond_11
    move/from16 v1, v22

    goto :goto_d

    :sswitch_f
    const-string v1, "fStyle"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_c

    :cond_12
    move/from16 v1, v25

    goto :goto_d

    :sswitch_10
    const-string v1, "ascent"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_c

    :cond_13
    move/from16 v1, v26

    goto :goto_d

    :sswitch_11
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_c
    goto :goto_b

    :cond_14
    const/4 v1, 0x0

    :goto_d
    packed-switch v1, :pswitch_data_2

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_e

    .line 37
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    .line 38
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    goto :goto_e

    :pswitch_7
    move-object v1, v5

    move-object v8, v6

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v15, v5

    move-object v5, v1

    move-object v6, v8

    goto :goto_e

    :pswitch_8
    move-object v1, v5

    move-object v8, v6

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    :goto_e
    move-object/from16 v8, v28

    move/from16 v1, v29

    goto :goto_a

    :cond_15
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 42
    new-instance v5, Le/b/a/y/c;

    invoke-direct {v5, v3, v11, v12, v15}, Le/b/a/y/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 43
    invoke-virtual {v7, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    move-object/from16 v8, v28

    move/from16 v1, v29

    goto/16 :goto_9

    :cond_16
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    move-object/from16 v8, v28

    move/from16 v1, v29

    goto/16 :goto_8

    :cond_17
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_15

    :pswitch_9
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 47
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const-wide/16 v5, 0x0

    move-wide/from16 v33, v5

    move-wide/from16 v35, v33

    move-object/from16 v37, v27

    move-object/from16 v38, v37

    const/16 v32, 0x0

    .line 50
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3

    :goto_11
    move/from16 v5, v23

    goto :goto_12

    :sswitch_12
    const-string v6, "style"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_11

    :cond_18
    move/from16 v5, v20

    goto :goto_12

    :sswitch_13
    const-string v6, "size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    goto :goto_11

    :cond_19
    const/4 v5, 0x4

    goto :goto_12

    :sswitch_14
    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_11

    :cond_1a
    move/from16 v5, v22

    goto :goto_12

    :sswitch_15
    const-string v6, "ch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_11

    :cond_1b
    move/from16 v5, v25

    goto :goto_12

    :sswitch_16
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_11

    :cond_1c
    move/from16 v5, v26

    goto :goto_12

    :sswitch_17
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_11

    :cond_1d
    const/4 v5, 0x0

    :goto_12
    packed-switch v5, :pswitch_data_3

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_10

    .line 53
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v37

    goto :goto_10

    .line 54
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v33

    goto :goto_10

    .line 55
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 56
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "shapes"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 59
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 60
    invoke-static {v0, v10}, Le/b/a/a0/a;->c(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/k/b;

    move-result-object v5

    check-cast v5, Le/b/a/y/k/n;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 61
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_13

    .line 62
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_13

    .line 63
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_10

    .line 64
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v32

    goto/16 :goto_10

    .line 65
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v35

    goto/16 :goto_10

    .line 66
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_10

    .line 67
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 68
    new-instance v5, Le/b/a/y/d;

    move-object/from16 v30, v5

    move-object/from16 v31, v3

    invoke-direct/range {v30 .. v38}, Le/b/a/y/d;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5}, Le/b/a/y/d;->hashCode()I

    move-result v3

    invoke-virtual {v9, v3, v5}, Ln3/g/i;->i(ILjava/lang/Object;)V

    goto/16 :goto_f

    .line 70
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_15

    :pswitch_10
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v3, v5

    const v5, 0x3c23d70a    # 0.01f

    sub-float v11, v3, v5

    goto :goto_16

    :pswitch_11
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v15, v5

    move/from16 v11, v19

    goto :goto_17

    :pswitch_12
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v3, v5

    move/from16 v16, v3

    goto :goto_15

    :pswitch_13
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v13

    :cond_23
    :goto_15
    move/from16 v11, v19

    :goto_16
    move/from16 v15, v21

    :goto_17
    move/from16 v14, v24

    goto/16 :goto_23

    :pswitch_14
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\."

    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 77
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 78
    aget-object v6, v3, v26

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 79
    aget-object v3, v3, v25

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v11, 0x4

    if-ge v5, v11, :cond_24

    goto :goto_18

    :cond_24
    if-le v5, v11, :cond_25

    goto :goto_19

    :cond_25
    if-ge v6, v11, :cond_26

    goto :goto_18

    :cond_26
    if-le v6, v11, :cond_27

    goto :goto_19

    :cond_27
    if-ltz v3, :cond_28

    goto :goto_19

    :cond_28
    :goto_18
    const/16 v26, 0x0

    :goto_19
    if-nez v26, :cond_23

    .line 80
    iget-object v3, v10, Le/b/a/e;->b:Ljava/util/HashSet;

    const-string v5, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :pswitch_15
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v14

    move/from16 v11, v19

    move/from16 v15, v21

    goto/16 :goto_23

    :pswitch_16
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move-object v8, v6

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    const/4 v6, 0x0

    .line 83
    :cond_29
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 84
    invoke-static {v0, v10}, Le/b/a/a0/a;->d(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/l/e;

    move-result-object v3

    .line 85
    iget-object v5, v3, Le/b/a/y/l/e;->e:Le/b/a/y/l/e$a;

    .line 86
    sget-object v11, Le/b/a/y/l/e$a;->c:Le/b/a/y/l/e$a;

    if-ne v5, v11, :cond_2a

    add-int/lit8 v6, v6, 0x1

    .line 87
    :cond_2a
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-wide v11, v3, Le/b/a/y/l/e;->d:J

    .line 89
    invoke-virtual {v2, v11, v12, v3}, Ln3/g/e;->k(JLjava/lang/Object;)V

    const/4 v3, 0x4

    if-le v6, v3, :cond_29

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "You have "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/b/a/c;->b(Ljava/lang/String;)V

    goto :goto_1a

    .line 91
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_15

    :pswitch_17
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    const/4 v3, 0x4

    move-object v8, v6

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 93
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v6, Ln3/g/e;

    const/16 v14, 0xa

    .line 96
    invoke-direct {v6, v14}, Ln3/g/e;-><init>(I)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move-object/from16 v17, v27

    move-object/from16 v34, v17

    move-object/from16 v35, v34

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 98
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_33

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v30

    sparse-switch v30, :sswitch_data_4

    :goto_1d
    move/from16 v3, v23

    goto :goto_1e

    :sswitch_18
    const-string v14, "id"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_1d

    :cond_2c
    move/from16 v3, v20

    goto :goto_1e

    :sswitch_19
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_1d

    :cond_2d
    const/4 v3, 0x4

    goto :goto_1e

    :sswitch_1a
    const-string v14, "u"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_1d

    :cond_2e
    move/from16 v3, v22

    goto :goto_1e

    :sswitch_1b
    const-string v14, "p"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_1d

    :cond_2f
    move/from16 v3, v25

    goto :goto_1e

    :sswitch_1c
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_1d

    :cond_30
    move/from16 v3, v26

    goto :goto_1e

    :sswitch_1d
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_1d

    :cond_31
    const/4 v3, 0x0

    :goto_1e
    packed-switch v3, :pswitch_data_4

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v37, v11

    move-object v14, v12

    goto :goto_21

    .line 101
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1f

    .line 102
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v31

    goto :goto_1f

    .line 103
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v35

    goto :goto_1f

    .line 104
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v34

    goto :goto_1f

    .line 105
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v32

    :goto_1f
    const/4 v3, 0x4

    const/16 v14, 0xa

    goto :goto_1c

    .line 106
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 107
    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 108
    invoke-static {v0, v10}, Le/b/a/a0/a;->d(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/l/e;

    move-result-object v3

    move-object/from16 v37, v11

    move-object v14, v12

    .line 109
    iget-wide v11, v3, Le/b/a/y/l/e;->d:J

    .line 110
    invoke-virtual {v6, v11, v12, v3}, Ln3/g/e;->k(JLjava/lang/Object;)V

    .line 111
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v14

    move-object/from16 v11, v37

    goto :goto_20

    :cond_32
    move-object/from16 v37, v11

    move-object v14, v12

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    :goto_21
    move-object v12, v14

    move-object/from16 v11, v37

    goto :goto_1f

    :cond_33
    move-object/from16 v37, v11

    move-object v14, v12

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v34, :cond_34

    .line 114
    new-instance v3, Le/b/a/l;

    move-object/from16 v30, v3

    move-object/from16 v33, v17

    invoke-direct/range {v30 .. v35}, Le/b/a/l;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v17

    .line 115
    invoke-virtual {v8, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_34
    move-object/from16 v6, v17

    .line 116
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_22
    move-object v12, v14

    move-object/from16 v11, v37

    const/4 v3, 0x4

    goto/16 :goto_1b

    .line 117
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_15

    :goto_23
    move-object v5, v1

    move-object v6, v8

    move-object/from16 v8, v28

    move/from16 v1, v29

    const/16 v3, 0xa

    goto/16 :goto_0

    :cond_36
    move/from16 v29, v1

    move-object v1, v5

    move-object/from16 v28, v8

    move/from16 v19, v11

    move/from16 v24, v14

    move/from16 v21, v15

    move-object v8, v6

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    int-to-float v0, v13

    mul-float v0, v0, v29

    float-to-int v0, v0

    move/from16 v12, v24

    int-to-float v3, v12

    mul-float v3, v3, v29

    float-to-int v3, v3

    .line 119
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 120
    iput-object v5, v10, Le/b/a/e;->j:Landroid/graphics/Rect;

    move/from16 v15, v21

    .line 121
    iput v15, v10, Le/b/a/e;->k:F

    move/from16 v11, v19

    .line 122
    iput v11, v10, Le/b/a/e;->l:F

    move/from16 v11, v16

    .line 123
    iput v11, v10, Le/b/a/e;->m:F

    .line 124
    iput-object v4, v10, Le/b/a/e;->i:Ljava/util/List;

    .line 125
    iput-object v2, v10, Le/b/a/e;->h:Ln3/g/e;

    .line 126
    iput-object v1, v10, Le/b/a/e;->c:Ljava/util/Map;

    .line 127
    iput-object v8, v10, Le/b/a/e;->d:Ljava/util/Map;

    .line 128
    iput-object v9, v10, Le/b/a/e;->g:Ln3/g/i;

    .line 129
    iput-object v7, v10, Le/b/a/e;->e:Ljava/util/Map;

    move-object/from16 v0, v28

    .line 130
    iput-object v0, v10, Le/b/a/e;->f:Ljava/util/List;

    return-object v10

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_a
        -0x42252abe -> :sswitch_9
        0x68 -> :sswitch_8
        0x76 -> :sswitch_7
        0x77 -> :sswitch_6
        0xccc -> :sswitch_5
        0xd27 -> :sswitch_4
        0xde1 -> :sswitch_3
        0x5a3d7dd -> :sswitch_2
        0x5d17e04 -> :sswitch_1
        0x3205f379 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_9
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xc6a -> :sswitch_d
        0xc8e -> :sswitch_c
        0xe79 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6f471c96 -> :sswitch_11
        -0x53f6d326 -> :sswitch_10
        -0x4d298315 -> :sswitch_f
        0x5c24c11 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x6f471c96 -> :sswitch_17
        0x77 -> :sswitch_16
        0xc65 -> :sswitch_15
        0x2eefaa -> :sswitch_14
        0x35e001 -> :sswitch_13
        0x68b1db1 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x42252abe -> :sswitch_1d
        0x68 -> :sswitch_1c
        0x70 -> :sswitch_1b
        0x75 -> :sswitch_1a
        0x77 -> :sswitch_19
        0xd1b -> :sswitch_18
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public static b(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/l;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    const/4 v10, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v10

    :goto_0
    if-eqz v11, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    :cond_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v4, 0x61

    if-eq v5, v4, :cond_14

    const/16 v4, 0xcaa

    if-eq v5, v4, :cond_12

    const/16 v4, 0xe48

    if-eq v5, v4, :cond_10

    const/16 v4, 0xe4e

    if-eq v5, v4, :cond_e

    const/16 v4, 0xe58

    if-eq v5, v4, :cond_c

    const/16 v4, 0xe5c

    if-eq v5, v4, :cond_a

    const/16 v4, 0x6f

    if-eq v5, v4, :cond_8

    const/16 v4, 0x70

    if-eq v5, v4, :cond_6

    const/16 v4, 0x72

    if-eq v5, v4, :cond_4

    const/16 v4, 0x73

    if-eq v5, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v4, 0x4

    goto/16 :goto_3

    :cond_4
    const-string v4, "r"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x3

    goto/16 :goto_3

    :cond_6
    const-string v4, "p"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x2

    goto :goto_3

    :cond_8
    const-string v4, "o"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    const-string v4, "so"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    const/16 v4, 0x9

    goto :goto_3

    :cond_c
    const-string v4, "sk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    const/16 v4, 0x8

    goto :goto_3

    :cond_e
    const-string v4, "sa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_2

    :cond_f
    const/4 v4, 0x7

    goto :goto_3

    :cond_10
    const-string v4, "rz"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_2

    :cond_11
    const/4 v4, 0x6

    goto :goto_3

    :cond_12
    const-string v4, "eo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_2

    :cond_13
    const/4 v4, 0x5

    goto :goto_3

    :cond_14
    const-string v4, "a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    :cond_15
    move v4, v10

    :goto_3
    packed-switch v4, :pswitch_data_0

    move-object/from16 v26, v6

    move-object v0, v7

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_8

    .line 6
    :pswitch_0
    invoke-static {v0, v8, v10}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v22

    goto/16 :goto_8

    .line 7
    :pswitch_1
    invoke-static {v0, v8, v10}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v14

    goto/16 :goto_8

    .line 8
    :pswitch_2
    invoke-static {v0, v8, v10}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v13

    goto/16 :goto_8

    .line 9
    :pswitch_3
    iget-object v1, v8, Le/b/a/e;->b:Ljava/util/HashSet;

    const-string v2, "Lottie doesn\'t support 3D layers."

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10
    :pswitch_4
    invoke-static {v0, v8, v10}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v23

    goto/16 :goto_8

    .line 11
    :pswitch_5
    new-instance v6, Le/b/a/y/j/g;

    sget-object v2, Le/b/a/a0/k;->a:Le/b/a/a0/k;

    invoke-static {v0, v8, v2}, Ln3/g0/y;->n1(Landroid/util/JsonReader;Le/b/a/e;Le/b/a/a0/m;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Le/b/a/y/j/g;-><init>(Ljava/util/List;)V

    goto/16 :goto_8

    .line 12
    :goto_4
    :pswitch_6
    invoke-static {v0, v8, v10}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v5

    .line 13
    iget-object v1, v5, Le/b/a/y/j/n;->a:Ljava/util/List;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 15
    iget-object v4, v5, Le/b/a/y/j/n;->a:Ljava/util/List;

    .line 16
    new-instance v2, Le/b/a/c0/a;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 17
    iget v1, v8, Le/b/a/e;->l:F

    .line 18
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object v1, v2

    move-object v3, v2

    move-object/from16 v2, p1

    move-object v9, v3

    move-object/from16 v3, v16

    move-object v12, v4

    move-object/from16 v4, v17

    move-object v10, v5

    move-object/from16 v5, v18

    move-object/from16 v26, v6

    move/from16 v6, v19

    move-object v0, v7

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Le/b/a/c0/a;-><init>(Le/b/a/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_16
    move-object v10, v5

    move-object/from16 v26, v6

    move-object v0, v7

    .line 19
    iget-object v1, v10, Le/b/a/y/j/n;->a:Ljava/util/List;

    const/4 v2, 0x0

    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/c0/a;

    iget-object v1, v1, Le/b/a/c0/a;->b:Ljava/lang/Object;

    if-nez v1, :cond_17

    .line 21
    iget-object v9, v10, Le/b/a/y/j/n;->a:Ljava/util/List;

    .line 22
    new-instance v12, Le/b/a/c0/a;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23
    iget v1, v8, Le/b/a/e;->l:F

    .line 24
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Le/b/a/c0/a;-><init>(Le/b/a/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    const/4 v1, 0x0

    invoke-interface {v9, v1, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_17
    :goto_5
    move-object v1, v10

    goto :goto_7

    :pswitch_7
    move-object/from16 v26, v6

    .line 25
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->x1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/m;

    move-result-object v7

    goto :goto_8

    :pswitch_8
    move-object/from16 v26, v6

    move-object v0, v7

    .line 26
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->u1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/d;

    move-result-object v21

    goto :goto_8

    :pswitch_9
    move-object/from16 v26, v6

    move-object v0, v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 28
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 30
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->l1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/e;

    move-result-object v15

    goto :goto_6

    .line 31
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6

    .line 32
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    :goto_7
    move-object v7, v0

    move-object/from16 v6, v26

    :goto_8
    move-object/from16 v0, p0

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v26, v6

    move-object v0, v7

    if-eqz v11, :cond_1b

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    :cond_1b
    if-eqz v15, :cond_1d

    .line 34
    invoke-virtual {v15}, Le/b/a/y/j/e;->e()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 35
    iget-object v2, v15, Le/b/a/y/j/e;->a:Ljava/util/List;

    const/4 v4, 0x0

    .line 36
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/c0/a;

    iget-object v2, v2, Le/b/a/c0/a;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {v2, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_9

    :cond_1c
    const/4 v2, 0x0

    goto :goto_a

    :cond_1d
    :goto_9
    const/4 v2, 0x1

    :goto_a
    if-eqz v2, :cond_1e

    const/4 v15, 0x0

    :cond_1e
    if-eqz v0, :cond_20

    .line 37
    instance-of v2, v0, Le/b/a/y/j/i;

    if-nez v2, :cond_1f

    .line 38
    invoke-interface {v0}, Le/b/a/y/j/m;->e()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Le/b/a/y/j/m;->g()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/c0/a;

    iget-object v2, v2, Le/b/a/c0/a;->b:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {v2, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_b

    :cond_1f
    const/4 v2, 0x0

    goto :goto_c

    :cond_20
    :goto_b
    const/4 v2, 0x1

    :goto_c
    if-eqz v2, :cond_21

    const/16 v18, 0x0

    goto :goto_d

    :cond_21
    move-object/from16 v18, v0

    :goto_d
    if-eqz v1, :cond_23

    .line 39
    invoke-virtual {v1}, Le/b/a/y/j/n;->e()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 40
    iget-object v0, v1, Le/b/a/y/j/n;->a:Ljava/util/List;

    const/4 v2, 0x0

    .line 41
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/c0/a;

    iget-object v0, v0, Le/b/a/c0/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_22

    goto :goto_e

    :cond_22
    const/4 v0, 0x0

    goto :goto_f

    :cond_23
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_24

    move-object/from16 v6, v26

    const/16 v20, 0x0

    goto :goto_10

    :cond_24
    move-object/from16 v20, v1

    move-object/from16 v6, v26

    :goto_10
    if-eqz v6, :cond_27

    .line 42
    invoke-virtual {v6}, Le/b/a/y/j/n;->e()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 43
    iget-object v0, v6, Le/b/a/y/j/n;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/c0/a;

    iget-object v0, v0, Le/b/a/c0/a;->b:Ljava/lang/Object;

    check-cast v0, Le/b/a/c0/d;

    .line 45
    iget v1, v0, Le/b/a/c0/d;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_25

    iget v0, v0, Le/b/a/c0/d;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_11

    :cond_25
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_26

    goto :goto_12

    :cond_26
    const/4 v0, 0x0

    goto :goto_13

    :cond_27
    :goto_12
    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_28

    const/16 v19, 0x0

    goto :goto_14

    :cond_28
    move-object/from16 v19, v6

    :goto_14
    if-eqz v14, :cond_2a

    .line 46
    invoke-virtual {v14}, Le/b/a/y/j/n;->e()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 47
    iget-object v0, v14, Le/b/a/y/j/n;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/c0/a;

    iget-object v0, v0, Le/b/a/c0/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_29

    goto :goto_15

    :cond_29
    const/4 v2, 0x0

    goto :goto_16

    :cond_2a
    :goto_15
    const/4 v2, 0x1

    :goto_16
    if-eqz v2, :cond_2b

    const/4 v14, 0x0

    :cond_2b
    if-eqz v13, :cond_2e

    .line 49
    invoke-virtual {v13}, Le/b/a/y/j/n;->e()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 50
    iget-object v0, v13, Le/b/a/y/j/n;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/c0/a;

    iget-object v0, v0, Le/b/a/c0/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2d

    goto :goto_17

    :cond_2c
    const/4 v1, 0x0

    :cond_2d
    move v9, v1

    goto :goto_18

    :cond_2e
    :goto_17
    const/4 v9, 0x1

    :goto_18
    if-eqz v9, :cond_2f

    const/16 v25, 0x0

    goto :goto_19

    :cond_2f
    move-object/from16 v25, v13

    .line 52
    :goto_19
    new-instance v0, Le/b/a/y/j/l;

    move-object/from16 v16, v0

    move-object/from16 v17, v15

    move-object/from16 v24, v14

    invoke-direct/range {v16 .. v25}, Le/b/a/y/j/l;-><init>(Le/b/a/y/j/e;Le/b/a/y/j/m;Le/b/a/y/j/g;Le/b/a/y/j/b;Le/b/a/y/j/d;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/k/b;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x2

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    const-string v4, "d"

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ty"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_1
    if-nez v3, :cond_3

    return-object v5

    .line 7
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v5, "tr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v3, 0xc

    goto/16 :goto_3

    :sswitch_1
    const-string v5, "tm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v3, 0xb

    goto/16 :goto_3

    :sswitch_2
    const-string v5, "st"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v3, 0xa

    goto/16 :goto_3

    :sswitch_3
    const-string v5, "sr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v3, 0x9

    goto/16 :goto_3

    :sswitch_4
    const-string v5, "sh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v3, 0x8

    goto/16 :goto_3

    :sswitch_5
    const-string v5, "rp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x7

    goto :goto_3

    :sswitch_6
    const-string v5, "rc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    const/4 v3, 0x6

    goto :goto_3

    :sswitch_7
    const-string v5, "mm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    const/4 v3, 0x5

    goto :goto_3

    :sswitch_8
    const-string v5, "gs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_2

    :cond_c
    const/4 v3, 0x4

    goto :goto_3

    :sswitch_9
    const-string v5, "gr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_2

    :cond_d
    const/4 v3, 0x3

    goto :goto_3

    :sswitch_a
    const-string v5, "gf"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_2

    :cond_e
    const/4 v3, 0x2

    goto :goto_3

    :sswitch_b
    const-string v5, "fl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_2

    :cond_f
    const/4 v3, 0x1

    goto :goto_3

    :sswitch_c
    const-string v5, "el"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_2

    :cond_10
    const/4 v3, 0x0

    goto :goto_3

    :goto_2
    const/4 v3, -0x1

    :goto_3
    const-string v5, "e"

    const-string v6, "c"

    const-string v7, "r"

    const-string v8, "g"

    const-string v9, "p"

    const-string v10, "s"

    const-string v11, "o"

    const-string v12, "nm"

    const-string v13, "hd"

    const/16 v14, 0x65

    const/16 v15, 0xcfc

    packed-switch v3, :pswitch_data_0

    move-object v3, v0

    const/4 v1, 0x0

    goto/16 :goto_3b

    .line 8
    :pswitch_0
    invoke-static/range {p0 .. p1}, Le/b/a/a0/a;->b(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/l;

    move-result-object v1

    goto/16 :goto_9

    :pswitch_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v17, v8

    .line 9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eq v3, v14, :cond_1b

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_19

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_17

    const/16 v4, 0x73

    if-eq v3, v4, :cond_15

    if-eq v3, v15, :cond_13

    const/16 v4, 0xdbf

    if-eq v3, v4, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_5

    :cond_12
    const/4 v2, 0x5

    goto :goto_6

    :cond_13
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_14
    const/4 v2, 0x4

    goto :goto_6

    :cond_15
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_5

    :cond_16
    const/4 v2, 0x3

    goto :goto_6

    :cond_17
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_5

    :cond_18
    const/4 v2, 0x2

    goto :goto_6

    :cond_19
    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_5

    :cond_1a
    const/4 v2, 0x1

    goto :goto_6

    :cond_1b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :goto_5
    const/4 v2, -0x1

    goto :goto_6

    :cond_1c
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_24

    const/4 v3, 0x1

    if-eq v2, v3, :cond_21

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1f

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1e

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1d

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 12
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_8

    .line 13
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    move/from16 v22, v2

    goto :goto_8

    :cond_1f
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_8

    :cond_20
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v1, v2}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_8

    .line 16
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    .line 17
    sget-object v2, Le/b/a/y/k/q$a;->b:Le/b/a/y/k/q$a;

    goto :goto_7

    .line 18
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    invoke-static {v1, v2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_23
    sget-object v2, Le/b/a/y/k/q$a;->a:Le/b/a/y/k/q$a;

    :goto_7
    move-object/from16 v18, v2

    goto :goto_8

    :cond_24
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v1, v2}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v2

    move-object/from16 v20, v2

    :goto_8
    const/16 v14, 0x65

    goto/16 :goto_4

    .line 21
    :cond_25
    new-instance v1, Le/b/a/y/k/q;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Le/b/a/y/k/q;-><init>(Ljava/lang/String;Le/b/a/y/k/q$a;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;Z)V

    :goto_9
    move-object v3, v0

    goto/16 :goto_3b

    .line 22
    :pswitch_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v17

    move/from16 v17, v2

    .line 23
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    move-object/from16 v19, v15

    const/16 v15, 0x63

    if-eq v0, v15, :cond_36

    const/16 v15, 0x64

    if-eq v0, v15, :cond_34

    const/16 v15, 0x6f

    if-eq v0, v15, :cond_32

    const/16 v15, 0x77

    if-eq v0, v15, :cond_30

    const/16 v15, 0xcfc

    if-eq v0, v15, :cond_2e

    const/16 v15, 0xd77

    if-eq v0, v15, :cond_2c

    const/16 v15, 0xd7e

    if-eq v0, v15, :cond_2a

    const/16 v15, 0xd9f

    if-eq v0, v15, :cond_28

    const/16 v15, 0xdbf

    if-eq v0, v15, :cond_26

    goto/16 :goto_b

    :cond_26
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_b

    :cond_27
    const/16 v0, 0x8

    goto :goto_c

    :cond_28
    const-string v0, "ml"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_b

    :cond_29
    const/4 v0, 0x7

    goto :goto_c

    :cond_2a
    const-string v0, "lj"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_b

    :cond_2b
    const/4 v0, 0x6

    goto :goto_c

    :cond_2c
    const-string v0, "lc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_b

    :cond_2d
    const/4 v0, 0x5

    goto :goto_c

    :cond_2e
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_b

    :cond_2f
    const/4 v0, 0x4

    goto :goto_c

    :cond_30
    const-string v0, "w"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_b

    :cond_31
    const/4 v0, 0x3

    goto :goto_c

    :cond_32
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_b

    :cond_33
    const/4 v0, 0x2

    goto :goto_c

    :cond_34
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_b

    :cond_35
    const/4 v0, 0x1

    goto :goto_c

    :cond_36
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    :goto_b
    const/4 v0, -0x1

    goto :goto_c

    :cond_37
    const/4 v0, 0x0

    :goto_c
    packed-switch v0, :pswitch_data_1

    move-object v0, v12

    move-object v15, v13

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_13

    .line 26
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v0, v12

    move-object v15, v13

    goto/16 :goto_13

    :pswitch_4
    move-object v0, v12

    move-object v15, v13

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v2, v12

    move/from16 v17, v2

    goto/16 :goto_13

    :pswitch_5
    move-object v0, v12

    move-object v15, v13

    .line 28
    invoke-static {}, Le/b/a/y/k/p$b;->values()[Le/b/a/y/k/p$b;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    aget-object v2, v2, v12

    move-object/from16 v16, v2

    goto/16 :goto_13

    :pswitch_6
    move-object v0, v12

    move-object v15, v13

    .line 29
    invoke-static {}, Le/b/a/y/k/p$a;->values()[Le/b/a/y/k/p$a;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    aget-object v2, v2, v12

    move-object/from16 v19, v2

    goto/16 :goto_13

    :pswitch_7
    move-object v0, v12

    move-object v15, v13

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    move/from16 v18, v2

    goto/16 :goto_13

    :pswitch_8
    move-object v0, v12

    move-object v15, v13

    .line 31
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->s1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/b;

    move-result-object v2

    move-object v14, v2

    goto/16 :goto_13

    :pswitch_9
    move-object v0, v12

    move-object v15, v13

    .line 32
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->u1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/d;

    move-result-object v2

    move-object v10, v2

    goto/16 :goto_13

    :pswitch_a
    move-object v0, v12

    move-object v15, v13

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 34
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_43

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 36
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3a

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-object/from16 v21, v7

    const-string v7, "n"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    const-string v7, "v"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_f

    .line 39
    :cond_38
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->s1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/b;

    move-result-object v13

    goto :goto_f

    .line 40
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    :goto_f
    move-object/from16 v7, v21

    goto :goto_e

    :cond_3a
    move-object/from16 v21, v7

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 42
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v7, 0x64

    if-eq v2, v7, :cond_3f

    const/16 v7, 0x67

    if-eq v2, v7, :cond_3d

    const/16 v7, 0x6f

    if-eq v2, v7, :cond_3b

    goto :goto_10

    :cond_3b
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_10

    :cond_3c
    const/4 v2, 0x2

    goto :goto_11

    :cond_3d
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_10

    :cond_3e
    const/4 v2, 0x1

    goto :goto_11

    :cond_3f
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    :goto_10
    const/4 v2, -0x1

    goto :goto_11

    :cond_40
    const/4 v2, 0x0

    :goto_11
    const/4 v7, 0x1

    if-eqz v2, :cond_42

    if-eq v2, v7, :cond_42

    const/4 v7, 0x2

    if-eq v2, v7, :cond_41

    goto :goto_12

    :cond_41
    move-object v7, v13

    goto :goto_d

    .line 43
    :cond_42
    iput-boolean v7, v1, Le/b/a/e;->n:Z

    .line 44
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    move-object/from16 v7, v21

    goto/16 :goto_d

    :cond_43
    move-object/from16 v21, v7

    const/4 v2, 0x1

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 46
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v2, :cond_44

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    move-object/from16 v7, v21

    goto :goto_13

    :pswitch_b
    move-object v0, v12

    move-object v15, v13

    .line 48
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->q1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/a;

    move-result-object v2

    move-object v9, v2

    :goto_13
    move-object v12, v0

    move-object v13, v15

    move-object/from16 v15, v19

    move-object/from16 v0, p0

    goto/16 :goto_a

    :cond_45
    move-object/from16 v19, v15

    .line 49
    new-instance v0, Le/b/a/y/k/p;

    move-object v2, v0

    move-object v4, v7

    move-object v6, v9

    move-object v7, v10

    move-object v8, v14

    move-object/from16 v9, v19

    move-object/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    invoke-direct/range {v2 .. v12}, Le/b/a/y/k/p;-><init>(Ljava/lang/String;Le/b/a/y/j/b;Ljava/util/List;Le/b/a/y/j/a;Le/b/a/y/j/d;Le/b/a/y/j/b;Le/b/a/y/k/p$a;Le/b/a/y/k/p$b;FZ)V

    move-object/from16 v3, p0

    goto/16 :goto_25

    :pswitch_c
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v21, v0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object v12, v10

    .line 50
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 51
    invoke-static/range {p0 .. p0}, Le/d/c/a/a;->V1(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_15

    :sswitch_d
    const-string v3, "sy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_15

    :cond_46
    const/16 v2, 0x9

    goto/16 :goto_15

    :sswitch_e
    const-string v3, "pt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_15

    :cond_47
    const/16 v2, 0x8

    goto/16 :goto_15

    :sswitch_f
    const-string v3, "os"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_15

    :cond_48
    const/4 v2, 0x7

    goto :goto_15

    :sswitch_10
    const-string v3, "or"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_15

    :cond_49
    const/4 v2, 0x6

    goto :goto_15

    :sswitch_11
    const-string v3, "nm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_15

    :cond_4a
    const/4 v2, 0x5

    goto :goto_15

    :sswitch_12
    const-string v3, "is"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_15

    :cond_4b
    const/4 v2, 0x4

    goto :goto_15

    :sswitch_13
    const-string v3, "ir"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_15

    :cond_4c
    const/4 v2, 0x3

    goto :goto_15

    :sswitch_14
    const-string v3, "hd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_15

    :cond_4d
    const/4 v2, 0x2

    goto :goto_15

    :sswitch_15
    const-string v3, "r"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_15

    :cond_4e
    const/4 v2, 0x1

    goto :goto_15

    :sswitch_16
    const-string v3, "p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_15

    :cond_4f
    const/4 v2, 0x0

    :goto_15
    packed-switch v2, :pswitch_data_2

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_16
    move-object/from16 v3, p0

    goto/16 :goto_14

    .line 53
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    .line 54
    invoke-static {}, Le/b/a/y/k/i$a;->values()[Le/b/a/y/k/i$a;

    move-result-object v2

    const/4 v3, 0x0

    :goto_17
    const/4 v4, 0x2

    if-ge v3, v4, :cond_51

    aget-object v13, v2, v3

    .line 55
    iget v4, v13, Le/b/a/y/k/i$a;->a:I

    if-ne v4, v0, :cond_50

    goto :goto_16

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_51
    const/4 v13, 0x0

    goto/16 :goto_14

    :pswitch_e
    const/4 v0, 0x0

    move-object/from16 v3, p0

    .line 56
    invoke-static {v3, v1, v0}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v14

    goto/16 :goto_14

    :pswitch_f
    move-object/from16 v3, p0

    const/4 v0, 0x0

    .line 57
    invoke-static {v3, v1, v0}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v20

    goto/16 :goto_14

    :pswitch_10
    move-object/from16 v3, p0

    .line 58
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->s1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/b;

    move-result-object v18

    goto/16 :goto_14

    :pswitch_11
    move-object/from16 v3, p0

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_14

    :pswitch_12
    move-object/from16 v3, p0

    const/4 v0, 0x0

    .line 60
    invoke-static {v3, v1, v0}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v19

    goto/16 :goto_14

    :pswitch_13
    move-object/from16 v3, p0

    .line 61
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->s1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/b;

    move-result-object v17

    goto/16 :goto_14

    :pswitch_14
    move-object/from16 v3, p0

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    move/from16 v21, v0

    goto/16 :goto_14

    :pswitch_15
    move-object/from16 v3, p0

    const/4 v0, 0x0

    .line 63
    invoke-static {v3, v1, v0}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v16

    goto/16 :goto_14

    :pswitch_16
    move-object/from16 v3, p0

    .line 64
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->x1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/m;

    move-result-object v15

    goto/16 :goto_14

    :cond_52
    move-object/from16 v3, p0

    .line 65
    new-instance v0, Le/b/a/y/k/i;

    move-object v11, v0

    invoke-direct/range {v11 .. v21}, Le/b/a/y/k/i;-><init>(Ljava/lang/String;Le/b/a/y/k/i$a;Le/b/a/y/j/b;Le/b/a/y/j/m;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;Z)V

    goto/16 :goto_25

    :pswitch_17
    move-object v3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 66
    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 67
    invoke-static/range {p0 .. p0}, Le/d/c/a/a;->V1(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2

    goto :goto_19

    :sswitch_17
    const-string v8, "ind"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    goto :goto_19

    :cond_53
    const/4 v7, 0x3

    goto :goto_19

    :sswitch_18
    const-string v8, "nm"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    goto :goto_19

    :cond_54
    const/4 v7, 0x2

    goto :goto_19

    :sswitch_19
    const-string v8, "ks"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    goto :goto_19

    :cond_55
    const/4 v7, 0x1

    goto :goto_19

    :sswitch_1a
    const-string v8, "hd"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    goto :goto_19

    :cond_56
    const/4 v7, 0x0

    :goto_19
    packed-switch v7, :pswitch_data_3

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_18

    .line 69
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_18

    .line 70
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_18

    .line 71
    :pswitch_1a
    new-instance v0, Le/b/a/y/j/h;

    .line 72
    invoke-static {}, Le/b/a/b0/e;->c()F

    move-result v6

    sget-object v7, Le/b/a/a0/l;->a:Le/b/a/a0/l;

    .line 73
    invoke-static {v3, v1, v6, v7}, Ln3/g0/y;->m1(Landroid/util/JsonReader;Le/b/a/e;FLe/b/a/a0/m;)Ljava/util/List;

    move-result-object v6

    .line 74
    invoke-direct {v0, v6}, Le/b/a/y/j/h;-><init>(Ljava/util/List;)V

    goto :goto_18

    .line 75
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    goto :goto_18

    .line 76
    :cond_57
    new-instance v1, Le/b/a/y/k/o;

    invoke-direct {v1, v5, v2, v0, v4}, Le/b/a/y/k/o;-><init>(Ljava/lang/String;ILe/b/a/y/j/h;Z)V

    goto/16 :goto_3b

    :pswitch_1c
    move-object v3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v12, v0

    move-object v10, v2

    move-object v8, v4

    move-object v11, v5

    move-object v9, v6

    .line 77
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 78
    invoke-static/range {p0 .. p0}, Le/d/c/a/a;->V1(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_3

    goto :goto_1b

    :sswitch_1b
    const-string v4, "tr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_1b

    :cond_58
    const/4 v2, 0x4

    goto :goto_1b

    :sswitch_1c
    const-string v4, "nm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_1b

    :cond_59
    const/4 v2, 0x3

    goto :goto_1b

    :sswitch_1d
    const-string v4, "hd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_1b

    :cond_5a
    const/4 v2, 0x2

    goto :goto_1b

    :sswitch_1e
    const-string v4, "o"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_1b

    :cond_5b
    const/4 v2, 0x1

    goto :goto_1b

    :sswitch_1f
    const-string v4, "c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_1b

    :cond_5c
    const/4 v2, 0x0

    :goto_1b
    packed-switch v2, :pswitch_data_4

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1a

    .line 80
    :pswitch_1d
    invoke-static/range {p0 .. p1}, Le/b/a/a0/a;->b(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/l;

    move-result-object v11

    goto :goto_1a

    .line 81
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    .line 82
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v12

    goto :goto_1a

    :pswitch_20
    const/4 v0, 0x0

    .line 83
    invoke-static {v3, v1, v0}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v10

    goto :goto_1a

    :pswitch_21
    const/4 v0, 0x0

    .line 84
    invoke-static {v3, v1, v0}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v9

    goto :goto_1a

    .line 85
    :cond_5d
    new-instance v1, Le/b/a/y/k/k;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Le/b/a/y/k/k;-><init>(Ljava/lang/String;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/l;Z)V

    goto/16 :goto_3b

    :pswitch_22
    move-object v3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v12, v0

    move-object v11, v2

    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    .line 86
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 87
    invoke-static/range {p0 .. p0}, Le/d/c/a/a;->V1(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_4

    goto :goto_1d

    :sswitch_20
    const-string v4, "nm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_1d

    :cond_5e
    const/4 v2, 0x4

    goto :goto_1d

    :sswitch_21
    const-string v4, "hd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_1d

    :cond_5f
    const/4 v2, 0x3

    goto :goto_1d

    :sswitch_22
    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_1d

    :cond_60
    const/4 v2, 0x2

    goto :goto_1d

    :sswitch_23
    const-string v4, "r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_1d

    :cond_61
    const/4 v2, 0x1

    goto :goto_1d

    :sswitch_24
    const-string v4, "p"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_1d

    :cond_62
    const/4 v2, 0x0

    :goto_1d
    packed-switch v2, :pswitch_data_5

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1c

    .line 89
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1c

    .line 90
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v12

    goto :goto_1c

    .line 91
    :pswitch_25
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->w1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/f;

    move-result-object v10

    goto :goto_1c

    .line 92
    :pswitch_26
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->s1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/b;

    move-result-object v11

    goto :goto_1c

    .line 93
    :pswitch_27
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->x1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/m;

    move-result-object v9

    goto :goto_1c

    .line 94
    :cond_63
    new-instance v1, Le/b/a/y/k/j;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Le/b/a/y/k/j;-><init>(Ljava/lang/String;Le/b/a/y/j/m;Le/b/a/y/j/f;Le/b/a/y/j/b;Z)V

    goto/16 :goto_3b

    :pswitch_28
    move-object v3, v0

    move-object v0, v12

    move-object v15, v13

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 95
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_72

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0xcfc

    if-eq v8, v9, :cond_68

    const/16 v9, 0xda0

    if-eq v8, v9, :cond_66

    const/16 v9, 0xdbf

    if-eq v8, v9, :cond_64

    goto :goto_1f

    :cond_64
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_65

    goto :goto_1f

    :cond_65
    const/4 v7, 0x2

    goto :goto_20

    :cond_66
    const-string v8, "mm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    :goto_1f
    move-object v8, v15

    goto :goto_21

    :cond_67
    const/4 v7, 0x1

    :goto_20
    move-object v8, v15

    goto :goto_22

    :cond_68
    move-object v8, v15

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_69

    :goto_21
    move v7, v2

    goto :goto_22

    :cond_69
    const/4 v7, 0x0

    :goto_22
    if-eqz v7, :cond_71

    const/4 v9, 0x1

    if-eq v7, v9, :cond_6b

    const/4 v9, 0x2

    if-eq v7, v9, :cond_6a

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_24

    .line 98
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_24

    :cond_6b
    const/4 v4, 0x2

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    .line 100
    sget-object v10, Le/b/a/y/k/h$a;->a:Le/b/a/y/k/h$a;

    if-eq v7, v9, :cond_70

    if-eq v7, v4, :cond_6f

    const/4 v4, 0x3

    if-eq v7, v4, :cond_6e

    const/4 v4, 0x4

    if-eq v7, v4, :cond_6d

    const/4 v4, 0x5

    if-eq v7, v4, :cond_6c

    goto :goto_23

    .line 101
    :cond_6c
    sget-object v4, Le/b/a/y/k/h$a;->e:Le/b/a/y/k/h$a;

    goto :goto_24

    .line 102
    :cond_6d
    sget-object v4, Le/b/a/y/k/h$a;->d:Le/b/a/y/k/h$a;

    goto :goto_24

    .line 103
    :cond_6e
    sget-object v4, Le/b/a/y/k/h$a;->c:Le/b/a/y/k/h$a;

    goto :goto_24

    .line 104
    :cond_6f
    sget-object v4, Le/b/a/y/k/h$a;->b:Le/b/a/y/k/h$a;

    goto :goto_24

    :cond_70
    :goto_23
    move-object v15, v8

    move-object v4, v10

    goto :goto_1e

    .line 105
    :cond_71
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    :goto_24
    move-object v15, v8

    goto :goto_1e

    .line 106
    :cond_72
    new-instance v0, Le/b/a/y/k/h;

    invoke-direct {v0, v6, v4, v5}, Le/b/a/y/k/h;-><init>(Ljava/lang/String;Le/b/a/y/k/h$a;Z)V

    .line 107
    iget-object v1, v1, Le/b/a/e;->b:Ljava/util/HashSet;

    const-string v2, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_25
    move-object v1, v0

    goto/16 :goto_3b

    :pswitch_29
    move-object v3, v0

    const/4 v0, -0x1

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v22, v5

    move-object/from16 v20, v16

    move-object/from16 v21, v17

    move-object/from16 v24, v18

    move/from16 v25, v19

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    move-object v13, v6

    move-object v14, v7

    move-object v15, v10

    .line 109
    :cond_73
    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 110
    invoke-static/range {p0 .. p0}, Le/d/c/a/a;->V1(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_5

    goto/16 :goto_27

    :sswitch_25
    const-string v7, "nm"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    goto/16 :goto_27

    :cond_74
    const/16 v6, 0xb

    goto/16 :goto_27

    :sswitch_26
    const-string v7, "ml"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    goto/16 :goto_27

    :cond_75
    const/16 v6, 0xa

    goto/16 :goto_27

    :sswitch_27
    const-string v7, "lj"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    goto/16 :goto_27

    :cond_76
    const/16 v6, 0x9

    goto/16 :goto_27

    :sswitch_28
    const-string v7, "lc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_77

    goto/16 :goto_27

    :cond_77
    const/16 v6, 0x8

    goto/16 :goto_27

    :sswitch_29
    const-string v7, "hd"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_78

    goto :goto_27

    :cond_78
    const/4 v6, 0x7

    goto :goto_27

    :sswitch_2a
    const-string v7, "w"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    goto :goto_27

    :cond_79
    const/4 v6, 0x6

    goto :goto_27

    :sswitch_2b
    const-string v7, "t"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    goto :goto_27

    :cond_7a
    const/4 v6, 0x5

    goto :goto_27

    :sswitch_2c
    const-string v7, "s"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    goto :goto_27

    :cond_7b
    const/4 v6, 0x4

    goto :goto_27

    :sswitch_2d
    const-string v7, "o"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    goto :goto_27

    :cond_7c
    const/4 v6, 0x3

    goto :goto_27

    :sswitch_2e
    const-string v7, "g"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    goto :goto_27

    :cond_7d
    const/4 v6, 0x2

    goto :goto_27

    :sswitch_2f
    const-string v7, "e"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    goto :goto_27

    :cond_7e
    const/4 v6, 0x1

    goto :goto_27

    :sswitch_30
    const-string v7, "d"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    goto :goto_27

    :cond_7f
    const/4 v6, 0x0

    :goto_27
    packed-switch v6, :pswitch_data_6

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_26

    .line 112
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_26

    .line 113
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    move/from16 v22, v5

    goto/16 :goto_26

    .line 114
    :pswitch_2c
    invoke-static {}, Le/b/a/y/k/p$b;->values()[Le/b/a/y/k/p$b;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v21, v5, v6

    goto/16 :goto_26

    .line 115
    :pswitch_2d
    invoke-static {}, Le/b/a/y/k/p$a;->values()[Le/b/a/y/k/p$a;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v20, v5, v6

    goto/16 :goto_26

    .line 116
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v25

    goto/16 :goto_26

    .line 117
    :pswitch_2f
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->s1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/b;

    move-result-object v19

    goto/16 :goto_26

    :pswitch_30
    const/4 v5, 0x1

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    if-ne v6, v5, :cond_80

    sget-object v14, Le/b/a/y/k/f;->a:Le/b/a/y/k/f;

    goto/16 :goto_26

    :cond_80
    sget-object v14, Le/b/a/y/k/f;->b:Le/b/a/y/k/f;

    goto/16 :goto_26

    .line 119
    :pswitch_31
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->w1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/f;

    move-result-object v17

    goto/16 :goto_26

    .line 120
    :pswitch_32
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->u1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/d;

    move-result-object v16

    goto/16 :goto_26

    .line 121
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move v5, v0

    .line 122
    :goto_28
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v7, "k"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_82

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_28

    .line 125
    :cond_81
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    goto :goto_28

    .line 126
    :cond_82
    new-instance v15, Le/b/a/y/j/c;

    new-instance v6, Le/b/a/a0/e;

    invoke-direct {v6, v5}, Le/b/a/a0/e;-><init>(I)V

    .line 127
    invoke-static {v3, v1, v6}, Ln3/g0/y;->n1(Landroid/util/JsonReader;Le/b/a/e;Le/b/a/a0/m;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v15, v6}, Le/b/a/y/j/c;-><init>(Ljava/util/List;)V

    goto :goto_28

    .line 128
    :cond_83
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_26

    .line 129
    :pswitch_34
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->w1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/f;

    move-result-object v18

    goto/16 :goto_26

    .line 130
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 131
    :cond_84
    :goto_29
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 133
    :goto_2a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const-string v10, "n"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_86

    const-string v10, "v"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_85

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2a

    .line 136
    :cond_85
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->s1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/b;

    move-result-object v6

    goto :goto_2a

    .line 137
    :cond_86
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2a

    .line 138
    :cond_87
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 139
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    move-object/from16 v24, v6

    goto :goto_29

    .line 140
    :cond_88
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_89

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    :cond_89
    const/4 v5, 0x1

    .line 141
    iput-boolean v5, v1, Le/b/a/e;->n:Z

    .line 142
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_8a
    const/4 v5, 0x1

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 144
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_73

    const/4 v5, 0x0

    .line 145
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    .line 146
    :cond_8b
    new-instance v0, Le/b/a/y/k/e;

    move-object v12, v0

    move-object/from16 v23, v2

    invoke-direct/range {v12 .. v25}, Le/b/a/y/k/e;-><init>(Ljava/lang/String;Le/b/a/y/k/f;Le/b/a/y/j/c;Le/b/a/y/j/d;Le/b/a/y/j/f;Le/b/a/y/j/f;Le/b/a/y/j/b;Le/b/a/y/k/p$a;Le/b/a/y/k/p$b;FLjava/util/List;Le/b/a/y/j/b;Z)V

    goto/16 :goto_25

    :pswitch_36
    move-object v3, v0

    const/4 v0, 0x0

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 148
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    .line 149
    invoke-static/range {p0 .. p0}, Le/d/c/a/a;->V1(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_6

    goto :goto_2c

    :sswitch_31
    const-string v7, "nm"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8c

    goto :goto_2c

    :cond_8c
    const/4 v6, 0x2

    goto :goto_2c

    :sswitch_32
    const-string v7, "it"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    goto :goto_2c

    :cond_8d
    const/4 v6, 0x1

    goto :goto_2c

    :sswitch_33
    const-string v7, "hd"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    goto :goto_2c

    :cond_8e
    const/4 v6, 0x0

    :goto_2c
    packed-switch v6, :pswitch_data_7

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2b

    .line 151
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2b

    .line 152
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 153
    :cond_8f
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 154
    invoke-static/range {p0 .. p1}, Le/b/a/a0/a;->c(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/k/b;

    move-result-object v5

    if-eqz v5, :cond_8f

    .line 155
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 156
    :cond_90
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_2b

    .line 157
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    goto :goto_2b

    .line 158
    :cond_91
    new-instance v1, Le/b/a/y/k/n;

    invoke-direct {v1, v4, v2, v0}, Le/b/a/y/k/n;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_3b

    :pswitch_3a
    move-object v3, v0

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 159
    sget-object v4, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v22, v0

    move-object v15, v4

    move-object v13, v5

    move-object v14, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 160
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 161
    invoke-static/range {p0 .. p0}, Le/d/c/a/a;->V1(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_7

    goto/16 :goto_2f

    :sswitch_34
    const-string v5, "nm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto :goto_2f

    :cond_92
    const/4 v4, 0x7

    goto :goto_2f

    :sswitch_35
    const-string v5, "hd"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto :goto_2f

    :cond_93
    const/4 v4, 0x6

    goto :goto_2f

    :sswitch_36
    const-string v5, "t"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto :goto_2f

    :cond_94
    const/4 v4, 0x5

    goto :goto_2f

    :sswitch_37
    const-string v5, "s"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_2f

    :cond_95
    const/4 v4, 0x4

    goto :goto_2f

    :sswitch_38
    const-string v5, "r"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_2f

    :cond_96
    const/4 v4, 0x3

    goto :goto_2f

    :sswitch_39
    const-string v5, "o"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto :goto_2f

    :cond_97
    const/4 v4, 0x2

    goto :goto_2f

    :sswitch_3a
    const-string v5, "g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_2f

    :cond_98
    const/4 v4, 0x1

    goto :goto_2f

    :sswitch_3b
    const-string v5, "e"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto :goto_2f

    :cond_99
    const/4 v4, 0x0

    :goto_2f
    packed-switch v4, :pswitch_data_8

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2e

    .line 163
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2e

    .line 164
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v22

    goto :goto_2e

    .line 165
    :pswitch_3d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_9a

    sget-object v0, Le/b/a/y/k/f;->a:Le/b/a/y/k/f;

    goto :goto_30

    :cond_9a
    sget-object v0, Le/b/a/y/k/f;->b:Le/b/a/y/k/f;

    :goto_30
    move-object v14, v0

    goto/16 :goto_2e

    .line 166
    :pswitch_3e
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->w1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/f;

    move-result-object v18

    goto/16 :goto_2e

    :pswitch_3f
    const/4 v0, 0x1

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    if-ne v4, v0, :cond_9b

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_31

    :cond_9b
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_31
    move-object v15, v0

    goto/16 :goto_2e

    .line 168
    :pswitch_40
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->u1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/d;

    move-result-object v17

    goto/16 :goto_2e

    .line 169
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move v0, v2

    .line 170
    :goto_32
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9d

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_32

    .line 173
    :cond_9c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_32

    .line 174
    :cond_9d
    new-instance v4, Le/b/a/y/j/c;

    new-instance v5, Le/b/a/a0/e;

    invoke-direct {v5, v0}, Le/b/a/a0/e;-><init>(I)V

    .line 175
    invoke-static {v3, v1, v5}, Ln3/g0/y;->n1(Landroid/util/JsonReader;Le/b/a/e;Le/b/a/a0/m;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Le/b/a/y/j/c;-><init>(Ljava/util/List;)V

    move-object/from16 v16, v4

    goto :goto_32

    .line 176
    :cond_9e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_2e

    .line 177
    :pswitch_42
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->w1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/f;

    move-result-object v19

    goto/16 :goto_2e

    .line 178
    :cond_9f
    new-instance v1, Le/b/a/y/k/d;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v22}, Le/b/a/y/k/d;-><init>(Ljava/lang/String;Le/b/a/y/k/f;Landroid/graphics/Path$FillType;Le/b/a/y/j/c;Le/b/a/y/j/d;Le/b/a/y/j/f;Le/b/a/y/j/f;Le/b/a/y/j/b;Le/b/a/y/j/b;Z)V

    goto/16 :goto_3b

    :pswitch_43
    move-object v3, v0

    move-object v0, v12

    move-object v8, v13

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v15, v2

    move/from16 v19, v15

    move-object/from16 v18, v5

    move-object v14, v10

    move-object/from16 v17, v12

    .line 179
    :goto_33
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v10, -0x179b7bc2

    if-eq v5, v10, :cond_aa

    const/16 v10, 0x63

    if-eq v5, v10, :cond_a8

    const/16 v10, 0x6f

    if-eq v5, v10, :cond_a6

    const/16 v10, 0x72

    if-eq v5, v10, :cond_a4

    const/16 v10, 0xcfc

    if-eq v5, v10, :cond_a2

    const/16 v10, 0xdbf

    if-eq v5, v10, :cond_a0

    goto :goto_34

    :cond_a0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    goto :goto_34

    :cond_a1
    const/4 v2, 0x5

    goto :goto_35

    :cond_a2
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    goto :goto_34

    :cond_a3
    const/4 v2, 0x4

    goto :goto_35

    :cond_a4
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    goto :goto_34

    :cond_a5
    const/4 v2, 0x3

    goto :goto_35

    :cond_a6
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    goto :goto_34

    :cond_a7
    const/4 v2, 0x2

    goto :goto_35

    :cond_a8
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    goto :goto_34

    :cond_a9
    const/4 v2, 0x1

    goto :goto_35

    :cond_aa
    const-string v5, "fillEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    :goto_34
    move v2, v4

    goto :goto_35

    :cond_ab
    const/4 v2, 0x0

    :goto_35
    if-eqz v2, :cond_b1

    const/4 v5, 0x1

    if-eq v2, v5, :cond_b0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_af

    const/4 v5, 0x3

    if-eq v2, v5, :cond_ae

    const/4 v5, 0x4

    if-eq v2, v5, :cond_ad

    const/4 v5, 0x5

    if-eq v2, v5, :cond_ac

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_33

    .line 182
    :cond_ac
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_33

    .line 183
    :cond_ad
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    move/from16 v19, v2

    goto/16 :goto_33

    .line 184
    :cond_ae
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    move v9, v2

    goto/16 :goto_33

    .line 185
    :cond_af
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->u1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/d;

    move-result-object v2

    move-object/from16 v18, v2

    goto/16 :goto_33

    .line 186
    :cond_b0
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->q1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/a;

    move-result-object v2

    move-object/from16 v17, v2

    goto/16 :goto_33

    .line 187
    :cond_b1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    move v15, v2

    goto/16 :goto_33

    :cond_b2
    const/4 v0, 0x1

    if-ne v9, v0, :cond_b3

    .line 188
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_36

    :cond_b3
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_36
    move-object/from16 v16, v0

    .line 189
    new-instance v1, Le/b/a/y/k/m;

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Le/b/a/y/k/m;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Le/b/a/y/j/a;Le/b/a/y/j/d;Z)V

    goto/16 :goto_3b

    :pswitch_44
    move-object v3, v0

    move-object v0, v12

    move-object v8, v13

    const/4 v5, 0x3

    const/4 v6, -0x1

    if-ne v2, v5, :cond_b4

    const/4 v2, 0x1

    goto :goto_37

    :cond_b4
    const/4 v2, 0x0

    :goto_37
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v17, v2

    move-object v14, v5

    move-object v15, v7

    move-object/from16 v16, v11

    move/from16 v18, v12

    .line 190
    :goto_38
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v7, 0x64

    const/16 v11, 0x70

    const/16 v12, 0x73

    if-eq v5, v7, :cond_bd

    const/16 v7, 0xcfc

    if-eq v5, v11, :cond_bb

    const/16 v11, 0xdbf

    if-eq v5, v12, :cond_b9

    if-eq v5, v7, :cond_b7

    if-eq v5, v11, :cond_b5

    goto :goto_39

    :cond_b5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    goto :goto_39

    :cond_b6
    const/4 v2, 0x4

    goto :goto_3a

    :cond_b7
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b8

    goto :goto_39

    :cond_b8
    const/4 v2, 0x3

    goto :goto_3a

    :cond_b9
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    goto :goto_39

    :cond_ba
    const/4 v2, 0x2

    goto :goto_3a

    :cond_bb
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    goto :goto_39

    :cond_bc
    const/4 v2, 0x1

    goto :goto_3a

    :cond_bd
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    :goto_39
    move v2, v6

    goto :goto_3a

    :cond_be
    const/4 v2, 0x0

    :goto_3a
    if-eqz v2, :cond_c3

    const/4 v5, 0x1

    if-eq v2, v5, :cond_c2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_c1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_c0

    const/4 v5, 0x4

    if-eq v2, v5, :cond_bf

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_38

    .line 193
    :cond_bf
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v14

    goto :goto_38

    .line 194
    :cond_c0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v18

    goto :goto_38

    .line 195
    :cond_c1
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->w1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/f;

    move-result-object v16

    goto :goto_38

    .line 196
    :cond_c2
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->x1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/m;

    move-result-object v15

    goto :goto_38

    .line 197
    :cond_c3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_c4

    const/16 v17, 0x1

    goto/16 :goto_38

    :cond_c4
    const/16 v17, 0x0

    goto/16 :goto_38

    .line 198
    :cond_c5
    new-instance v1, Le/b/a/y/k/a;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Le/b/a/y/k/a;-><init>(Ljava/lang/String;Le/b/a/y/j/m;Le/b/a/y/j/f;ZZ)V

    .line 199
    :goto_3b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3b

    .line 201
    :cond_c6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_c
        0xcc6 -> :sswitch_b
        0xcdf -> :sswitch_a
        0xceb -> :sswitch_9
        0xcec -> :sswitch_8
        0xda0 -> :sswitch_7
        0xe31 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_3a
        :pswitch_36
        :pswitch_29
        :pswitch_28
        :pswitch_22
        :pswitch_1c
        :pswitch_17
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x70 -> :sswitch_16
        0x72 -> :sswitch_15
        0xcfc -> :sswitch_14
        0xd29 -> :sswitch_13
        0xd2a -> :sswitch_12
        0xdbf -> :sswitch_11
        0xde3 -> :sswitch_10
        0xde4 -> :sswitch_f
        0xe04 -> :sswitch_e
        0xe66 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xcfc -> :sswitch_1a
        0xd68 -> :sswitch_19
        0xdbf -> :sswitch_18
        0x197df -> :sswitch_17
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x63 -> :sswitch_1f
        0x6f -> :sswitch_1e
        0xcfc -> :sswitch_1d
        0xdbf -> :sswitch_1c
        0xe7e -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0x70 -> :sswitch_24
        0x72 -> :sswitch_23
        0x73 -> :sswitch_22
        0xcfc -> :sswitch_21
        0xdbf -> :sswitch_20
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        0x64 -> :sswitch_30
        0x65 -> :sswitch_2f
        0x67 -> :sswitch_2e
        0x6f -> :sswitch_2d
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_2b
        0x77 -> :sswitch_2a
        0xcfc -> :sswitch_29
        0xd77 -> :sswitch_28
        0xd7e -> :sswitch_27
        0xd9f -> :sswitch_26
        0xdbf -> :sswitch_25
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        0xcfc -> :sswitch_33
        0xd2b -> :sswitch_32
        0xdbf -> :sswitch_31
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_39
        :pswitch_38
        :pswitch_37
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        0x65 -> :sswitch_3b
        0x67 -> :sswitch_3a
        0x6f -> :sswitch_39
        0x72 -> :sswitch_38
        0x73 -> :sswitch_37
        0x74 -> :sswitch_36
        0xcfc -> :sswitch_35
        0xdbf -> :sswitch_34
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
    .end packed-switch
.end method

.method public static d(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/l/e;
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    sget-object v1, Le/b/a/y/l/e$b;->a:Le/b/a/y/l/e$b;

    .line 2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x0

    .line 6
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v5, "UNSET"

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    move-object/from16 v30, v1

    move/from16 v24, v2

    move v1, v11

    move v2, v1

    move/from16 v25, v2

    move-wide/from16 v17, v15

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-wide v14, v13

    move-object v13, v5

    .line 7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v33

    const-string v11, "sw"

    const-string v4, "sc"

    const-string v3, "t"

    move-object/from16 v37, v6

    const-string v6, "nm"

    const/16 v38, 0x3

    const/16 v39, 0x2

    const/16 v40, -0x1

    const/16 v41, 0x1

    move-wide/from16 v42, v14

    sparse-switch v33, :sswitch_data_0

    :goto_1
    move/from16 v5, v40

    goto/16 :goto_3

    :sswitch_0
    const-string v14, "masksProperties"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v5, 0x16

    goto/16 :goto_3

    :sswitch_1
    const-string v14, "refId"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v5, 0x15

    goto/16 :goto_3

    :sswitch_2
    const-string v14, "ind"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v5, 0x14

    goto/16 :goto_3

    :sswitch_3
    const-string v14, "ty"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v5, 0x13

    goto/16 :goto_3

    :sswitch_4
    const-string v14, "tt"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v5, 0x12

    goto/16 :goto_3

    :sswitch_5
    const-string v14, "tm"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v5, 0x11

    goto/16 :goto_3

    :sswitch_6
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v5, 0x10

    goto/16 :goto_3

    :sswitch_7
    const-string v14, "st"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v5, 0xf

    goto/16 :goto_3

    :sswitch_8
    const-string v14, "sr"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v5, 0xe

    goto/16 :goto_3

    :sswitch_9
    const-string v14, "sh"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v5, 0xd

    goto/16 :goto_3

    :sswitch_a
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v5, 0xc

    goto/16 :goto_3

    :sswitch_b
    const-string v14, "op"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v5, 0xb

    goto/16 :goto_3

    :sswitch_c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v5, 0xa

    goto/16 :goto_3

    :sswitch_d
    const-string v14, "ks"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v5, 0x9

    goto/16 :goto_3

    :sswitch_e
    const-string v14, "ip"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v5, 0x8

    goto/16 :goto_3

    :sswitch_f
    const-string v14, "hd"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_2

    :cond_f
    const/4 v5, 0x7

    goto :goto_3

    :sswitch_10
    const-string v14, "ef"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_2

    :cond_10
    const/4 v5, 0x6

    goto :goto_3

    :sswitch_11
    const-string v14, "cl"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_2

    :cond_11
    const/4 v5, 0x5

    goto :goto_3

    :sswitch_12
    const-string v14, "w"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_2

    :cond_12
    const/4 v5, 0x4

    goto :goto_3

    :sswitch_13
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_2

    :cond_13
    move/from16 v5, v38

    goto :goto_3

    :sswitch_14
    const-string v14, "h"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_2

    :cond_14
    move/from16 v5, v39

    goto :goto_3

    :sswitch_15
    const-string v14, "shapes"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_2

    :cond_15
    move/from16 v5, v41

    goto :goto_3

    :sswitch_16
    const-string v14, "parent"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    :goto_2
    goto/16 :goto_1

    :cond_16
    const/4 v5, 0x0

    :goto_3
    packed-switch v5, :pswitch_data_0

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 10
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 11
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 12
    sget-object v3, Le/b/a/y/k/g$a;->a:Le/b/a/y/k/g$a;

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 14
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_7
    move/from16 v14, v40

    goto :goto_8

    :sswitch_17
    const-string v15, "mode"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17

    goto :goto_7

    :cond_17
    move/from16 v14, v38

    goto :goto_8

    :sswitch_18
    const-string v15, "inv"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    goto :goto_7

    :cond_18
    move/from16 v14, v39

    goto :goto_8

    :sswitch_19
    const-string v15, "pt"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    goto :goto_7

    :cond_19
    move/from16 v14, v41

    goto :goto_8

    :sswitch_1a
    const-string v15, "o"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    goto :goto_7

    :cond_1a
    const/4 v14, 0x0

    :goto_8
    packed-switch v14, :pswitch_data_1

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6

    .line 18
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v14, "i"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c

    const-string v14, "s"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    move-object v4, v3

    goto :goto_6

    .line 19
    :cond_1b
    sget-object v4, Le/b/a/y/k/g$a;->b:Le/b/a/y/k/g$a;

    goto :goto_6

    .line 20
    :cond_1c
    iget-object v4, v7, Le/b/a/e;->b:Ljava/util/HashSet;

    const-string v14, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v4, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v4, Le/b/a/y/k/g$a;->c:Le/b/a/y/k/g$a;

    goto :goto_6

    .line 22
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v11

    goto :goto_6

    .line 23
    :pswitch_3
    new-instance v5, Le/b/a/y/j/h;

    .line 24
    invoke-static {}, Le/b/a/b0/e;->c()F

    move-result v14

    sget-object v15, Le/b/a/a0/l;->a:Le/b/a/a0/l;

    .line 25
    invoke-static {v0, v7, v14, v15}, Ln3/g0/y;->m1(Landroid/util/JsonReader;Le/b/a/e;FLe/b/a/a0/m;)Ljava/util/List;

    move-result-object v14

    .line 26
    invoke-direct {v5, v14}, Le/b/a/y/j/h;-><init>(Ljava/util/List;)V

    goto/16 :goto_6

    .line 27
    :pswitch_4
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->u1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/d;

    move-result-object v6

    goto/16 :goto_6

    .line 28
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 29
    new-instance v3, Le/b/a/y/k/g;

    invoke-direct {v3, v4, v5, v6, v11}, Le/b/a/y/k/g;-><init>(Le/b/a/y/k/g$a;Le/b/a/y/j/h;Le/b/a/y/j/d;Z)V

    .line 30
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 31
    :cond_1e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 32
    iget v4, v7, Le/b/a/e;->o:I

    add-int/2addr v4, v3

    iput v4, v7, Le/b/a/e;->o:I

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_4

    .line 34
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v19

    goto :goto_9

    .line 35
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-long v14, v3

    move-object/from16 v6, v37

    const/4 v5, 0x0

    goto/16 :goto_f

    .line 36
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    .line 37
    sget-object v16, Le/b/a/y/l/e$a;->g:Le/b/a/y/l/e$a;

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1f

    .line 38
    invoke-static {}, Le/b/a/y/l/e$a;->values()[Le/b/a/y/l/e$a;

    move-result-object v4

    aget-object v16, v4, v3

    goto :goto_9

    .line 39
    :pswitch_8
    invoke-static {}, Le/b/a/y/l/e$b;->values()[Le/b/a/y/l/e$b;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    aget-object v30, v3, v4

    .line 40
    iget v3, v7, Le/b/a/e;->o:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v7, Le/b/a/e;->o:I

    :cond_1f
    :goto_9
    const/4 v5, 0x0

    goto/16 :goto_d

    :pswitch_9
    const/4 v5, 0x0

    .line 41
    invoke-static {v0, v7, v5}, Ln3/g0/y;->t1(Landroid/util/JsonReader;Le/b/a/e;Z)Le/b/a/y/j/b;

    move-result-object v31

    goto/16 :goto_d

    :pswitch_a
    const/4 v5, 0x0

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Le/b/a/b0/e;->c()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    move/from16 v21, v3

    goto/16 :goto_d

    :pswitch_b
    const/4 v5, 0x0

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v25, v3

    goto/16 :goto_d

    :pswitch_c
    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v24, v3

    goto/16 :goto_d

    :pswitch_d
    const/4 v5, 0x0

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Le/b/a/b0/e;->c()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    move/from16 v22, v3

    goto/16 :goto_d

    :pswitch_e
    const/4 v5, 0x0

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    goto/16 :goto_d

    :pswitch_f
    const/4 v5, 0x0

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto/16 :goto_d

    :pswitch_10
    const/4 v5, 0x0

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_d

    :pswitch_11
    const/4 v5, 0x0

    .line 49
    invoke-static/range {p0 .. p1}, Le/b/a/a0/a;->b(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/l;

    move-result-object v20

    goto/16 :goto_d

    :pswitch_12
    const/4 v5, 0x0

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_d

    :pswitch_13
    const/4 v5, 0x0

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v32

    goto :goto_d

    :pswitch_14
    const/4 v5, 0x0

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 56
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_b

    .line 59
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 60
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_a

    .line 61
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    iget-object v4, v7, Le/b/a/e;->b:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_1d

    :pswitch_15
    const/4 v5, 0x0

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :pswitch_16
    const/4 v5, 0x0

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Le/b/a/b0/e;->c()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    move/from16 v26, v3

    :goto_d
    move-object/from16 v6, v37

    :goto_e
    move-wide/from16 v14, v42

    :goto_f
    const/4 v0, 0x0

    goto/16 :goto_1e

    :pswitch_17
    const/4 v5, 0x0

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 67
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v14, "a"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_24

    const-string v14, "d"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_11

    .line 70
    :cond_23
    new-instance v6, Le/b/a/y/j/j;

    sget-object v14, Le/b/a/a0/c;->a:Le/b/a/a0/c;

    invoke-static {v0, v7, v14}, Ln3/g0/y;->n1(Landroid/util/JsonReader;Le/b/a/e;Le/b/a/a0/m;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v6, v14}, Le/b/a/y/j/j;-><init>(Ljava/util/List;)V

    move-object/from16 v28, v6

    :goto_11
    move-object/from16 v36, v4

    const/4 v0, 0x0

    goto/16 :goto_1b

    .line 71
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v6, 0x0

    .line 74
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_25

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_12

    .line 77
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 78
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2a

    move-object/from16 v33, v14

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v29

    sparse-switch v29, :sswitch_data_2

    :goto_14
    move-object/from16 v36, v4

    :goto_15
    move/from16 v4, v40

    goto :goto_17

    :sswitch_1b
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_26

    goto :goto_14

    :cond_26
    move-object/from16 v36, v4

    move/from16 v4, v38

    goto :goto_17

    :sswitch_1c
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_27

    goto :goto_14

    :cond_27
    move-object/from16 v36, v4

    move/from16 v4, v39

    goto :goto_17

    :sswitch_1d
    move-object/from16 v36, v4

    const-string v4, "fc"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_16

    :cond_28
    move/from16 v4, v41

    goto :goto_17

    :sswitch_1e
    move-object/from16 v36, v4

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    :goto_16
    goto :goto_15

    :cond_29
    const/4 v4, 0x0

    :goto_17
    packed-switch v4, :pswitch_data_2

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_18

    .line 81
    :pswitch_18
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->s1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/b;

    move-result-object v5

    goto :goto_18

    .line 82
    :pswitch_19
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->q1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/a;

    move-result-object v15

    goto :goto_18

    .line 83
    :pswitch_1a
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->q1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/a;

    move-result-object v6

    goto :goto_18

    .line 84
    :pswitch_1b
    invoke-static/range {p0 .. p1}, Ln3/g0/y;->s1(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/j/b;

    move-result-object v0

    :goto_18
    move-object/from16 v14, v33

    move-object/from16 v4, v36

    goto :goto_13

    :cond_2a
    move-object/from16 v36, v4

    move-object/from16 v33, v14

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 86
    new-instance v4, Le/b/a/y/j/k;

    invoke-direct {v4, v6, v15, v5, v0}, Le/b/a/y/j/k;-><init>(Le/b/a/y/j/a;Le/b/a/y/j/a;Le/b/a/y/j/b;Le/b/a/y/j/b;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v6, v4

    move-object/from16 v4, v36

    goto/16 :goto_12

    :cond_2b
    move-object/from16 v36, v4

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    if-nez v6, :cond_2c

    .line 88
    new-instance v6, Le/b/a/y/j/k;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v0, v0, v0}, Le/b/a/y/j/k;-><init>(Le/b/a/y/j/a;Le/b/a/y/j/a;Le/b/a/y/j/b;Le/b/a/y/j/b;)V

    goto :goto_19

    :cond_2c
    const/4 v0, 0x0

    :goto_19
    move-object/from16 v29, v6

    goto :goto_1a

    :cond_2d
    move-object/from16 v36, v4

    const/4 v0, 0x0

    .line 89
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1a

    .line 91
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    :goto_1b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, v36

    goto/16 :goto_10

    :cond_2f
    const/4 v0, 0x0

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_1d

    :pswitch_1c
    const/4 v0, 0x0

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Le/b/a/b0/e;->c()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    move/from16 v27, v3

    goto :goto_1d

    :pswitch_1d
    const/4 v0, 0x0

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 95
    :cond_30
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 96
    invoke-static/range {p0 .. p1}, Le/b/a/a0/a;->c(Landroid/util/JsonReader;Le/b/a/e;)Le/b/a/y/k/b;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 97
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 98
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_1d

    :pswitch_1e
    const/4 v0, 0x0

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v17, v3

    :goto_1d
    move-object/from16 v6, v37

    move-wide/from16 v14, v42

    :goto_1e
    move-object/from16 v0, p0

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_32
    move-object/from16 v37, v6

    move-wide/from16 v42, v14

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    div-float v11, v1, v24

    div-float v14, v2, v24

    .line 101
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, v11, v0

    if-lez v1, :cond_33

    .line 102
    new-instance v6, Le/b/a/c0/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v33

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v12

    move-object/from16 v35, v8

    move-object/from16 v34, v10

    move-object/from16 v10, v37

    move-object v8, v6

    move-object/from16 v6, v33

    invoke-direct/range {v0 .. v6}, Le/b/a/c0/a;-><init>(Le/b/a/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 103
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_33
    move-object/from16 v35, v8

    move-object/from16 v34, v10

    move-object/from16 v10, v37

    :goto_1f
    const/4 v0, 0x0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_34

    goto :goto_20

    .line 104
    :cond_34
    iget v0, v7, Le/b/a/e;->l:F

    move v14, v0

    .line 105
    :goto_20
    new-instance v8, Le/b/a/c0/a;

    const/16 v33, 0x0

    .line 106
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v9

    move v5, v11

    invoke-direct/range {v0 .. v6}, Le/b/a/c0/a;-><init>(Le/b/a/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 107
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v8, Le/b/a/c0/a;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 109
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v8

    move-object v2, v12

    move-object v3, v12

    move-object/from16 v4, v33

    move v5, v14

    invoke-direct/range {v0 .. v6}, Le/b/a/c0/a;-><init>(Le/b/a/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 110
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    .line 111
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "ai"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 112
    :cond_35
    iget-object v0, v7, Le/b/a/e;->b:Ljava/util/HashSet;

    const-string v1, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_36
    new-instance v33, Le/b/a/y/l/e;

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v42

    move-object/from16 v6, v16

    move-wide/from16 v7, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v34

    move-object/from16 v11, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v14, v23

    move-object/from16 v21, v15

    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v27

    move-object/from16 v19, v28

    move-object/from16 v20, v29

    move-object/from16 v22, v30

    move-object/from16 v23, v31

    move/from16 v24, v32

    invoke-direct/range {v0 .. v24}, Le/b/a/y/l/e;-><init>(Ljava/util/List;Le/b/a/e;Ljava/lang/String;JLe/b/a/y/l/e$a;JLjava/lang/String;Ljava/util/List;Le/b/a/y/j/l;IIIFFIILe/b/a/y/j/j;Le/b/a/y/j/k;Ljava/util/List;Le/b/a/y/l/e$b;Le/b/a/y/j/b;Z)V

    return-object v33

    :sswitch_data_0
    .sparse-switch
        -0x3b54f756 -> :sswitch_16
        -0x35db5b0e -> :sswitch_15
        0x68 -> :sswitch_14
        0x74 -> :sswitch_13
        0x77 -> :sswitch_12
        0xc69 -> :sswitch_11
        0xca1 -> :sswitch_10
        0xcfc -> :sswitch_f
        0xd27 -> :sswitch_e
        0xd68 -> :sswitch_d
        0xdbf -> :sswitch_c
        0xde1 -> :sswitch_b
        0xe50 -> :sswitch_a
        0xe55 -> :sswitch_9
        0xe5f -> :sswitch_8
        0xe61 -> :sswitch_7
        0xe64 -> :sswitch_6
        0xe79 -> :sswitch_5
        0xe80 -> :sswitch_4
        0xe85 -> :sswitch_3
        0x197df -> :sswitch_2
        0x675e90e -> :sswitch_1
        0x55ed639a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6f -> :sswitch_1a
        0xe04 -> :sswitch_19
        0x197f1 -> :sswitch_18
        0x3339a3 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x74 -> :sswitch_1e
        0xcbd -> :sswitch_1d
        0xe50 -> :sswitch_1c
        0xe64 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method
