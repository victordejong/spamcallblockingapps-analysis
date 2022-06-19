.class public final Ln3/z/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/f;

.field public final synthetic b:Ln3/z/y0;


# direct methods
.method public constructor <init>(Ln3/z/f;Ln3/z/y0;)V
    .locals 0

    iput-object p1, p0, Ln3/z/f$a;->a:Ln3/z/f;

    iput-object p2, p0, Ln3/z/f$a;->b:Ln3/z/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/z/f$a;->a:Ln3/z/f;

    iget-object v2, v1, Ln3/z/f;->a:Ln3/z/b;

    .line 2
    iget v3, v2, Ln3/z/b;->g:I

    .line 3
    iget v4, v1, Ln3/z/f;->d:I

    if-ne v3, v4, :cond_8

    .line 4
    iget-object v3, v1, Ln3/z/f;->e:Ln3/z/q1;

    .line 5
    iget-object v4, v1, Ln3/z/f;->c:Ln3/z/q1;

    .line 6
    iget-object v5, v0, Ln3/z/f$a;->b:Ln3/z/y0;

    .line 7
    iget-object v6, v1, Ln3/z/f;->f:Ln3/z/o2;

    .line 8
    iget-object v7, v1, Ln3/z/f;->b:Ln3/z/q1;

    .line 9
    iget-object v7, v7, Ln3/z/q1;->h:Ln3/z/x1;

    .line 10
    iget v8, v7, Ln3/z/x1;->b:I

    .line 11
    iget v7, v7, Ln3/z/x1;->g:I

    add-int/2addr v8, v7

    .line 12
    iget-object v1, v1, Ln3/z/f;->g:Ljava/lang/Runnable;

    const-string v7, "newList"

    .line 13
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "diffSnapshot"

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "diffResult"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "recordingCallback"

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v7, v2, Ln3/z/b;->f:Ln3/z/q1;

    if-eqz v7, :cond_7

    .line 15
    iget-object v9, v2, Ln3/z/b;->e:Ln3/z/q1;

    if-nez v9, :cond_7

    .line 16
    iput-object v3, v2, Ln3/z/b;->e:Ln3/z/q1;

    .line 17
    iget-object v9, v2, Ln3/z/b;->i:Ls1/a/f;

    check-cast v9, Ls1/z/b/p;

    invoke-virtual {v3, v9}, Ln3/z/q1;->d(Ls1/z/b/p;)V

    const/4 v9, 0x0

    .line 18
    iput-object v9, v2, Ln3/z/b;->f:Ln3/z/q1;

    .line 19
    iget-object v10, v7, Ln3/z/q1;->h:Ln3/z/x1;

    .line 20
    iget-object v11, v2, Ln3/z/b;->a:Ln3/b0/a/q;

    if-eqz v11, :cond_6

    .line 21
    iget-object v9, v4, Ln3/z/q1;->h:Ln3/z/x1;

    .line 22
    invoke-static {v10, v11, v9, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->V(Ln3/z/z0;Ln3/b0/a/q;Ln3/z/z0;Ln3/z/y0;)V

    .line 23
    iget-object v9, v2, Ln3/z/b;->k:Ln3/z/q1$b;

    const-string v10, "other"

    .line 24
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v10, v6, Ln3/z/o2;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v10

    const/4 v12, 0x3

    invoke-static {v10, v12}, Ls1/d0/j;->i(Ls1/d0/g;I)Ls1/d0/g;

    move-result-object v10

    .line 26
    iget v12, v10, Ls1/d0/g;->a:I

    .line 27
    iget v13, v10, Ls1/d0/g;->b:I

    .line 28
    iget v10, v10, Ls1/d0/g;->c:I

    const/4 v14, 0x1

    if-ltz v10, :cond_0

    if-gt v12, v13, :cond_4

    goto :goto_0

    :cond_0
    if-lt v12, v13, :cond_4

    .line 29
    :goto_0
    iget-object v15, v6, Ln3/z/o2;->a:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-eqz v15, :cond_3

    if-eq v15, v14, :cond_2

    const/4 v11, 0x2

    if-ne v15, v11, :cond_1

    .line 30
    iget-object v11, v6, Ln3/z/o2;->a:Ljava/util/List;

    add-int/lit8 v15, v12, 0x1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    iget-object v15, v6, Ln3/z/o2;->a:Ljava/util/List;

    add-int/lit8 v14, v12, 0x2

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    invoke-virtual {v9, v11, v14}, Ln3/z/q1$b;->c(II)V

    goto :goto_1

    .line 31
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected recording value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_2
    iget-object v11, v6, Ln3/z/o2;->a:Ljava/util/List;

    add-int/lit8 v14, v12, 0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    iget-object v14, v6, Ln3/z/o2;->a:Ljava/util/List;

    add-int/lit8 v15, v12, 0x2

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    invoke-virtual {v9, v11, v14}, Ln3/z/q1$b;->b(II)V

    goto :goto_1

    .line 33
    :cond_3
    iget-object v11, v6, Ln3/z/o2;->a:Ljava/util/List;

    add-int/lit8 v14, v12, 0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    iget-object v14, v6, Ln3/z/o2;->a:Ljava/util/List;

    add-int/lit8 v15, v12, 0x2

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    invoke-virtual {v9, v11, v14}, Ln3/z/q1$b;->a(II)V

    :goto_1
    if-eq v12, v13, :cond_4

    add-int/2addr v12, v10

    const/4 v11, 0x0

    const/4 v14, 0x1

    goto :goto_0

    .line 34
    :cond_4
    iget-object v6, v6, Ln3/z/o2;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 35
    iget-object v6, v2, Ln3/z/b;->k:Ln3/z/q1$b;

    invoke-virtual {v3, v6}, Ln3/z/q1;->c(Ln3/z/q1$b;)V

    .line 36
    invoke-virtual {v3}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 37
    iget-object v6, v7, Ln3/z/q1;->h:Ln3/z/x1;

    .line 38
    iget-object v4, v4, Ln3/z/q1;->h:Ln3/z/x1;

    .line 39
    invoke-static {v6, v5, v4, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->G1(Ln3/z/z0;Ln3/z/y0;Ln3/z/z0;I)I

    move-result v4

    .line 40
    invoke-virtual {v3}, Ln3/z/q1;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Ls1/d0/j;->d(III)I

    move-result v4

    invoke-virtual {v3, v4}, Ln3/z/q1;->j(I)V

    .line 41
    :cond_5
    iget-object v3, v2, Ln3/z/b;->e:Ln3/z/q1;

    invoke-virtual {v2, v7, v3, v1}, Ln3/z/b;->c(Ln3/z/q1;Ln3/z/q1;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    const-string v1, "updateCallback"

    .line 42
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 43
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "must be in snapshot state to apply diff"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_2
    return-void
.end method
