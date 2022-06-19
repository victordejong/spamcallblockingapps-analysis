.class public final Le/a/a/j/j;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.mediaviewer.MediaViewerPresenter$loadAttachments$1"
    f = "MediaViewerPresenter.kt"
    l = {
        0xaa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/j/l;


# direct methods
.method public constructor <init>(Le/a/a/j/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/j/j;->f:Le/a/a/j/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/j/j;

    iget-object v0, p0, Le/a/a/j/j;->f:Le/a/a/j/l;

    invoke-direct {p1, v0, p2}, Le/a/a/j/j;-><init>(Le/a/a/j/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/j/j;

    iget-object v0, p0, Le/a/a/j/j;->f:Le/a/a/j/l;

    invoke-direct {p1, v0, p2}, Le/a/a/j/j;-><init>(Le/a/a/j/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/j/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v12, p0

    sget-object v13, Ls1/s;->a:Ls1/s;

    sget-object v14, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v12, Le/a/a/j/j;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v12, Le/a/a/j/j;->f:Le/a/a/j/l;

    .line 5
    iget-object v2, v0, Le/a/a/j/l;->w:Le/a/a/n/h;

    .line 6
    iget-object v3, v0, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    .line 7
    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 8
    iget-object v0, v0, Le/a/a/j/l;->r:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v0, :cond_2

    .line 9
    iget v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    .line 10
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 11
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v1

    .line 12
    :goto_0
    iget-object v0, v12, Le/a/a/j/j;->f:Le/a/a/j/l;

    .line 13
    iget-object v0, v0, Le/a/a/j/l;->r:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v0, :cond_3

    .line 14
    iget v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    .line 15
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 16
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v6, v0

    .line 17
    sget-object v7, Lcom/truecaller/messaging/mediamanager/AttachmentType;->MEDIA:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    .line 18
    sget-object v8, Lcom/truecaller/messaging/mediamanager/SortOption;->DATE_DESC:Lcom/truecaller/messaging/mediamanager/SortOption;

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    .line 19
    iput v1, v12, Le/a/a/j/j;->e:I

    const-string v15, "entity_status = 0"

    move-object v0, v2

    move-wide v1, v3

    move v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v15

    move-object v8, v9

    move-object/from16 v9, p0

    .line 20
    invoke-static/range {v0 .. v11}, Le/a/c/p/a;->d0(Le/a/a/n/h;JIILcom/truecaller/messaging/mediamanager/AttachmentType;Lcom/truecaller/messaging/mediamanager/SortOption;Ljava/lang/String;[Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_4

    return-object v14

    .line 21
    :cond_4
    :goto_2
    check-cast v0, Le/a/a/g/j0/o;

    if-eqz v0, :cond_9

    .line 22
    iget-object v1, v12, Le/a/a/j/j;->f:Le/a/a/j/l;

    .line 23
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/j/i;

    if-nez v1, :cond_5

    .line 24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v13

    .line 25
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    invoke-interface {v0}, Le/a/a/g/j0/o;->a0()J

    move-result-wide v1

    iget-object v3, v12, Le/a/a/j/j;->f:Le/a/a/j/l;

    .line 27
    iget-object v4, v3, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 28
    iget-wide v4, v4, Lcom/truecaller/messaging/data/types/Entity;->a:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_5

    .line 29
    iput-object v0, v3, Le/a/a/j/l;->l:Le/a/a/g/j0/o;

    .line 30
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->PREVIOUS:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    invoke-interface {v0}, Le/a/a/g/j0/o;->f2()Le/a/a/g/l0/c;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Le/a/a/j/l;->Jj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/g/l0/c;)V

    .line 31
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 32
    iget-object v1, v12, Le/a/a/j/j;->f:Le/a/a/j/l;

    .line 33
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->NEXT:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    invoke-interface {v0}, Le/a/a/g/j0/o;->f2()Le/a/a/g/l0/c;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Le/a/a/j/l;->Jj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/g/l0/c;)V

    .line 35
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    return-object v13

    .line 36
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v13
.end method
