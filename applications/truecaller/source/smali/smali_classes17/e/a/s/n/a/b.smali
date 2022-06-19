.class public final Le/a/s/n/a/b;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/s/n/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/s/n/a/e;",
        ">;",
        "Le/a/s/n/a/d;"
    }
.end annotation


# instance fields
.field public final b:Le/a/s/n/a/f;


# direct methods
.method public constructor <init>(Le/a/s/n/a/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/s/n/a/b;->b:Le/a/s/n/a/f;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Le/a/s/n/a/e;

    const-string v1, "itemView"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 3
    iget-object v2, v1, Le/a/s/n/a/b;->b:Le/a/s/n/a/f;

    invoke-interface {v2}, Le/a/s/n/a/f;->f()Le/a/s/k/c/a;

    move-result-object v2

    if-eqz v2, :cond_1

    move/from16 v3, p2

    .line 4
    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 5
    new-instance v16, Lcom/truecaller/callhero_assistant/data/ScreenedCall;

    .line 6
    iget v3, v2, Le/a/s/k/c/a;->a:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "getString(id)"

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget v3, v2, Le/a/s/k/c/a;->b:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "getString(toNumber)"

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v3, v2, Le/a/s/k/c/a;->c:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "getString(fromNumber)"

    invoke-static {v6, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v7, Ljava/util/Date;

    iget v3, v2, Le/a/s/k/c/a;->d:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 10
    iget v3, v2, Le/a/s/k/c/a;->e:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v8

    .line 11
    iget v3, v2, Le/a/s/k/c/a;->f:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v3, "getString(locale)"

    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget v3, v2, Le/a/s/k/c/a;->g:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "getString(status)"

    invoke-static {v10, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget v3, v2, Le/a/s/k/c/a;->h:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v11, v3

    .line 14
    iget v3, v2, Le/a/s/k/c/a;->i:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 15
    iget v3, v2, Le/a/s/k/c/a;->j:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 16
    iget v3, v2, Le/a/s/k/c/a;->k:I

    invoke-virtual {v2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 17
    sget-object v15, Ls1/u/s;->a:Ls1/u/s;

    move-object/from16 v3, v16

    .line 18
    invoke-direct/range {v3 .. v15}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 19
    invoke-virtual/range {v16 .. v16}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getFromNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/s/n/a/e;->E1(Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {v16 .. v16}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/s/n/a/e;->W(Ljava/lang/String;)V

    .line 21
    invoke-virtual/range {v16 .. v16}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/s/n/a/e;->G(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/n/a/b;->b:Le/a/s/n/a/f;

    invoke-interface {v0}, Le/a/s/n/a/f;->f()Le/a/s/k/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/n/a/b;->b:Le/a/s/n/a/f;

    invoke-interface {v0}, Le/a/s/n/a/f;->f()Le/a/s/k/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 3
    iget p1, v0, Le/a/s/k/c/a;->a:I

    invoke-virtual {v0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(id)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
