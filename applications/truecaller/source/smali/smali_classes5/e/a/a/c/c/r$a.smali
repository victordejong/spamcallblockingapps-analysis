.class public final Le/a/a/c/c/r$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/c/r;->Jj(Ljava/util/List;)V
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
    c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl$addUris$1"
    f = "DraftPresenterImpl.kt"
    l = {
        0x21d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/c/r;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a/c/c/r;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/c/r$a;->f:Le/a/a/c/c/r;

    iput-object p2, p0, Le/a/a/c/c/r$a;->g:Ljava/util/List;

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

    new-instance p1, Le/a/a/c/c/r$a;

    iget-object v0, p0, Le/a/a/c/c/r$a;->f:Le/a/a/c/c/r;

    iget-object v1, p0, Le/a/a/c/c/r$a;->g:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/c/r$a;-><init>(Le/a/a/c/c/r;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/c/r$a;

    iget-object v0, p0, Le/a/a/c/c/r$a;->f:Le/a/a/c/c/r;

    iget-object v1, p0, Le/a/a/c/c/r$a;->g:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/c/r$a;-><init>(Le/a/a/c/c/r;Ljava/util/List;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/c/r$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/c/r$a;->e:I

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
    iget-object p1, p0, Le/a/a/c/c/r$a;->f:Le/a/a/c/c/r;

    iget-object v1, p0, Le/a/a/c/c/r$a;->g:Ljava/util/List;

    iput v2, p0, Le/a/a/c/c/r$a;->e:I

    invoke-virtual {p1, v1, p0}, Le/a/a/c/c/r;->Lj(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ls1/k;

    .line 5
    iget-object v0, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/util/List;

    .line 7
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Le/a/o5/o0;

    .line 9
    iget-object v1, p0, Le/a/a/c/c/r$a;->f:Le/a/a/c/c/r;

    .line 10
    iget-object v1, v1, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 11
    invoke-static {v1}, Le/a/c/p/a;->m1(Lcom/truecaller/messaging/conversation/draft/DraftArguments;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    iget-object v1, p0, Le/a/a/c/c/r$a;->f:Le/a/a/c/c/r;

    .line 13
    iget-object v3, v1, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v1, v0}, Le/a/a/c/c/r;->Ij(Ljava/util/List;)V

    goto/16 :goto_2

    .line 15
    :cond_3
    iget-object v3, v1, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 16
    iget-object v3, v1, Le/a/a/c/c/r;->d:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/c/c/g;

    .line 17
    new-instance v5, Le/a/a/c/c/g;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/BinaryEntity;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7, v7, v6}, Le/a/a/c/c/g;-><init>(Lcom/truecaller/messaging/data/types/BinaryEntity;Ljava/lang/String;[Lcom/truecaller/messaging/data/types/Mention;I)V

    .line 18
    iget-object v0, v3, Le/a/a/c/c/g;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v5, v0}, Le/a/a/c/c/g;->a(Ljava/lang/String;)V

    .line 20
    iget-object v0, v3, Le/a/a/c/c/g;->c:[Lcom/truecaller/messaging/data/types/Mention;

    .line 21
    invoke-virtual {v5, v0}, Le/a/a/c/c/g;->b([Lcom/truecaller/messaging/data/types/Mention;)V

    .line 22
    iget-object v0, v1, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    iget-object v0, v1, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, v1, Le/a/a/c/c/r;->r:Le/a/o5/u1;

    .line 25
    iget-object v3, v3, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 26
    invoke-interface {v0, v3}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    .line 27
    iget-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/q;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/a/c/c/q;->c0()V

    .line 28
    :cond_4
    iget-object v0, v1, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, v1, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v0

    .line 30
    invoke-virtual {v1, v0, v2}, Le/a/a/c/c/r;->Vj(IZ)V

    .line 31
    iget-object v0, v1, Le/a/a/c/c/r;->y:Le/a/a/c/c/f;

    iget-object v3, v1, Le/a/a/c/c/r;->k:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    .line 32
    iget-object v3, v3, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 33
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 35
    check-cast v6, Lcom/truecaller/messaging/data/types/Draft;

    .line 36
    iget-object v6, v6, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v7, "it.participants"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 37
    invoke-static {v5, v6}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_5
    new-array v3, v4, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 38
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 39
    iget-object v1, v1, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/c/g;

    .line 40
    iget-object v1, v1, Le/a/a/c/c/g;->a:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 41
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Le/a/a/c/c/f;->b([Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V

    goto :goto_2

    .line 42
    :cond_6
    iget-object v1, p0, Le/a/a/c/c/r$a;->f:Le/a/a/c/c/r;

    .line 43
    invoke-virtual {v1, v0}, Le/a/a/c/c/r;->Ij(Ljava/util/List;)V

    :cond_7
    :goto_2
    if-eqz p1, :cond_b

    .line 44
    iget-object v0, p0, Le/a/a/c/c/r$a;->f:Le/a/a/c/c/r;

    .line 45
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    instance-of v1, p1, Le/a/o5/o0$a;

    if-eqz v1, :cond_8

    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/q;

    if-eqz v1, :cond_a

    check-cast p1, Le/a/o5/o0$a;

    .line 47
    iget-wide v3, p1, Le/a/o5/o0$a;->a:J

    .line 48
    invoke-interface {v1, v3, v4}, Le/a/a/c/c/q;->uA(J)V

    goto :goto_3

    .line 49
    :cond_8
    instance-of v1, p1, Le/a/o5/o0$b;

    if-eqz v1, :cond_9

    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_a

    const v1, 0x7f1201da

    invoke-interface {p1, v1}, Le/a/a/c/c/q;->a(I)V

    goto :goto_3

    .line 50
    :cond_9
    instance-of p1, p1, Le/a/o5/o0$c;

    if-eqz p1, :cond_a

    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_a

    const v1, 0x7f1201d8

    invoke-interface {p1, v1}, Le/a/a/c/c/q;->a(I)V

    .line 51
    :cond_a
    :goto_3
    iget-object p1, v0, Le/a/a/c/c/r;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/c/q;

    if-eqz p1, :cond_b

    invoke-interface {p1, v2}, Le/a/a/c/c/q;->Y4(Z)V

    .line 52
    :cond_b
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
