.class public final Le/a/a/b/v;
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
    c = "com.truecaller.messaging.messaginglist.MessagingListPresenterImpl$onDeleteSelectedItems$1"
    f = "MessagingListPresenterImpl.kt"
    l = {
        0x686
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/b/s;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Le/a/a/b/s;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/v;->f:Le/a/a/b/s;

    iput p2, p0, Le/a/a/b/v;->g:I

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

    new-instance p1, Le/a/a/b/v;

    iget-object v0, p0, Le/a/a/b/v;->f:Le/a/a/b/s;

    iget v1, p0, Le/a/a/b/v;->g:I

    invoke-direct {p1, v0, v1, p2}, Le/a/a/b/v;-><init>(Le/a/a/b/s;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/b/v;

    iget-object v0, p0, Le/a/a/b/v;->f:Le/a/a/b/s;

    iget v1, p0, Le/a/a/b/v;->g:I

    invoke-direct {p1, v0, v1, p2}, Le/a/a/b/v;-><init>(Le/a/a/b/s;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/b/v;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/b/v;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p1, p0, Le/a/a/b/v;->f:Le/a/a/b/s;

    .line 5
    iget-object p1, p1, Le/a/a/b/s;->N:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-object v1, p0, Le/a/a/b/v;->f:Le/a/a/b/s;

    .line 7
    iget-object v1, v1, Le/a/a/b/s;->n:[Lcom/truecaller/messaging/data/types/Conversation;

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 10
    iget-wide v6, v6, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 11
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 12
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iput v2, p0, Le/a/a/b/v;->e:I

    .line 14
    invoke-interface {p1, v3, p0}, Le/a/a/g/w;->B(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 15
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Le/a/a/b/v;->f:Le/a/a/b/s;

    .line 16
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/r;

    if-eqz v1, :cond_4

    .line 17
    iget-object v0, v0, Le/a/a/b/s;->n:[Lcom/truecaller/messaging/data/types/Conversation;

    .line 18
    array-length v0, v0

    iget v2, p0, Le/a/a/b/v;->g:I

    invoke-interface {v1, v0, p1, v2}, Le/a/a/b/r;->au(IZI)V

    .line 19
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
