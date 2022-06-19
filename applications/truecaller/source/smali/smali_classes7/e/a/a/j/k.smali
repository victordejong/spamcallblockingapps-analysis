.class public final Le/a/a/j/k;
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
    c = "com.truecaller.messaging.mediaviewer.MediaViewerPresenter$onDeleteConfirmationClicked$1"
    f = "MediaViewerPresenter.kt"
    l = {
        0x15a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/j/l;


# direct methods
.method public constructor <init>(Le/a/a/j/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/j/k;->f:Le/a/a/j/l;

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

    new-instance p1, Le/a/a/j/k;

    iget-object v0, p0, Le/a/a/j/k;->f:Le/a/a/j/l;

    invoke-direct {p1, v0, p2}, Le/a/a/j/k;-><init>(Le/a/a/j/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/j/k;

    iget-object v0, p0, Le/a/a/j/k;->f:Le/a/a/j/l;

    invoke-direct {p1, v0, p2}, Le/a/a/j/k;-><init>(Le/a/a/j/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/j/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/j/k;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/j/k;->f:Le/a/a/j/l;

    .line 5
    iget-object v2, p1, Le/a/a/j/l;->y:Le/a/a/i1/d;

    .line 6
    iget-object p1, p1, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    .line 7
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 8
    iput v3, p0, Le/a/a/j/k;->e:I

    const-string v4, "conversation-deleteMediaFromMediaViewer"

    .line 9
    invoke-interface {v2, p1, v4, v3, p0}, Le/a/a/i1/d;->c(Ljava/util/List;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 10
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    .line 11
    :cond_3
    iget-object p1, p0, Le/a/a/j/k;->f:Le/a/a/j/l;

    .line 12
    iget-object v1, p1, Le/a/a/j/l;->l:Le/a/a/g/j0/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 14
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    invoke-interface {v1}, Le/a/a/g/j0/o;->f2()Le/a/a/g/l0/c;

    move-result-object v4

    .line 16
    iget-wide v5, v4, Le/a/a/g/l0/c;->a:J

    .line 17
    iget-object v7, p1, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    .line 18
    iget-wide v7, v7, Lcom/truecaller/messaging/data/types/Message;->a:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    goto :goto_1

    .line 19
    :cond_4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 20
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    invoke-interface {v1}, Le/a/a/g/j0/o;->f2()Le/a/a/g/l0/c;

    move-result-object v4

    .line 22
    iget-wide v5, v4, Le/a/a/g/l0/c;->a:J

    .line 23
    iget-object v7, p1, Le/a/a/j/l;->q:Lcom/truecaller/messaging/data/types/Message;

    .line 24
    iget-wide v7, v7, Lcom/truecaller/messaging/data/types/Message;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    goto :goto_2

    .line 25
    :cond_5
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_4

    :cond_6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw p1

    :cond_7
    :goto_3
    move-object v4, v2

    :goto_4
    if-nez v4, :cond_9

    .line 26
    iget-object p1, p0, Le/a/a/j/k;->f:Le/a/a/j/l;

    .line 27
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    .line 28
    invoke-interface {p1, v1}, Le/a/a/j/i;->Y4(Z)V

    :cond_8
    return-object v0

    .line 29
    :cond_9
    iget-object p1, p0, Le/a/a/j/k;->f:Le/a/a/j/l;

    .line 30
    invoke-virtual {p1, v4}, Le/a/a/j/l;->Ij(Le/a/a/g/l0/c;)V

    .line 31
    iget-object p1, p0, Le/a/a/j/k;->f:Le/a/a/j/l;

    sget-object v1, Lcom/truecaller/messaging/mediaviewer/MediaPosition;->CURRENT:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    .line 32
    invoke-virtual {p1, v1, v4}, Le/a/a/j/l;->Jj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/g/l0/c;)V

    .line 33
    iget-object p1, p0, Le/a/a/j/k;->f:Le/a/a/j/l;

    .line 34
    iget-object p1, p1, Le/a/a/j/l;->l:Le/a/a/g/j0/o;

    if-eqz p1, :cond_a

    .line 35
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_a
    iget-object v3, p0, Le/a/a/j/k;->f:Le/a/a/j/l;

    .line 37
    iput-object v2, v3, Le/a/a/j/l;->l:Le/a/a/g/j0/o;

    .line 38
    new-instance v6, Le/a/a/j/j;

    invoke-direct {v6, v3, v2}, Le/a/a/j/j;-><init>(Le/a/a/j/l;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0
.end method
