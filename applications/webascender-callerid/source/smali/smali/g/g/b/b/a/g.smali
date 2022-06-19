.class public final Lg/g/b/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/b/b/a/f;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lg/g/b/b/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/p;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    .line 3
    new-instance v0, Lg/g/b/b/a/g$a;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/g$a;-><init>(Lg/g/b/b/a/g;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/g;->b:Landroidx/room/c;

    .line 4
    new-instance v0, Lg/g/b/b/a/g$b;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/g$b;-><init>(Lg/g/b/b/a/g;Landroidx/room/j;)V

    .line 5
    new-instance v0, Lg/g/b/b/a/g$c;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/g$c;-><init>(Lg/g/b/b/a/g;Landroidx/room/j;)V

    .line 6
    new-instance v0, Lg/g/b/b/a/g$d;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/g$d;-><init>(Lg/g/b/b/a/g;Landroidx/room/j;)V

    .line 7
    new-instance v0, Lg/g/b/b/a/g$e;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/g$e;-><init>(Lg/g/b/b/a/g;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/g;->c:Landroidx/room/p;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lg/g/b/b/e/a/c;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM local_override_ids WHERE phone_number = ?"

    const/4 v3, 0x1

    .line 1
    invoke-static {v2, v3}, Landroidx/room/m;->c(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v2, v3}, Landroidx/room/m;->M0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/m;->x(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, v1, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 5
    iget-object v0, v1, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/s/c;->b(Landroidx/room/j;Lf/t/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "_id"

    .line 6
    invoke-static {v3, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "phone_number"

    .line 7
    invoke-static {v3, v5}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "reported_name"

    .line 8
    invoke-static {v3, v6}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "user_comment"

    .line 9
    invoke-static {v3, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "category_name"

    .line 10
    invoke-static {v3, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "reputation_category_id"

    .line 11
    invoke-static {v3, v9}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "profile_tag"

    .line 12
    invoke-static {v3, v10}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "time_created"

    .line 13
    invoke-static {v3, v11}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 14
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 15
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 18
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 19
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v18, v4

    goto :goto_1

    .line 20
    :cond_1
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v18, v5

    .line 21
    :goto_1
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 22
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    move-object/from16 v20, v4

    goto :goto_3

    .line 23
    :cond_2
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    .line 24
    :goto_3
    new-instance v4, Lg/g/b/b/e/a/c;

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Lg/g/b/b/e/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 26
    invoke-virtual {v4, v0}, Lg/g/b/b/e/a/c;->i(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 28
    invoke-virtual {v2}, Landroidx/room/m;->g()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 29
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 30
    invoke-virtual {v2}, Landroidx/room/m;->g()V

    .line 31
    throw v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Lg/g/b/b/e/a/c;

    invoke-virtual {p0, p1}, Lg/g/b/b/a/g;->s(Lg/g/b/b/e/a/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/g/b/b/e/a/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM local_override_ids"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Landroidx/room/m;->c(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 3
    iget-object v0, v1, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/s/c;->b(Landroidx/room/j;Lf/t/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "_id"

    .line 4
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "phone_number"

    .line 5
    invoke-static {v2, v5}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "reported_name"

    .line 6
    invoke-static {v2, v6}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "user_comment"

    .line 7
    invoke-static {v2, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "category_name"

    .line 8
    invoke-static {v2, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "reputation_category_id"

    .line 9
    invoke-static {v2, v9}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "profile_tag"

    .line 10
    invoke-static {v2, v10}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "time_created"

    .line 11
    invoke-static {v2, v11}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 12
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 14
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 15
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 16
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 17
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 18
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v19, v4

    goto :goto_1

    .line 19
    :cond_0
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v19, v13

    .line 20
    :goto_1
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 21
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v21, v4

    goto :goto_2

    .line 22
    :cond_1
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v21, v13

    .line 23
    :goto_2
    new-instance v13, Lg/g/b/b/e/a/c;

    move-object v14, v13

    invoke-direct/range {v14 .. v21}, Lg/g/b/b/e/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 25
    invoke-virtual {v13, v14}, Lg/g/b/b/e/a/c;->i(I)V

    .line 26
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 28
    invoke-virtual {v3}, Landroidx/room/m;->g()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 29
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 30
    invoke-virtual {v3}, Landroidx/room/m;->g()V

    .line 31
    throw v0
.end method

.method public k(J)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lg/g/b/b/e/a/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM local_override_ids WHERE time_created < ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Landroidx/room/m;->c(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/m;->g0(IJ)V

    .line 3
    iget-object v0, v1, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 4
    iget-object v0, v1, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/s/c;->b(Landroidx/room/j;Lf/t/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "_id"

    .line 5
    invoke-static {v2, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "phone_number"

    .line 6
    invoke-static {v2, v5}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "reported_name"

    .line 7
    invoke-static {v2, v6}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "user_comment"

    .line 8
    invoke-static {v2, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "category_name"

    .line 9
    invoke-static {v2, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "reputation_category_id"

    .line 10
    invoke-static {v2, v9}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "profile_tag"

    .line 11
    invoke-static {v2, v10}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "time_created"

    .line 12
    invoke-static {v2, v11}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 13
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 15
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 16
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 17
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 18
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 19
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v19, v4

    goto :goto_1

    .line 20
    :cond_0
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v19, v13

    .line 21
    :goto_1
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 22
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v21, v4

    goto :goto_2

    .line 23
    :cond_1
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v21, v13

    .line 24
    :goto_2
    new-instance v13, Lg/g/b/b/e/a/c;

    move-object v14, v13

    invoke-direct/range {v14 .. v21}, Lg/g/b/b/e/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 26
    invoke-virtual {v13, v14}, Lg/g/b/b/e/a/c;->i(I)V

    .line 27
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 28
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 29
    invoke-virtual {v3}, Landroidx/room/m;->g()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 31
    invoke-virtual {v3}, Landroidx/room/m;->g()V

    .line 32
    throw v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/g;->c:Landroidx/room/p;

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
    iget-object p1, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lf/t/a/f;->F()I

    .line 7
    iget-object p1, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    .line 9
    iget-object p1, p0, Lg/g/b/b/a/g;->c:Landroidx/room/p;

    invoke-virtual {p1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->g()V

    .line 11
    iget-object v1, p0, Lg/g/b/b/a/g;->c:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    .line 12
    throw p1
.end method

.method public s(Lg/g/b/b/e/a/c;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lg/g/b/b/a/g;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->j(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lg/g/b/b/a/g;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    .line 6
    throw p1
.end method
