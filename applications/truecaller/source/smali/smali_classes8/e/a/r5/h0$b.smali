.class public final Le/a/r5/h0$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r5/h0;->ie()V
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
    c = "com.truecaller.whoviewedme.WhoViewedMeListPresenterImpl$reloadEvents$1"
    f = "WhoViewedMeListPresenter.kt"
    l = {
        0x93,
        0x9c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/r5/h0;


# direct methods
.method public constructor <init>(Le/a/r5/h0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r5/h0$b;->g:Le/a/r5/h0;

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

    new-instance p1, Le/a/r5/h0$b;

    iget-object v0, p0, Le/a/r5/h0$b;->g:Le/a/r5/h0;

    invoke-direct {p1, v0, p2}, Le/a/r5/h0$b;-><init>(Le/a/r5/h0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r5/h0$b;

    iget-object v0, p0, Le/a/r5/h0$b;->g:Le/a/r5/h0;

    invoke-direct {p1, v0, p2}, Le/a/r5/h0$b;-><init>(Le/a/r5/h0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r5/h0$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/r5/h0$b;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/r5/h0$b;->e:Ljava/lang/Object;

    check-cast v2, Le/a/r5/h0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Le/a/r5/h0$b;->g:Le/a/r5/h0;

    .line 5
    iget-object v5, v2, Le/a/r5/h0;->i:Le/a/r5/i0;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 6
    iput-object v2, p0, Le/a/r5/h0$b;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/r5/h0$b;->f:I

    move-object v9, p0

    invoke-static/range {v5 .. v11}, Le/a/p5/s0/g;->E(Le/a/r5/i0;Lcom/truecaller/whoviewedme/ProfileViewSource;JLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 7
    iput-object p1, v2, Le/a/r5/h0;->d:Ljava/util/List;

    .line 8
    iget-object p1, p0, Le/a/r5/h0$b;->g:Le/a/r5/h0;

    .line 9
    iget-object p1, p1, Le/a/r5/h0;->h:Le/a/l/p2/v0;

    .line 10
    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_c

    .line 11
    iget-object p1, p0, Le/a/r5/h0$b;->g:Le/a/r5/h0;

    .line 12
    iget-object v4, p1, Le/a/r5/h0;->d:Ljava/util/List;

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 15
    check-cast v6, Le/a/r5/o;

    .line 16
    iget-object v6, v6, Le/a/r5/o;->e:Lcom/truecaller/data/entity/Contact;

    .line 17
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v6}, Le/a/p5/s0/g;->y0(Lcom/truecaller/data/entity/Address;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v2

    :goto_2
    if-eqz v6, :cond_4

    .line 18
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_6
    new-instance v4, Le/a/r5/h0$b$a;

    invoke-direct {v4, v5}, Le/a/r5/h0$b$a;-><init>(Ljava/lang/Iterable;)V

    .line 20
    invoke-static {v4}, Le/q/f/a/d/a;->g0(Ls1/u/v;)Ljava/util/Map;

    move-result-object v4

    .line 21
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v2

    goto :goto_3

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    move-object v6, v5

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 22
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 23
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 24
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 25
    invoke-virtual {v7, v9}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_a

    move-object v5, v6

    move-object v7, v9

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    :goto_3
    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v5, :cond_b

    .line 26
    new-instance v4, Ls1/k;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    move-object v4, v2

    .line 27
    :goto_4
    iput-object v4, p1, Le/a/r5/h0;->g:Ls1/k;

    .line 28
    :cond_c
    iget-object p1, p0, Le/a/r5/h0$b;->g:Le/a/r5/h0;

    iput-object v2, p0, Le/a/r5/h0$b;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/r5/h0$b;->f:I

    .line 29
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;->em()V

    .line 30
    :cond_d
    invoke-virtual {p1, p0}, Le/a/r5/h0;->Ij(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    goto :goto_5

    :cond_e
    move-object p1, v0

    :goto_5
    if-ne p1, v1, :cond_f

    return-object v1

    :cond_f
    :goto_6
    return-object v0
.end method
