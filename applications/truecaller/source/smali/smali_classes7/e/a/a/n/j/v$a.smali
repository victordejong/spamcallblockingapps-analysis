.class public final Le/a/a/n/j/v$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/n/j/v;->Jj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.messaging.mediamanager.medialist.MediaListPresenter$loadAttachments$1"
    f = "MediaListPresenter.kt"
    l = {
        0x142
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/n/j/v;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/n/j/v;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/n/j/v$a;->g:Le/a/a/n/j/v;

    iput-object p2, p0, Le/a/a/n/j/v$a;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/a/n/j/v$a;

    iget-object v0, p0, Le/a/a/n/j/v$a;->g:Le/a/a/n/j/v;

    iget-object v1, p0, Le/a/a/n/j/v$a;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/n/j/v$a;-><init>(Le/a/a/n/j/v;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/n/j/v$a;

    iget-object v0, p0, Le/a/a/n/j/v$a;->g:Le/a/a/n/j/v;

    iget-object v1, p0, Le/a/a/n/j/v$a;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/n/j/v$a;-><init>(Le/a/a/n/j/v;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/n/j/v$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v12, p0

    sget-object v13, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v12, Le/a/a/n/j/v$a;->f:I

    const/4 v14, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v14, :cond_0

    iget-object v0, v12, Le/a/a/n/j/v$a;->e:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/v;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v0

    move-object/from16 v0, p1

    goto :goto_0

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
    iget-object v15, v12, Le/a/a/n/j/v$a;->g:Le/a/a/n/j/v;

    .line 5
    iget-object v0, v15, Le/a/a/n/j/v;->t:Le/a/a/n/h;

    .line 6
    iget-object v1, v15, Le/a/a/n/j/v;->m:Lcom/truecaller/messaging/data/types/Conversation;

    .line 7
    iget-wide v2, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iget v4, v1, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    iget v5, v1, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    .line 8
    iget-object v6, v15, Le/a/a/n/j/v;->n:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    .line 9
    iget-object v7, v15, Le/a/a/n/j/v;->f:Lcom/truecaller/messaging/mediamanager/SortOption;

    .line 10
    iget-object v8, v12, Le/a/a/n/j/v$a;->h:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    iput-object v15, v12, Le/a/a/n/j/v$a;->e:Ljava/lang/Object;

    iput v14, v12, Le/a/a/n/j/v$a;->f:I

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, p0

    .line 11
    invoke-static/range {v0 .. v11}, Le/a/c/p/a;->d0(Le/a/a/n/h;JIILcom/truecaller/messaging/mediamanager/AttachmentType;Lcom/truecaller/messaging/mediamanager/SortOption;Ljava/lang/String;[Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_2

    return-object v13

    .line 12
    :cond_2
    :goto_0
    check-cast v0, Le/a/a/g/j0/o;

    .line 13
    iget-object v1, v15, Le/a/a/n/j/v;->d:Le/a/a/g/j0/o;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_3
    iput-object v0, v15, Le/a/a/n/j/v;->d:Le/a/a/g/j0/o;

    .line 15
    iget-object v1, v15, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/n/j/t;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Le/a/a/n/j/t;->c0()V

    .line 16
    :cond_4
    iget-object v1, v15, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/n/j/t;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    :cond_6
    :goto_1
    invoke-interface {v1, v14}, Le/a/a/n/j/t;->A1(Z)V

    .line 17
    :cond_7
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
