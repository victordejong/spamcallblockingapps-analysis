.class public final Le/a/a/c/c/s;
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
    c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl$editScheduledMessages$1"
    f = "DraftPresenterImpl.kt"
    l = {
        0x11c,
        0x11f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/a/c/c/r;


# direct methods
.method public constructor <init>(Le/a/a/c/c/r;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/c/s;->j:Le/a/a/c/c/r;

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

    new-instance p1, Le/a/a/c/c/s;

    iget-object v0, p0, Le/a/a/c/c/s;->j:Le/a/a/c/c/r;

    invoke-direct {p1, v0, p2}, Le/a/a/c/c/s;-><init>(Le/a/a/c/c/r;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/c/s;

    iget-object v0, p0, Le/a/a/c/c/s;->j:Le/a/a/c/c/r;

    invoke-direct {p1, v0, p2}, Le/a/a/c/c/s;-><init>(Le/a/a/c/c/r;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/c/s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/c/c/s;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Le/a/a/c/c/s;->h:Ljava/lang/Object;

    iget-object v5, p0, Le/a/a/c/c/s;->g:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    iget-object v6, p0, Le/a/a/c/c/s;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, p0, Le/a/a/c/c/s;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v6

    move-object v6, v7

    move-object v7, v2

    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/c/s;->j:Le/a/a/c/c/r;

    iput v4, p0, Le/a/a/c/c/s;->i:I

    invoke-virtual {p1, p0}, Le/a/a/c/c/r;->Qj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_a

    .line 5
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Le/q/f/a/d/a;->Y1(I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, p1

    move-object v5, v2

    move-object p1, p0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/k;

    .line 10
    iget-object v8, p1, Le/a/a/c/c/s;->j:Le/a/a/c/c/r;

    .line 11
    iget-object v9, v8, Le/a/a/c/c/r;->o:Le/a/a/c1/d;

    .line 12
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 13
    check-cast v2, Lcom/truecaller/messaging/data/types/Draft;

    .line 14
    iget-object v8, v8, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 15
    iget-object v10, v8, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->e:Ljava/lang/String;

    .line 16
    iget-boolean v8, v8, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->d:Z

    const-string v11, "conversation-sendMms"

    .line 17
    invoke-interface {v9, v2, v10, v8, v11}, Le/a/a/c1/d;->a(Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;ZLjava/lang/String;)Le/a/r2/x;

    move-result-object v2

    iput-object v5, p1, Le/a/a/c/c/s;->e:Ljava/lang/Object;

    iput-object v6, p1, Le/a/a/c/c/s;->f:Ljava/lang/Object;

    iput-object v5, p1, Le/a/a/c/c/s;->g:Ljava/lang/Object;

    iput-object v7, p1, Le/a/a/c/c/s;->h:Ljava/lang/Object;

    iput v3, p1, Le/a/a/c/c/s;->i:I

    .line 18
    invoke-static {v2, p1}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v8, v6

    move-object v6, v5

    move-object v12, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v12

    .line 19
    :goto_2
    check-cast p1, Le/a/a/c1/a;

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    move-object v1, v2

    move-object v5, v6

    move-object v6, v8

    goto :goto_1

    .line 20
    :cond_5
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    :cond_6
    move v1, v2

    goto :goto_3

    .line 21
    :cond_7
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Le/a/a/c1/a$b;

    .line 23
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v4

    :goto_3
    if-eqz v1, :cond_9

    .line 25
    iget-object p1, p1, Le/a/a/c/c/s;->j:Le/a/a/c/c/r;

    .line 26
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_a

    const v1, 0x7f120239

    .line 27
    invoke-interface {p1, v1}, Le/a/a/c/c/q;->a(I)V

    goto :goto_4

    .line 28
    :cond_9
    iget-object p1, p1, Le/a/a/c/c/s;->j:Le/a/a/c/c/r;

    .line 29
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_a

    const/4 v1, 0x0

    .line 30
    invoke-static {p1, v2, v4, v1}, Le/a/c/p/a;->i0(Le/a/a/c/c/q;ZILjava/lang/Object;)V

    :cond_a
    :goto_4
    return-object v0
.end method
