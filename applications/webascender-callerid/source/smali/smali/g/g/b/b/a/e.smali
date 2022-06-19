.class public final Lg/g/b/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/b/b/a/d;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lg/g/b/b/e/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/p;

.field private final d:Landroidx/room/p;

.field private final e:Landroidx/room/p;

.field private final f:Landroidx/room/p;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    .line 3
    new-instance v0, Lg/g/b/b/a/e$a;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/e$a;-><init>(Lg/g/b/b/a/e;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/e;->b:Landroidx/room/c;

    .line 4
    new-instance v0, Lg/g/b/b/a/e$b;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/e$b;-><init>(Lg/g/b/b/a/e;Landroidx/room/j;)V

    .line 5
    new-instance v0, Lg/g/b/b/a/e$c;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/e$c;-><init>(Lg/g/b/b/a/e;Landroidx/room/j;)V

    .line 6
    new-instance v0, Lg/g/b/b/a/e$d;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/e$d;-><init>(Lg/g/b/b/a/e;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/e;->c:Landroidx/room/p;

    .line 7
    new-instance v0, Lg/g/b/b/a/e$e;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/e$e;-><init>(Lg/g/b/b/a/e;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/e;->d:Landroidx/room/p;

    .line 8
    new-instance v0, Lg/g/b/b/a/e$f;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/e$f;-><init>(Lg/g/b/b/a/e;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/e;->e:Landroidx/room/p;

    .line 9
    new-instance v0, Lg/g/b/b/a/e$g;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/e$g;-><init>(Lg/g/b/b/a/e;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/e;->f:Landroidx/room/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lg/g/b/b/e/a/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Landroidx/room/s/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SELECT "

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM caller_ids WHERE phone_number IN("

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 6
    invoke-static {v0, v2}, Landroidx/room/s/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") AND source_type IN("

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v3

    .line 9
    invoke-static {v0, v3}, Landroidx/room/s/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v2, 0x0

    add-int/2addr v4, v3

    .line 12
    invoke-static {v0, v4}, Landroidx/room/m;->c(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v3

    .line 13
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    .line 14
    invoke-virtual {v3, v5}, Landroidx/room/m;->M0(I)V

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v3, v5, v6}, Landroidx/room/m;->x(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v4

    .line 16
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    .line 17
    invoke-virtual {v3, v2}, Landroidx/room/m;->M0(I)V

    goto :goto_3

    .line 18
    :cond_2
    invoke-virtual {v3, v2, v4}, Landroidx/room/m;->x(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, v1, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 20
    iget-object v0, v1, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/s/c;->b(Landroidx/room/j;Lf/t/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "_id"

    .line 21
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "entity_type"

    .line 22
    invoke-static {v2, v5}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "phone_number"

    .line 23
    invoke-static {v2, v6}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "reputation_level"

    .line 24
    invoke-static {v2, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "display_name"

    .line 25
    invoke-static {v2, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "display_location"

    .line 26
    invoke-static {v2, v9}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "display_image_url"

    .line 27
    invoke-static {v2, v10}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "attribution_image"

    .line 28
    invoke-static {v2, v11}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "attribution_url"

    .line 29
    invoke-static {v2, v12}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "attribution_name"

    .line 30
    invoke-static {v2, v13}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "profile_tag"

    .line 31
    invoke-static {v2, v14}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "display_line_type"

    .line 32
    invoke-static {v2, v15}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "entity_expired_time_millis"

    .line 33
    invoke-static {v2, v4}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "source_type"

    .line 34
    invoke-static {v2, v1}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "last_access_time_millis"

    .line 35
    invoke-static {v2, v3}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 p2, v0

    const-string v0, "profile_icon_type"

    .line 36
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "reputation_category_id"

    .line 37
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "category_name"

    .line 38
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "display_category_name"

    .line 39
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "line_type_id"

    .line 40
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "display_detail"

    .line 41
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "display_description"

    .line 42
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "language_tag"

    .line 43
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "display_background_url"

    .line 44
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "display_background_assettype"

    .line 45
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    move/from16 v27, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 48
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 49
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 50
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 51
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 52
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 53
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 54
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 55
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 56
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 57
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 58
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 59
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v40, 0x0

    goto :goto_5

    .line 60
    :cond_4
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v40, v3

    .line 61
    :goto_5
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v3, v27

    .line 62
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v42, 0x0

    :goto_6
    move/from16 v53, v17

    move/from16 v17, v1

    move/from16 v1, v53

    goto :goto_7

    .line 63
    :cond_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v42, v27

    goto :goto_6

    .line 64
    :goto_7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    move/from16 v27, v1

    move/from16 v1, v18

    .line 65
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_6

    move/from16 v18, v1

    move/from16 v1, v19

    const/16 v44, 0x0

    goto :goto_8

    .line 66
    :cond_6
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v44, v18

    move/from16 v18, v1

    move/from16 v1, v19

    .line 67
    :goto_8
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    move/from16 v19, v1

    move/from16 v1, v20

    .line 68
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v20, v1

    move/from16 v1, v21

    .line 69
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    move/from16 v21, v1

    move/from16 v1, v22

    .line 70
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    move/from16 v22, v1

    move/from16 v1, v23

    .line 71
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    move/from16 v23, v1

    move/from16 v1, v24

    .line 72
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    move/from16 v24, v1

    move/from16 v1, v25

    .line 73
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    move/from16 v25, v1

    move/from16 v1, v26

    .line 74
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    move/from16 v26, v1

    .line 75
    new-instance v1, Lg/g/b/b/e/a/b;

    move-object/from16 v28, v1

    invoke-direct/range {v28 .. v52}, Lg/g/b/b/e/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v28, v3

    move/from16 v3, p2

    move/from16 p2, v4

    .line 76
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 77
    invoke-virtual {v1, v4}, Lg/g/b/b/e/a/b;->z(I)V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v4, p2

    move/from16 p2, v3

    move/from16 v1, v17

    move/from16 v17, v27

    move/from16 v27, v28

    goto/16 :goto_4

    .line 79
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 80
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->g()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 81
    :goto_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 82
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->g()V

    .line 83
    throw v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Lg/g/b/b/e/a/b;

    invoke-virtual {p0, p1}, Lg/g/b/b/a/e;->s(Lg/g/b/b/e/a/b;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/e;->e:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->a()Lf/t/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1, p2}, Lf/t/a/d;->g0(IJ)V

    .line 4
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->c()V

    .line 5
    :try_start_0
    invoke-interface {v0}, Lf/t/a/f;->F()I

    .line 6
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    .line 8
    iget-object p1, p0, Lg/g/b/b/a/e;->e:Landroidx/room/p;

    invoke-virtual {p1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->g()V

    .line 10
    iget-object p2, p0, Lg/g/b/b/a/e;->e:Landroidx/room/p;

    invoke-virtual {p2, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    .line 11
    throw p1
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/e;->d:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->a()Lf/t/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lf/t/a/f;->F()I

    .line 7
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    .line 9
    iget-object p1, p0, Lg/g/b/b/a/e;->d:Landroidx/room/p;

    invoke-virtual {p1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->g()V

    .line 11
    iget-object v1, p0, Lg/g/b/b/a/e;->d:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    .line 12
    throw p1
.end method

.method public h(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lg/g/b/b/e/a/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lg/g/b/b/a/e;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->h(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    .line 6
    throw p1
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/e;->c:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->a()Lf/t/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lf/t/a/f;->F()I

    .line 7
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    .line 9
    iget-object p1, p0, Lg/g/b/b/a/e;->c:Landroidx/room/p;

    invoke-virtual {p1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->g()V

    .line 11
    iget-object v1, p0, Lg/g/b/b/a/e;->c:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    .line 12
    throw p1
.end method

.method public n(Ljava/lang/String;)J
    .locals 3

    const-string v0, "SELECT COUNT(*) from caller_ids WHERE source_type = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->c(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/m;->M0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->x(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->b()V

    .line 5
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroidx/room/s/c;->b(Landroidx/room/j;Lf/t/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 8
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Landroidx/room/m;->g()V

    return-wide v1

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Landroidx/room/m;->g()V

    .line 12
    throw v1
.end method

.method public p(Ljava/lang/String;Ljava/util/Set;)Lg/g/b/b/e/a/b;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lg/g/b/b/e/a/b;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-static {}, Landroidx/room/s/e;->b()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECT "

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*"

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM caller_ids WHERE phone_number = "

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and source_type IN("

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v3

    .line 8
    invoke-static {v2, v3}, Landroidx/room/s/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 11
    invoke-static {v2, v3}, Landroidx/room/m;->c(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v2

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {v2, v4}, Landroidx/room/m;->M0(I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v2, v4, v0}, Landroidx/room/m;->x(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 14
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 15
    invoke-virtual {v2, v0}, Landroidx/room/m;->M0(I)V

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v2, v0, v4}, Landroidx/room/m;->x(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, v1, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 18
    iget-object v0, v1, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/s/c;->b(Landroidx/room/j;Lf/t/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "_id"

    .line 19
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "entity_type"

    .line 20
    invoke-static {v3, v5}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "phone_number"

    .line 21
    invoke-static {v3, v6}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "reputation_level"

    .line 22
    invoke-static {v3, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "display_name"

    .line 23
    invoke-static {v3, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "display_location"

    .line 24
    invoke-static {v3, v9}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "display_image_url"

    .line 25
    invoke-static {v3, v10}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "attribution_image"

    .line 26
    invoke-static {v3, v11}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "attribution_url"

    .line 27
    invoke-static {v3, v12}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "attribution_name"

    .line 28
    invoke-static {v3, v13}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "profile_tag"

    .line 29
    invoke-static {v3, v14}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "display_line_type"

    .line 30
    invoke-static {v3, v15}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "entity_expired_time_millis"

    .line 31
    invoke-static {v3, v4}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "source_type"

    .line 32
    invoke-static {v3, v1}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "last_access_time_millis"

    .line 33
    invoke-static {v3, v2}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p2, v0

    const-string v0, "profile_icon_type"

    .line 34
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "reputation_category_id"

    .line 35
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "category_name"

    .line 36
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "display_category_name"

    .line 37
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "line_type_id"

    .line 38
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "display_detail"

    .line 39
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "display_description"

    .line 40
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "language_tag"

    .line 41
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "display_background_url"

    .line 42
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "display_background_assettype"

    .line 43
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 44
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 45
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 46
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 47
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 48
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 49
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 50
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 51
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 52
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 53
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 54
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 55
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 56
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v39, 0x0

    goto :goto_3

    .line 57
    :cond_3
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v39, v4

    .line 58
    :goto_3
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 59
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v1, v17

    const/16 v41, 0x0

    goto :goto_4

    .line 60
    :cond_4
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v41, v1

    move/from16 v1, v17

    .line 61
    :goto_4
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    move/from16 v1, v18

    .line 62
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move/from16 v1, v19

    const/16 v43, 0x0

    goto :goto_5

    .line 63
    :cond_5
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v43, v4

    move/from16 v1, v19

    .line 64
    :goto_5
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    move/from16 v1, v20

    .line 65
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    move/from16 v1, v21

    .line 66
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    move/from16 v1, v22

    .line 67
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    move/from16 v1, v23

    .line 68
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    move/from16 v1, v24

    .line 69
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    move/from16 v1, v25

    .line 70
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 71
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 72
    new-instance v4, Lg/g/b/b/e/a/b;

    move-object/from16 v27, v4

    invoke-direct/range {v27 .. v51}, Lg/g/b/b/e/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p2

    .line 73
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 74
    invoke-virtual {v4, v0}, Lg/g/b/b/e/a/b;->z(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    .line 75
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 76
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->g()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 77
    :goto_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->g()V

    .line 79
    throw v0
.end method

.method public q(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/e;->f:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->a()Lf/t/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lf/t/a/d;->x(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lf/t/a/d;->g0(IJ)V

    .line 6
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->c()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Lf/t/a/f;->F()I

    .line 8
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    .line 10
    iget-object p1, p0, Lg/g/b/b/a/e;->f:Landroidx/room/p;

    invoke-virtual {p1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->g()V

    .line 12
    iget-object p2, p0, Lg/g/b/b/a/e;->f:Landroidx/room/p;

    invoke-virtual {p2, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    .line 13
    throw p1
.end method

.method public s(Lg/g/b/b/e/a/b;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lg/g/b/b/a/e;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->j(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lg/g/b/b/a/e;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    .line 6
    throw p1
.end method
