.class public final Lg/g/b/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/b/b/a/b;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lg/g/b/b/e/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/b/a/c;->a:Landroidx/room/j;

    .line 3
    new-instance v0, Lg/g/b/b/a/c$a;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/c$a;-><init>(Lg/g/b/b/a/c;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/c;->b:Landroidx/room/c;

    .line 4
    new-instance v0, Lg/g/b/b/a/c$b;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/c$b;-><init>(Lg/g/b/b/a/c;Landroidx/room/j;)V

    .line 5
    new-instance v0, Lg/g/b/b/a/c$c;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/c$c;-><init>(Lg/g/b/b/a/c;Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Lg/g/b/b/e/a/a;

    invoke-virtual {p0, p1}, Lg/g/b/b/a/c;->s(Lg/g/b/b/e/a/a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public l(Z)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lg/g/b/b/e/a/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM block_numbers WHERE is_partial = ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Landroidx/room/m;->c(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/m;->g0(IJ)V

    .line 3
    iget-object v0, v1, Lg/g/b/b/a/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 4
    iget-object v0, v1, Lg/g/b/b/a/c;->a:Landroidx/room/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/s/c;->b(Landroidx/room/j;Lf/t/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "_id"

    .line 5
    invoke-static {v6, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "phone_number"

    .line 6
    invoke-static {v6, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "normalized_number"

    .line 7
    invoke-static {v6, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "created_time_millis"

    .line 8
    invoke-static {v6, v9}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "is_partial"

    .line 9
    invoke-static {v6, v10}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "country_calling_code"

    .line 10
    invoke-static {v6, v11}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 11
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 13
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 15
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 16
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_0

    const/16 v19, 0x1

    goto :goto_1

    :cond_0
    const/16 v19, 0x0

    .line 17
    :goto_1
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v20, v5

    goto :goto_2

    .line 18
    :cond_1
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getShort(I)S

    move-result v13

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    move-object/from16 v20, v13

    .line 19
    :goto_2
    new-instance v13, Lg/g/b/b/e/a/a;

    move-object v14, v13

    invoke-direct/range {v14 .. v20}, Lg/g/b/b/e/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/Short;)V

    .line 20
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 21
    invoke-virtual {v13, v14}, Lg/g/b/b/e/a/a;->g(I)V

    .line 22
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 24
    invoke-virtual {v3}, Landroidx/room/m;->g()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 26
    invoke-virtual {v3}, Landroidx/room/m;->g()V

    .line 27
    throw v0
.end method

.method public o(Ljava/lang/String;)Lg/g/b/b/e/a/a;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM block_numbers WHERE normalized_number = ?"

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
    iget-object v0, v1, Lg/g/b/b/a/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 5
    iget-object v0, v1, Lg/g/b/b/a/c;->a:Landroidx/room/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/s/c;->b(Landroidx/room/j;Lf/t/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "_id"

    .line 6
    invoke-static {v6, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "phone_number"

    .line 7
    invoke-static {v6, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "normalized_number"

    .line 8
    invoke-static {v6, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "created_time_millis"

    .line 9
    invoke-static {v6, v9}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "is_partial"

    .line 10
    invoke-static {v6, v10}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "country_calling_code"

    .line 11
    invoke-static {v6, v11}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 13
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 14
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 15
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 16
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_1

    const/16 v18, 0x1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    .line 17
    :goto_1
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    move-object/from16 v19, v5

    goto :goto_3

    .line 18
    :cond_2
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    goto :goto_2

    .line 19
    :goto_3
    new-instance v5, Lg/g/b/b/e/a/a;

    move-object v13, v5

    invoke-direct/range {v13 .. v19}, Lg/g/b/b/e/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/Short;)V

    .line 20
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 21
    invoke-virtual {v5, v0}, Lg/g/b/b/e/a/a;->g(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v2}, Landroidx/room/m;->g()V

    return-object v5

    :catchall_0
    move-exception v0

    .line 24
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 25
    invoke-virtual {v2}, Landroidx/room/m;->g()V

    .line 26
    throw v0
.end method

.method public s(Lg/g/b/b/e/a/a;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lg/g/b/b/a/c;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->j(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lg/g/b/b/a/c;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lg/g/b/b/a/c;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lg/g/b/b/a/c;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    .line 6
    throw p1
.end method
