.class public final Le/a/d/z/c/j;
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
    c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$showMissedCallNotification$2"
    f = "InvitationServicePresenter.kt"
    l = {
        0x151
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/z/c/e;

.field public final synthetic h:Le/a/d/w/b;


# direct methods
.method public constructor <init>(Le/a/d/z/c/e;Le/a/d/w/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/z/c/j;->g:Le/a/d/z/c/e;

    iput-object p2, p0, Le/a/d/z/c/j;->h:Le/a/d/w/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/z/c/j;

    iget-object v1, p0, Le/a/d/z/c/j;->g:Le/a/d/z/c/e;

    iget-object v2, p0, Le/a/d/z/c/j;->h:Le/a/d/w/b;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/z/c/j;-><init>(Le/a/d/z/c/e;Le/a/d/w/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/z/c/j;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/z/c/j;

    iget-object v1, p0, Le/a/d/z/c/j;->g:Le/a/d/z/c/e;

    iget-object v2, p0, Le/a/d/z/c/j;->h:Le/a/d/w/b;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/z/c/j;-><init>(Le/a/d/z/c/e;Le/a/d/w/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/z/c/j;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/z/c/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/z/c/j;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/z/c/j;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v2, p0, Le/a/d/z/c/j;->g:Le/a/d/z/c/e;

    .line 5
    iget-object v2, v2, Le/a/d/z/c/e;->d:Lcom/truecaller/voip/VoipGroupPushNotification;

    if-nez v2, :cond_2

    return-object v0

    .line 6
    :cond_2
    iget-object v4, p0, Le/a/d/z/c/j;->h:Le/a/d/w/b;

    .line 7
    invoke-interface {v4}, Le/a/d/w/b;->g()Lq3/a/x2/i1;

    move-result-object v5

    invoke-interface {v5}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/b0/a;

    invoke-interface {v4, v5}, Le/a/d/w/j/c;->f(Le/a/d/b0/a;)Ljava/util/List;

    move-result-object v4

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 10
    check-cast v7, Le/a/d/c0/x0;

    .line 11
    iget-object v7, v7, Le/a/d/c0/x0;->a:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 12
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_4
    iget-object v6, p0, Le/a/d/z/c/j;->g:Le/a/d/z/c/e;

    .line 14
    iget-object v6, v6, Le/a/d/z/c/e;->k:Le/a/d/c0/e;

    .line 15
    invoke-static {v5}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    sget-object v7, Lcom/truecaller/voip/groupcall/call/CallDirection;->INCOMING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    invoke-interface {v6, p1, v5, v7}, Le/a/d/c0/e;->d(Lq3/a/i0;Ljava/util/Set;Lcom/truecaller/voip/groupcall/call/CallDirection;)Ljava/util/Map;

    move-result-object p1

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq3/a/x2/i1;

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {v5}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 20
    new-instance v5, Lq3/a/x2/k;

    invoke-direct {v5, p1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Le/a/d/z/c/j;->g:Le/a/d/z/c/e;

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 24
    check-cast v7, Le/a/d/c0/x0;

    .line 25
    iget-object v7, v7, Le/a/d/c0/x0;->a:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 26
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_7
    iput v3, p0, Le/a/d/z/c/j;->f:I

    .line 28
    invoke-virtual {p1, v5, v2, v6, p0}, Le/a/d/z/c/e;->Nj(Lq3/a/x2/f;Lcom/truecaller/voip/VoipGroupPushNotification;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    return-object v0
.end method
