.class public final Le/a/l/n2/a$j;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/n2/a;->b(Le/a/l/p2/m1;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/l/n2/f;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.billing.GooglePlayBilling$querySkuDetails$2"
    f = "GooglePlayBilling.kt"
    l = {
        0xa9,
        0xaa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/l/n2/a;

.field public final synthetic h:Le/a/l/p2/m1;


# direct methods
.method public constructor <init>(Le/a/l/n2/a;Le/a/l/p2/m1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/a$j;->g:Le/a/l/n2/a;

    iput-object p2, p0, Le/a/l/n2/a$j;->h:Le/a/l/p2/m1;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/n2/a$j;

    iget-object v1, p0, Le/a/l/n2/a$j;->g:Le/a/l/n2/a;

    iget-object v2, p0, Le/a/l/n2/a$j;->h:Le/a/l/p2/m1;

    invoke-direct {v0, v1, v2, p1}, Le/a/l/n2/a$j;-><init>(Le/a/l/n2/a;Le/a/l/p2/m1;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/l/n2/a$j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/n2/a$j;

    iget-object v1, p0, Le/a/l/n2/a$j;->g:Le/a/l/n2/a;

    iget-object v2, p0, Le/a/l/n2/a$j;->h:Le/a/l/p2/m1;

    invoke-direct {v0, v1, v2, p1}, Le/a/l/n2/a$j;-><init>(Le/a/l/n2/a;Le/a/l/p2/m1;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/n2/a$j;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/l/n2/a$j;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/l/n2/a$j;->g:Le/a/l/n2/a;

    invoke-static {p1}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object v1

    iget-object v4, p0, Le/a/l/n2/a$j;->h:Le/a/l/p2/m1;

    .line 5
    iget-object v4, v4, Le/a/l/p2/m1;->a:Ljava/util/List;

    .line 6
    iput v3, p0, Le/a/l/n2/a$j;->f:I

    const-string v3, "subs"

    invoke-virtual {p1, v1, v4, v3, p0}, Le/a/l/n2/a;->s(Le/d/a/a/d;Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/Collection;

    .line 8
    iget-object v1, p0, Le/a/l/n2/a$j;->g:Le/a/l/n2/a;

    invoke-static {v1}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object v3

    iget-object v4, p0, Le/a/l/n2/a$j;->h:Le/a/l/p2/m1;

    .line 9
    iget-object v4, v4, Le/a/l/p2/m1;->b:Ljava/util/List;

    .line 10
    iput-object p1, p0, Le/a/l/n2/a$j;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/l/n2/a$j;->f:I

    const-string v2, "inapp"

    invoke-virtual {v1, v3, v4, v2, p0}, Le/a/l/n2/a;->s(Le/d/a/a/d;Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/d/a/a/r;

    .line 13
    iget-object v3, p0, Le/a/l/n2/a$j;->h:Le/a/l/p2/m1;

    .line 14
    iget-object v4, v3, Le/a/l/p2/m1;->a:Ljava/util/List;

    iget-object v3, v3, Le/a/l/p2/m1;->b:Ljava/util/List;

    invoke-static {v4, v3}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 15
    invoke-virtual {v2}, Le/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 20
    check-cast v1, Le/d/a/a/r;

    .line 21
    iget-object v2, p0, Le/a/l/n2/a$j;->g:Le/a/l/n2/a;

    invoke-static {v2, v1}, Le/a/l/n2/a;->o(Le/a/l/n2/a;Le/d/a/a/r;)Le/a/l/n2/f;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object p1
.end method
