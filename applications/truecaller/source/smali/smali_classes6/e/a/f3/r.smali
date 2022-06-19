.class public final Le/a/f3/r;
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
    c = "com.truecaller.callbubbles.CallBubblesImpl$maybeInitialize$1"
    f = "CallBubbles.kt"
    l = {
        0xa6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f3/o;


# direct methods
.method public constructor <init>(Le/a/f3/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f3/r;->f:Le/a/f3/o;

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

    new-instance p1, Le/a/f3/r;

    iget-object v0, p0, Le/a/f3/r;->f:Le/a/f3/o;

    invoke-direct {p1, v0, p2}, Le/a/f3/r;-><init>(Le/a/f3/o;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f3/r;

    iget-object v0, p0, Le/a/f3/r;->f:Le/a/f3/o;

    invoke-direct {p1, v0, p2}, Le/a/f3/r;-><init>(Le/a/f3/o;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f3/r;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/f3/r;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

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
    iget-object p1, p0, Le/a/f3/r;->f:Le/a/f3/o;

    .line 5
    iget-object v2, p1, Le/a/f3/o;->i:Le/a/p5/a0;

    invoke-interface {v2}, Le/a/p5/a0;->k()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_b

    .line 6
    iget-object v2, p1, Le/a/f3/o;->f:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/u3/g;

    .line 7
    iget-object v6, v2, Le/a/u3/g;->D1:Le/a/u3/g$a;

    sget-object v7, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v8, 0x85

    aget-object v7, v7, v8

    invoke-virtual {v6, v2, v7}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    check-cast v2, Le/a/u3/i;

    .line 8
    invoke-interface {v2}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_a

    const-string v6, ","

    .line 10
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v2, v6, v4, v4, v7}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    if-eqz v2, :cond_a

    .line 12
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 13
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v7, v6, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_5

    goto :goto_5

    .line 15
    :cond_5
    iget-object p1, p1, Le/a/f3/o;->h:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, v5

    :goto_2
    if-eqz p1, :cond_a

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-static {p1, v7, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_8
    move-object v6, v5

    :goto_3
    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    move p1, v4

    goto :goto_6

    :cond_a
    :goto_5
    move p1, v3

    :goto_6
    if-eqz p1, :cond_b

    move v4, v3

    :cond_b
    if-nez v4, :cond_c

    return-object v0

    .line 19
    :cond_c
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Le/a/f3/r;->f:Le/a/f3/o;

    .line 20
    iget-object v2, v2, Le/a/f3/o;->g:Landroid/content/Context;

    .line 21
    sget v4, Lcom/truecaller/themes/R$style;->ThemeX_Dark:I

    invoke-direct {p1, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 22
    new-instance v2, Ls1/z/c/c0;

    invoke-direct {v2}, Ls1/z/c/c0;-><init>()V

    sget v4, Lcom/truecaller/callbubbles/R$layout;->call_bubbles_container:I

    invoke-static {p1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v4, "null cannot be cast to non-null type com.truecaller.callbubbles.CallBubblesContainerView"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    iput-object p1, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Le/a/f3/r;->f:Le/a/f3/o;

    .line 24
    iget-object p1, p1, Le/a/f3/o;->d:Ls1/w/f;

    .line 25
    new-instance v4, Le/a/f3/r$a;

    invoke-direct {v4, p0, v2, v5}, Le/a/f3/r$a;-><init>(Le/a/f3/r;Ls1/z/c/c0;Ls1/w/d;)V

    iput v3, p0, Le/a/f3/r;->e:I

    invoke-static {p1, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    :cond_d
    :goto_7
    return-object v0
.end method
