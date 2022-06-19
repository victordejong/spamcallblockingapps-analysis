.class public final Le/a/a/p0/i;
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
    c = "com.truecaller.messaging.categorizer.UnclassifiedMessagesSyncHelper$classify$1$2"
    f = "UnclassifiedMessagesSyncHelper.kt"
    l = {
        0xb6,
        0xba
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/a/p0/k;

.field public final synthetic i:Ls1/z/c/c0;

.field public final synthetic j:Ls1/z/c/c0;

.field public final synthetic k:Ljava/util/Set;

.field public final synthetic l:Le/a/c/c/e/a;

.field public final synthetic m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/a/p0/k;Ls1/z/c/c0;Ls1/z/c/c0;Ljava/util/Set;Le/a/c/c/e/a;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p2, p0, Le/a/a/p0/i;->h:Le/a/a/p0/k;

    iput-object p3, p0, Le/a/a/p0/i;->i:Ls1/z/c/c0;

    iput-object p4, p0, Le/a/a/p0/i;->j:Ls1/z/c/c0;

    iput-object p5, p0, Le/a/a/p0/i;->k:Ljava/util/Set;

    iput-object p6, p0, Le/a/a/p0/i;->l:Le/a/c/c/e/a;

    iput-object p7, p0, Le/a/a/p0/i;->m:Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
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

    new-instance p1, Le/a/a/p0/i;

    iget-object v2, p0, Le/a/a/p0/i;->h:Le/a/a/p0/k;

    iget-object v3, p0, Le/a/a/p0/i;->i:Ls1/z/c/c0;

    iget-object v4, p0, Le/a/a/p0/i;->j:Ls1/z/c/c0;

    iget-object v5, p0, Le/a/a/p0/i;->k:Ljava/util/Set;

    iget-object v6, p0, Le/a/a/p0/i;->l:Le/a/c/c/e/a;

    iget-object v7, p0, Le/a/a/p0/i;->m:Ljava/util/ArrayList;

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Le/a/a/p0/i;-><init>(Ls1/w/d;Le/a/a/p0/k;Ls1/z/c/c0;Ls1/z/c/c0;Ljava/util/Set;Le/a/c/c/e/a;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/p0/i;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/p0/i;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/p0/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/p0/i;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/a/p0/i;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v4, p0, Le/a/a/p0/i;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/p0/i;->i:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    move-object p1, p0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/n0;

    .line 6
    iget-object v5, p1, Le/a/a/p0/i;->m:Ljava/util/ArrayList;

    iput-object v4, p1, Le/a/a/p0/i;->e:Ljava/lang/Object;

    iput-object v5, p1, Le/a/a/p0/i;->f:Ljava/lang/Object;

    iput v2, p1, Le/a/a/p0/i;->g:I

    invoke-interface {v1, p1}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v6

    :goto_1
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_4
    iget-object v1, p1, Le/a/a/p0/i;->h:Le/a/a/p0/k;

    .line 8
    iget-object v1, v1, Le/a/a/p0/k;->a:Le/a/c/b/j;

    .line 9
    invoke-interface {v1}, Le/a/c/b/j;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    iget-object v1, p1, Le/a/a/p0/i;->l:Le/a/c/c/e/a;

    const/4 v2, 0x0

    iput-object v2, p1, Le/a/a/p0/i;->e:Ljava/lang/Object;

    iput-object v2, p1, Le/a/a/p0/i;->f:Ljava/lang/Object;

    iput v3, p1, Le/a/a/p0/i;->g:I

    invoke-virtual {v1, p1}, Le/a/c/c/e/a;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    .line 11
    :cond_5
    :goto_2
    iget-object p1, p1, Le/a/a/p0/i;->l:Le/a/c/c/e/a;

    .line 12
    iget-object p1, p1, Le/a/c/c/e/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
