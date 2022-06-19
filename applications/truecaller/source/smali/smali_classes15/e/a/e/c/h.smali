.class public final synthetic Le/a/e/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/l1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/l1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/h;->a:Le/a/e/c/l1;

    iput p2, p0, Le/a/e/c/h;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Le/a/e/c/h;->a:Le/a/e/c/l1;

    iget v0, v1, Le/a/e/c/h;->b:I

    const-wide/16 v3, 0x0

    const-string v5, "call_log_id"

    const/4 v6, 0x0

    const v7, 0x7f0a0610

    if-ne v0, v7, :cond_4

    .line 1
    invoke-virtual {v2}, Le/a/e/g1;->aB()Landroid/widget/ListView;

    move-result-object v0

    .line 2
    sget v7, Le/a/l3/a;->e:I

    if-nez v0, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_6

    .line 4
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, -0x1

    move v12, v6

    move v13, v11

    :goto_1
    if-ge v12, v9, :cond_3

    .line 6
    :try_start_0
    invoke-virtual {v7, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 7
    invoke-virtual {v7, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .line 8
    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v15

    .line 9
    instance-of v8, v15, Landroid/database/Cursor;

    if-eqz v8, :cond_2

    .line 10
    check-cast v15, Landroid/database/Cursor;

    if-ne v13, v11, :cond_1

    .line 11
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 12
    :cond_1
    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v16

    .line 13
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    cmp-long v8, v16, v3

    if-eqz v8, :cond_2

    .line 14
    new-instance v8, Landroid/util/Pair;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v8, v11, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v12, v12, 0x1

    const/4 v11, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    move-object v8, v10

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {v2}, Le/a/e/g1;->aB()Landroid/widget/ListView;

    move-result-object v0

    .line 17
    sget v7, Le/a/l3/a;->e:I

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v7

    .line 19
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v6

    :goto_2
    if-ge v9, v7, :cond_7

    .line 20
    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v10

    .line 21
    instance-of v11, v10, Landroid/database/Cursor;

    if-eqz v11, :cond_5

    .line 22
    check-cast v10, Landroid/database/Cursor;

    .line 23
    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v11

    .line 24
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    cmp-long v10, v11, v3

    if-eqz v10, :cond_5

    .line 25
    new-instance v10, Landroid/util/Pair;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v8, 0x0

    :cond_7
    :goto_4
    if-eqz v8, :cond_8

    .line 26
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 27
    new-instance v0, Le/a/e/c/m1;

    invoke-direct {v0, v2, v2, v8}, Le/a/e/c/m1;-><init>(Le/a/e/c/l1;Le/a/j4/a/d;Ljava/util/List;)V

    new-array v3, v6, [Ljava/lang/Object;

    .line 28
    invoke-static {v0, v3}, Le/a/j4/a/b;->b(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    :cond_8
    invoke-virtual {v2}, Le/a/e/c/l1;->dB()V

    return-void
.end method
