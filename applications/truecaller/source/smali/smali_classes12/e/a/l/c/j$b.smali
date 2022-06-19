.class public final Le/a/l/c/j$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/j;->onDataChanged()V
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
    c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter$onDataChanged$1"
    f = "PremiumUserTabPresenter.kt"
    l = {
        0xbc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:I

.field public n:I

.field public final synthetic o:Le/a/l/c/j;


# direct methods
.method public constructor <init>(Le/a/l/c/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/j$b;->o:Le/a/l/c/j;

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

    new-instance p1, Le/a/l/c/j$b;

    iget-object v0, p0, Le/a/l/c/j$b;->o:Le/a/l/c/j;

    invoke-direct {p1, v0, p2}, Le/a/l/c/j$b;-><init>(Le/a/l/c/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/c/j$b;

    iget-object v0, p0, Le/a/l/c/j$b;->o:Le/a/l/c/j;

    invoke-direct {p1, v0, p2}, Le/a/l/c/j$b;-><init>(Le/a/l/c/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/c/j$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/c/j$b;->n:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Le/a/l/c/j$b;->m:I

    iget-object v1, p0, Le/a/l/c/j$b;->l:Ljava/lang/Object;

    check-cast v1, Le/a/l/v2/i/b/a;

    iget-object v2, p0, Le/a/l/c/j$b;->k:Ljava/lang/Object;

    check-cast v2, Le/a/l/c/a/q;

    iget-object v3, p0, Le/a/l/c/j$b;->j:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    iget-object v3, p0, Le/a/l/c/j$b;->i:Ljava/lang/Object;

    check-cast v3, Le/a/l/c/j$a;

    iget-object v4, p0, Le/a/l/c/j$b;->h:Ljava/lang/Object;

    check-cast v4, Le/a/l/c/j$a;

    iget-object v5, p0, Le/a/l/c/j$b;->g:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Le/a/l/c/j$b;->f:Ljava/lang/Object;

    check-cast v6, Le/a/l/c/a/n0;

    iget-object v7, p0, Le/a/l/c/j$b;->e:Ljava/lang/Object;

    check-cast v7, Le/a/l/c/j;

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

    .line 4
    iget-object v7, p0, Le/a/l/c/j$b;->o:Le/a/l/c/j;

    .line 5
    iget-object p1, v7, Le/a/l/c/j;->n0:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/f3;

    invoke-virtual {p1}, Le/a/l/c/a/f3;->a()Z

    move-result p1

    .line 7
    iget-object v6, v7, Le/a/l/c/j;->W:Le/a/l/c/a/n0;

    .line 8
    iget-boolean v1, v7, Le/a/l/e0;->m:Z

    if-nez v1, :cond_a

    .line 9
    iget-boolean v1, v7, Le/a/l/e0;->n:Z

    if-nez v1, :cond_a

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 10
    :cond_2
    iget-object p1, v7, Le/a/l/c/j;->X:Ljava/util/List;

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    new-instance v3, Le/a/l/c/j$a;

    invoke-direct {v3, p1}, Le/a/l/c/j$a;-><init>(Ljava/util/List;)V

    .line 15
    iget-object p1, v3, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 17
    check-cast v8, Le/a/l/c/a/p;

    .line 18
    iget-object v8, v8, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 19
    instance-of v8, v8, Le/a/l/c/a/t$o;

    .line 20
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 21
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v4, v9

    .line 22
    :goto_1
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eq v4, v9, :cond_6

    move v1, v2

    .line 24
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v4

    :goto_2
    if-eqz p1, :cond_9

    .line 26
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 27
    iget-object v8, v3, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 28
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/l/c/a/p;

    .line 29
    iget-object v8, v8, Le/a/l/c/a/p;->a:Le/a/l/c/a/q;

    .line 30
    iget-object v9, v3, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 31
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/l/c/a/p;

    .line 32
    iget-object v9, v9, Le/a/l/c/a/p;->c:Le/a/l/v2/i/b/a;

    .line 33
    iget-object v10, v3, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 34
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/l/c/a/p;

    .line 35
    iget-object v10, v10, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    const-string v11, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.WhoViewedMe"

    .line 36
    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Le/a/l/c/a/t$o;

    .line 37
    iget-object v10, p0, Le/a/l/c/j$b;->o:Le/a/l/c/j;

    .line 38
    iget-object v10, v10, Le/a/l/c/j;->n0:Lo3/a;

    .line 39
    invoke-interface {v10}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/l/c/a/f3;

    iput-object v7, p0, Le/a/l/c/j$b;->e:Ljava/lang/Object;

    iput-object v6, p0, Le/a/l/c/j$b;->f:Ljava/lang/Object;

    iput-object v5, p0, Le/a/l/c/j$b;->g:Ljava/lang/Object;

    iput-object v3, p0, Le/a/l/c/j$b;->h:Ljava/lang/Object;

    iput-object v3, p0, Le/a/l/c/j$b;->i:Ljava/lang/Object;

    iput-object p1, p0, Le/a/l/c/j$b;->j:Ljava/lang/Object;

    iput-object v8, p0, Le/a/l/c/j$b;->k:Ljava/lang/Object;

    iput-object v9, p0, Le/a/l/c/j$b;->l:Ljava/lang/Object;

    iput v1, p0, Le/a/l/c/j$b;->m:I

    iput v2, p0, Le/a/l/c/j$b;->n:I

    .line 40
    iget-object p1, v10, Le/a/l/c/a/f3;->d:Ls1/w/f;

    new-instance v2, Le/a/l/c/a/e3;

    invoke-direct {v2, v10, v4}, Le/a/l/c/a/e3;-><init>(Le/a/l/c/a/f3;Ls1/w/d;)V

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    move v0, v1

    move-object v4, v3

    move-object v2, v8

    move-object v1, v9

    .line 41
    :goto_3
    check-cast p1, Le/a/l/c/a/t$o;

    .line 42
    new-instance v8, Le/a/l/c/a/p;

    invoke-direct {v8, v2, p1, v1}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;)V

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    iget-object v1, v3, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 45
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, v3, Le/a/l/c/j$a;->a:Ljava/util/List;

    move-object v3, v4

    .line 47
    :cond_9
    iget-object p1, v3, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 48
    invoke-static {v7, v6, p1}, Le/a/l/c/j;->dk(Le/a/l/c/j;Le/a/l/c/a/n0;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 49
    iput-object v6, v7, Le/a/l/c/j;->W:Le/a/l/c/a/n0;

    .line 50
    iput-object p1, v7, Le/a/l/c/j;->X:Ljava/util/List;

    .line 51
    iget-object p1, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/i;

    if-eqz p1, :cond_a

    .line 52
    invoke-interface {p1, v5, v0}, Le/a/l/c/i;->ok(Ljava/util/List;Ljava/util/List;)V

    .line 53
    :cond_a
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
