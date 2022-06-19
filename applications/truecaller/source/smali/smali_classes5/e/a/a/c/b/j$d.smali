.class public final Le/a/a/c/b/j$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/b/j;->Pd(Ljava/lang/String;)V
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
    c = "com.truecaller.messaging.conversation.search.SearchConversationPresenter$onSearchButtonClicked$1"
    f = "SearchConversationPresenter.kt"
    l = {
        0x48
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/b/j;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/c/b/j;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b/j$d;->f:Le/a/a/c/b/j;

    iput-object p2, p0, Le/a/a/c/b/j$d;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/a/c/b/j$d;

    iget-object v0, p0, Le/a/a/c/b/j$d;->f:Le/a/a/c/b/j;

    iget-object v1, p0, Le/a/a/c/b/j$d;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/b/j$d;-><init>(Le/a/a/c/b/j;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/b/j$d;

    iget-object v0, p0, Le/a/a/c/b/j$d;->f:Le/a/a/c/b/j;

    iget-object v1, p0, Le/a/a/c/b/j$d;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/b/j$d;-><init>(Le/a/a/c/b/j;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/b/j$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/b/j$d;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/a/c/b/j$d;->f:Le/a/a/c/b/j;

    .line 5
    iget-object p1, p1, Le/a/a/c/b/j;->k:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Le/a/a/g/w;

    iget-object v4, p0, Le/a/a/c/b/j$d;->g:Ljava/lang/String;

    iget-object p1, p0, Le/a/a/c/b/j$d;->f:Le/a/a/c/b/j;

    .line 7
    iget-object v1, p1, Le/a/a/c/b/j;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 8
    iget-wide v5, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 9
    iget v7, p1, Le/a/a/c/b/j;->i:I

    .line 10
    iget v8, v1, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    iput v2, p0, Le/a/a/c/b/j$d;->e:I

    move-object v9, p0

    invoke-interface/range {v3 .. v9}, Le/a/a/g/w;->d(Ljava/lang/String;JIILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Le/a/a/g/j0/q;

    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p0, Le/a/a/c/b/j$d;->f:Le/a/a/c/b/j;

    .line 12
    invoke-virtual {v0, p1, v2}, Le/a/a/c/b/j;->Lj(Le/a/a/g/j0/q;Z)V

    .line 13
    iget-object v0, p0, Le/a/a/c/b/j$d;->f:Le/a/a/c/b/j;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 14
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string p1, "keyword"

    .line 15
    invoke-virtual {v0, p1, v1}, Le/a/a/c/b/j;->Kj(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Le/a/a/c/b/j$d;->f:Le/a/a/c/b/j;

    .line 17
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/h;

    if-eqz p1, :cond_4

    .line 18
    invoke-interface {p1}, Le/a/a/c/b/h;->m9()V

    .line 19
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
