.class public final Le/a/w4/s/q0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/q0;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Le/a/w4/s/y;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.search.global.PopulateFilterMatchHelper$populate$1$contactWithFilterMatch$1"
    f = "PopulateFilterMatchHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/w4/s/q0;


# direct methods
.method public constructor <init>(Le/a/w4/s/q0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/q0$a;->e:Le/a/w4/s/q0;

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

    new-instance p1, Le/a/w4/s/q0$a;

    iget-object v0, p0, Le/a/w4/s/q0$a;->e:Le/a/w4/s/q0;

    invoke-direct {p1, v0, p2}, Le/a/w4/s/q0$a;-><init>(Le/a/w4/s/q0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/w4/s/q0$a;

    iget-object v0, p0, Le/a/w4/s/q0$a;->e:Le/a/w4/s/q0;

    invoke-direct {p1, v0, p2}, Le/a/w4/s/q0$a;-><init>(Le/a/w4/s/q0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/w4/s/q0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/w4/s/q0$a;->e:Le/a/w4/s/q0;

    iget-object p1, p1, Le/a/w4/s/q0;->g:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ls1/k;

    .line 6
    iget-object v2, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 7
    check-cast v2, Lcom/truecaller/data/entity/Contact;

    .line 8
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    iget-object v3, p0, Le/a/w4/s/q0$a;->e:Le/a/w4/s/q0;

    iget-object v3, v3, Le/a/w4/s/q0;->f:Le/a/w4/s/p0;

    .line 11
    iget-object v3, v3, Le/a/w4/s/p0;->f:Le/a/k3/d;

    .line 12
    invoke-interface {v3}, Le/a/k3/d;->a()Le/a/k3/c;

    move-result-object v3

    .line 13
    iget-object v4, p0, Le/a/w4/s/q0$a;->e:Le/a/w4/s/q0;

    iget-object v4, v4, Le/a/w4/s/q0;->f:Le/a/w4/s/p0;

    .line 14
    iget-object v4, v4, Le/a/w4/s/p0;->c:Le/a/k3/j/b;

    .line 15
    invoke-virtual {v4, v2}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Le/a/k3/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Le/a/m0/a1$k;->M0(Lcom/truecaller/data/entity/Contact;Ljava/util/List;)Lcom/truecaller/data/entity/Contact;

    const-string v3, "aggregatedContactDao.get\u2026?: return@mapNotNull null"

    .line 17
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 19
    iget-object v4, p0, Le/a/w4/s/q0$a;->e:Le/a/w4/s/q0;

    iget-object v4, v4, Le/a/w4/s/q0;->f:Le/a/w4/s/p0;

    .line 20
    iget-object v5, v4, Le/a/w4/s/p0;->b:Le/a/h0/j;

    const-string v4, "it"

    .line 21
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 23
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 24
    invoke-interface/range {v5 .. v11}, Le/a/h0/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/truecaller/blocking/FilterMatch;

    move-result-object v4

    .line 25
    :cond_1
    new-instance v3, Le/a/w4/s/y;

    invoke-direct {v3, v2, v1, v4}, Le/a/w4/s/y;-><init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/blocking/FilterMatch;)V

    move-object v4, v3

    :cond_2
    if-eqz v4, :cond_0

    .line 26
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
