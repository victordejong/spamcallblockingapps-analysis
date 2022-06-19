.class public final Le/a/k/a/f/l;
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
    c = "com.truecaller.videocallerid.ui.preview.PreviewPresenter$onAttachView$1"
    f = "PreviewPresenter.kt"
    l = {
        0x34,
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/a/f/j;


# direct methods
.method public constructor <init>(Le/a/k/a/f/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/f/l;->f:Le/a/k/a/f/j;

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

    new-instance p1, Le/a/k/a/f/l;

    iget-object v0, p0, Le/a/k/a/f/l;->f:Le/a/k/a/f/j;

    invoke-direct {p1, v0, p2}, Le/a/k/a/f/l;-><init>(Le/a/k/a/f/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/a/f/l;

    iget-object v0, p0, Le/a/k/a/f/l;->f:Le/a/k/a/f/j;

    invoke-direct {p1, v0, p2}, Le/a/k/a/f/l;-><init>(Le/a/k/a/f/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/a/f/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/k/a/f/l;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/f/l;->f:Le/a/k/a/f/j;

    iput v5, p0, Le/a/k/a/f/l;->e:I

    .line 5
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/f/h;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Le/a/k/a/f/h;->d7()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    sget-object v6, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->ON_BOARDING:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/k/a/f/h;->Z9()V

    move-object p1, v0

    goto :goto_1

    :cond_4
    move-object p1, v3

    :goto_1
    if-ne p1, v1, :cond_6

    goto :goto_2

    .line 7
    :cond_5
    iget-object v2, p1, Le/a/k/a/f/j;->f:Le/a/k/p/b;

    new-instance v6, Le/a/k/a/f/k;

    invoke-direct {v6, p1, v3}, Le/a/k/a/f/k;-><init>(Le/a/k/a/f/j;Ls1/w/d;)V

    check-cast v2, Le/a/k/p/c;

    invoke-virtual {v2, p1, v6, p0}, Le/a/k/p/c;->a(Lq3/a/i0;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, v0

    :goto_2
    if-ne p1, v1, :cond_7

    return-object v1

    .line 8
    :cond_7
    :goto_3
    iget-object p1, p0, Le/a/k/a/f/l;->f:Le/a/k/a/f/j;

    .line 9
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/f/h;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Le/a/k/a/f/h;->d7()Ljava/lang/String;

    move-result-object v3

    :cond_8
    sget-object v2, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->ON_BOARDING:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 10
    iget-object p1, p1, Le/a/k/a/f/j;->g:Le/a/k/c/r0;

    invoke-interface {p1, v5}, Le/a/k/c/r0;->e(Z)V

    .line 11
    :cond_9
    iget-object p1, p0, Le/a/k/a/f/l;->f:Le/a/k/a/f/j;

    invoke-static {p1}, Le/a/k/a/f/j;->Ij(Le/a/k/a/f/j;)Z

    move-result v2

    iput v4, p0, Le/a/k/a/f/l;->e:I

    invoke-virtual {p1, v2, p0}, Le/a/k/a/f/j;->Oj(ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    return-object v0
.end method
