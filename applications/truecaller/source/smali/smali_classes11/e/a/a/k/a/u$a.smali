.class public final Le/a/a/k/a/u$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/u;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/database/Cursor;",
        "Le/a/a/k/c0/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/database/Cursor;

.field public final synthetic c:Le/a/a/k/a/u;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Le/a/a/k/a/u;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/u$a;->b:Landroid/database/Cursor;

    iput-object p2, p0, Le/a/a/k/a/u$a;->c:Le/a/a/k/a/u;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Landroid/database/Cursor;

    const-string v2, "item"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v3, "mimeType"

    .line 5
    invoke-static {v12, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "contentType"

    .line 6
    invoke-static {v12, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "application/vnd.truecaller.location"

    .line 7
    invoke-static {v3, v12, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x0

    if-eqz v3, :cond_5

    .line 8
    iget-object v3, v1, Le/a/a/k/a/u$a;->c:Le/a/a/k/a/u;

    .line 9
    iget-object v9, v3, Le/a/a/k/a/u;->e:Le/a/a/g/g;

    .line 10
    iget-object v13, v3, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v14

    const-string v10, "_id = "

    invoke-static {v10, v6, v7}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v16

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 11
    invoke-interface {v9, v10}, Le/a/a/g/g;->q(Landroid/database/Cursor;)Le/a/a/g/j0/c;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 12
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-ne v10, v2, :cond_1

    const-string v10, "c"

    .line 13
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v10

    instance-of v11, v10, Lcom/truecaller/messaging/data/types/LocationEntity;

    if-nez v11, :cond_0

    move-object v10, v8

    :cond_0
    check-cast v10, Lcom/truecaller/messaging/data/types/LocationEntity;

    if-eqz v10, :cond_2

    new-instance v11, Ls1/k;

    .line 14
    iget-wide v13, v10, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    .line 15
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 16
    iget-wide v14, v10, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    .line 17
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v11, v13, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-nez v10, :cond_3

    :cond_2
    move-object v11, v8

    .line 18
    :goto_0
    invoke-static {v9, v8}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v11, :cond_4

    .line 19
    iget-object v9, v11, Ls1/k;->a:Ljava/lang/Object;

    .line 20
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    .line 21
    iget-object v9, v11, Ls1/k;->b:Ljava/lang/Object;

    .line 22
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    .line 23
    new-instance v9, Le/a/a/k/a/w;

    const/16 v18, 0x0

    move-object v13, v9

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v19}, Le/a/a/k/a/w;-><init>(DDLs1/w/d;Le/a/a/k/a/u;)V

    invoke-static {v8, v9, v2, v8}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu3/a0;

    goto :goto_1

    .line 24
    :cond_3
    :try_start_1
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 25
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v9, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    move-object v2, v8

    :goto_1
    if-nez v2, :cond_6

    .line 26
    new-instance v9, Landroid/content/Intent;

    const-string v10, "update_entity_status"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "entity_id"

    .line 27
    invoke-virtual {v9, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "entity_status"

    .line 28
    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 29
    iget-object v3, v3, Le/a/a/k/a/u;->a:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/k/t;

    invoke-interface {v3, v5, v9, v4}, Le/a/a/k/t;->A(ILandroid/content/Intent;I)V

    goto :goto_2

    .line 30
    :cond_5
    iget-object v2, v1, Le/a/a/k/a/u$a;->b:Landroid/database/Cursor;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cursor.getString(2)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$toHttpUrlOrNull"

    .line 31
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_3
    const-string v3, "$this$toHttpUrl"

    .line 32
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v3, Lu3/a0$a;

    invoke-direct {v3}, Lu3/a0$a;-><init>()V

    invoke-virtual {v3, v8, v2}, Lu3/a0$a;->f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {v3}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-object v2, v8

    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    .line 34
    new-instance v14, Le/a/a/k/c0/a;

    .line 35
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 36
    iget-object v3, v1, Le/a/a/k/a/u$a;->b:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v3, "Uri.parse(cursor.getString(3))"

    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 37
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 38
    iget-object v0, v1, Le/a/a/k/a/u$a;->b:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, ""

    :goto_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const-string v0, "Uri.parse(cursor.getString(6) ?: \"\")"

    invoke-static {v13, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v14

    move-object v8, v2

    .line 39
    invoke-direct/range {v3 .. v13}, Le/a/a/k/c0/a;-><init>(JJLu3/a0;Landroid/net/Uri;JLjava/lang/String;Landroid/net/Uri;)V

    move-object v8, v14

    :cond_8
    return-object v8
.end method
