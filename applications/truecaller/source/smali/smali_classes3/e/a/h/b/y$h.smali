.class public final Le/a/h/b/y$h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/y;->Vj(Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Z)V
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
    c = "com.truecaller.calling.dialer.DialerPresenter$saveSuggestNameAndBlock$1"
    f = "DialerPresenter.kt"
    l = {
        0x2d3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/h/b/y;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

.field public final synthetic i:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Le/a/h/b/y;Ljava/util/List;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/y$h;->f:Le/a/h/b/y;

    iput-object p2, p0, Le/a/h/b/y$h;->g:Ljava/util/List;

    iput-object p3, p0, Le/a/h/b/y$h;->h:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iput-object p4, p0, Le/a/h/b/y$h;->i:Ljava/lang/Long;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/h/b/y$h;

    iget-object v1, p0, Le/a/h/b/y$h;->f:Le/a/h/b/y;

    iget-object v2, p0, Le/a/h/b/y$h;->g:Ljava/util/List;

    iget-object v3, p0, Le/a/h/b/y$h;->h:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iget-object v4, p0, Le/a/h/b/y$h;->i:Ljava/lang/Long;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/h/b/y$h;-><init>(Le/a/h/b/y;Ljava/util/List;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/h/b/y$h;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/h/b/y$h;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/b/y$h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/y$h;->e:I

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
    iget-object p1, p0, Le/a/h/b/y$h;->f:Le/a/h/b/y;

    .line 5
    iget-object p1, p1, Le/a/h/b/y;->M:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/h/b/y$h$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Le/a/h/b/y$h$a;-><init>(Le/a/h/b/y$h;Ls1/w/d;)V

    iput v2, p0, Le/a/h/b/y$h;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/h/b/y$h;->f:Le/a/h/b/y;

    .line 8
    iget-object p1, p1, Le/a/h/b/y;->S:Le/a/p5/c0;

    const v0, 0x7f10001c

    .line 9
    iget-object v1, p0, Le/a/h/b/y$h;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    iget-object v4, p0, Le/a/h/b/y$h;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 11
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x0

    aput-object v5, v3, v4

    .line 12
    invoke-interface {p1, v0, v1, v3}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getQuan\u2026ns.size\n                )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Le/a/h/b/y$h;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 14
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 15
    check-cast v0, Ls1/k;

    .line 16
    iget-object v1, p0, Le/a/h/b/y$h;->f:Le/a/h/b/y;

    new-instance v3, Le/a/h/b/h;

    .line 17
    iget-object v5, v0, Ls1/k;->a:Ljava/lang/Object;

    const-string v6, "numberAndName.first"

    .line 18
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    .line 19
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 20
    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v5, v0, p1}, Le/a/h/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object v3, v1, Le/a/h/b/y;->f:Le/a/h/b/h;

    .line 22
    iget-object p1, p0, Le/a/h/b/y$h;->f:Le/a/h/b/y;

    iget-object v0, p0, Le/a/h/b/y$h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 23
    iget-object v1, p1, Le/a/h/b/y;->f:Le/a/h/b/h;

    if-eqz v1, :cond_5

    .line 24
    iget-object v3, p1, Le/a/h/b/y;->S:Le/a/p5/c0;

    const v5, 0x7f120035

    new-array v6, v2, [Ljava/lang/Object;

    .line 25
    iget-object v1, v1, Le/a/h/b/h;->b:Ljava/lang/String;

    aput-object v1, v6, v4

    .line 26
    invoke-interface {v3, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resourceProvider.getStri\u2026llsInfo.firstBlockedName)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, v2, :cond_3

    .line 27
    iget-object v0, p1, Le/a/h/b/y;->q0:Le/a/a/k0;

    invoke-interface {v0}, Le/a/a/k0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    move v4, v2

    :cond_3
    if-eqz v4, :cond_4

    .line 28
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/v;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Le/a/h/b/v;->st(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {p1, v2}, Le/a/h/b/y;->ak(Z)V

    .line 30
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
