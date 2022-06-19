.class public final Lg/g/b/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/b/b/a/h;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lg/g/b/b/e/a/d;",
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
    iput-object p1, p0, Lg/g/b/b/a/i;->a:Landroidx/room/j;

    .line 3
    new-instance v0, Lg/g/b/b/a/i$a;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/i$a;-><init>(Lg/g/b/b/a/i;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/i;->b:Landroidx/room/c;

    .line 4
    new-instance v0, Lg/g/b/b/a/i$b;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/i$b;-><init>(Lg/g/b/b/a/i;Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Lg/g/b/b/e/a/d;

    invoke-virtual {p0, p1}, Lg/g/b/b/a/i;->s(Lg/g/b/b/e/a/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method public j(Ljava/lang/String;)Lg/g/b/b/e/a/d;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM postevent_data WHERE phone_number = ? ORDER BY timestamp desc"

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
    iget-object v0, v1, Lg/g/b/b/a/i;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 5
    iget-object v0, v1, Lg/g/b/b/a/i;->a:Landroidx/room/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Landroidx/room/s/c;->b(Landroidx/room/j;Lf/t/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "_id"

    .line 6
    invoke-static {v6, v0}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "type"

    .line 7
    invoke-static {v6, v7}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "direction"

    .line 8
    invoke-static {v6, v8}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "phone_number"

    .line 9
    invoke-static {v6, v9}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "country_hint"

    .line 10
    invoke-static {v6, v10}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "duration"

    .line 11
    invoke-static {v6, v11}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "is_missed"

    .line 12
    invoke-static {v6, v12}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "is_blocked"

    .line 13
    invoke-static {v6, v13}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "is_contact"

    .line 14
    invoke-static {v6, v14}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "timestamp"

    .line 15
    invoke-static {v6, v15}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "profile_tag"

    .line 16
    invoke-static {v6, v3}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "block_reason"

    .line 17
    invoke-static {v6, v4}, Landroidx/room/s/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 18
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 19
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 20
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 21
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 22
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 23
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 24
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v23, 0x1

    goto :goto_1

    :cond_1
    const/16 v23, 0x0

    .line 25
    :goto_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v24, 0x1

    goto :goto_2

    :cond_2
    const/16 v24, 0x0

    .line 26
    :goto_2
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v25, 0x1

    goto :goto_3

    :cond_3
    const/16 v25, 0x0

    .line 27
    :goto_3
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 28
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 29
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 30
    new-instance v5, Lg/g/b/b/e/a/d;

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v29}, Lg/g/b/b/e/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZJLjava/lang/String;I)V

    .line 31
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 32
    invoke-virtual {v5, v0}, Lg/g/b/b/e/a/d;->m(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 34
    invoke-virtual {v2}, Landroidx/room/m;->g()V

    return-object v5

    :catchall_0
    move-exception v0

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 36
    invoke-virtual {v2}, Landroidx/room/m;->g()V

    .line 37
    throw v0
.end method

.method public s(Lg/g/b/b/e/a/d;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/i;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/i;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lg/g/b/b/a/i;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->j(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lg/g/b/b/a/i;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lg/g/b/b/a/i;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lg/g/b/b/a/i;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    .line 6
    throw p1
.end method
