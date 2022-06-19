.class public final Le/a/l/k0;
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
    c = "com.truecaller.premium.PremiumBasePresenterImpl$purchaseInternal$2$2"
    f = "PremiumBasePresenter.kt"
    l = {
        0x1ff
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/e0$k;

.field public final synthetic g:Le/a/l/p2/p1;


# direct methods
.method public constructor <init>(Le/a/l/e0$k;Le/a/l/p2/p1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/k0;->f:Le/a/l/e0$k;

    iput-object p2, p0, Le/a/l/k0;->g:Le/a/l/p2/p1;

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

    new-instance p1, Le/a/l/k0;

    iget-object v0, p0, Le/a/l/k0;->f:Le/a/l/e0$k;

    iget-object v1, p0, Le/a/l/k0;->g:Le/a/l/p2/p1;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/k0;-><init>(Le/a/l/e0$k;Le/a/l/p2/p1;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/k0;

    iget-object v0, p0, Le/a/l/k0;->f:Le/a/l/e0$k;

    iget-object v1, p0, Le/a/l/k0;->g:Le/a/l/p2/p1;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/k0;-><init>(Le/a/l/e0$k;Le/a/l/p2/p1;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/k0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/k0;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p1, p0, Le/a/l/k0;->g:Le/a/l/p2/p1;

    check-cast p1, Le/a/l/p2/p1$d;

    .line 5
    iget-boolean p1, p1, Le/a/l/p2/p1$d;->a:Z

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Le/a/l/k0;->f:Le/a/l/e0$k;

    iget-object v3, p1, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 7
    iget-object v4, p1, Le/a/l/e0$k;->c:Le/a/l/n2/f;

    .line 8
    iget-object v5, v4, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 9
    iget-object v1, v3, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 10
    iget-object v7, v1, Le/a/l/p2/s1$b;->r:Ljava/util/List;

    goto :goto_0

    :cond_2
    move-object v7, v6

    :goto_0
    if-eqz v1, :cond_3

    .line 11
    iget-object v1, v1, Le/a/l/p2/s1$b;->i:Le/a/l/n2/f;

    goto :goto_1

    :cond_3
    move-object v1, v6

    .line 12
    :goto_1
    iget-object v8, p1, Le/a/l/e0$k;->d:Ljava/lang/String;

    move-object v6, v7

    move-object v7, v1

    .line 13
    invoke-static/range {v3 .. v8}, Le/a/l/e0;->Ij(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;Ljava/lang/String;)V

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/l/k0;->f:Le/a/l/e0$k;

    iget-object p1, p1, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 15
    iget-object p1, p1, Le/a/l/e0;->D:Le/a/l/p2/d1;

    .line 16
    iput v2, p0, Le/a/l/k0;->e:I

    invoke-interface {p1, p0}, Le/a/l/p2/d1;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 17
    :cond_5
    :goto_2
    iget-object p1, p0, Le/a/l/k0;->f:Le/a/l/e0$k;

    iget-object p1, p1, Le/a/l/e0$k;->b:Le/a/l/e0;

    invoke-virtual {p1, v2}, Le/a/l/e0;->ck(Z)V

    .line 18
    iget-object p1, p0, Le/a/l/k0;->f:Le/a/l/e0$k;

    iget-object p1, p1, Le/a/l/e0$k;->b:Le/a/l/e0;

    invoke-virtual {p1}, Le/a/l/e0;->Qj()V

    .line 19
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
