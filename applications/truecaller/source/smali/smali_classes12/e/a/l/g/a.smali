.class public final Le/a/l/g/a;
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
    c = "com.truecaller.premium.gift.GoldGiftDialogPresenter$sendGift$1"
    f = "GoldGiftDialogPresenter.kt"
    l = {
        0x77
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/l/g/o;


# direct methods
.method public constructor <init>(Le/a/l/g/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

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

    new-instance p1, Le/a/l/g/a;

    iget-object v0, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    invoke-direct {p1, v0, p2}, Le/a/l/g/a;-><init>(Le/a/l/g/o;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/g/a;

    iget-object v0, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    invoke-direct {p1, v0, p2}, Le/a/l/g/a;-><init>(Le/a/l/g/o;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/g/a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/g/a;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/l/g/a;->f:Ljava/lang/Object;

    check-cast v0, Le/a/l/g/b;

    iget-object v1, p0, Le/a/l/g/a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/l/g/b;

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
    iget-object p1, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 5
    iget-object v1, p1, Le/a/l/g/o;->e:Le/a/l/g/b;

    if-eqz v1, :cond_10

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/g/m;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, v2}, Le/a/l/g/m;->f(Z)V

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 9
    iget-object p1, p1, Le/a/l/g/o;->k:Le/a/l/g/u;

    .line 10
    iget-object v3, v1, Le/a/l/g/b;->b:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Le/a/l/g/a;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/l/g/a;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/l/g/a;->g:I

    .line 12
    iget-object v4, p1, Le/a/l/g/u;->c:Ls1/w/f;

    new-instance v5, Le/a/l/g/v;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v3, v6}, Le/a/l/g/v;-><init>(Le/a/l/g/u;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, v1

    .line 13
    :goto_0
    check-cast p1, Le/a/l/g/u$a;

    .line 14
    sget-object v3, Le/a/l/g/u$a$i;->b:Le/a/l/g/u$a$i;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 15
    iget-object p1, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 16
    iget-object p1, p1, Le/a/l/g/o;->l:Le/a/l/c2;

    .line 17
    invoke-interface {p1, v2}, Le/a/l/c2;->b1(Z)V

    .line 18
    iget-object p1, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 19
    iget-object v3, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/l/g/m;

    if-eqz v3, :cond_4

    .line 20
    iget-object p1, p1, Le/a/l/g/o;->i:Le/a/p5/c0;

    const v5, 0x7f1202c2

    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    iget-object v0, v0, Le/a/l/g/b;->a:Ljava/lang/String;

    aput-object v0, v2, v4

    .line 22
    invoke-interface {p1, v5, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ng.GoldGiftSuccess, name)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p1}, Le/a/l/g/m;->Tk(Ljava/lang/String;)V

    .line 23
    :cond_4
    iget-object p1, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 24
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/g/m;

    if-eqz p1, :cond_f

    .line 25
    invoke-interface {p1}, Le/a/l/g/m;->dismiss()V

    goto/16 :goto_3

    .line 26
    :cond_5
    sget-object v3, Le/a/l/g/u$a$a;->b:Le/a/l/g/u$a$a;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "resourceProvider.getString(R.string.StrDismiss)"

    const v6, 0x7f12070a

    const-string v7, "resourceProvider.getStri\u2026tring.GoldGiftErrorTitle)"

    const v8, 0x7f1202b8

    if-eqz v3, :cond_6

    goto :goto_1

    .line 27
    :cond_6
    sget-object v3, Le/a/l/g/u$a$b;->b:Le/a/l/g/u$a$b;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    .line 28
    :cond_7
    sget-object v3, Le/a/l/g/u$a$d;->b:Le/a/l/g/u$a$d;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    .line 29
    :cond_8
    sget-object v3, Le/a/l/g/u$a$e;->b:Le/a/l/g/u$a$e;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    .line 30
    :cond_9
    sget-object v3, Le/a/l/g/u$a$h;->b:Le/a/l/g/u$a$h;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    .line 31
    :cond_a
    sget-object v3, Le/a/l/g/u$a$c;->b:Le/a/l/g/u$a$c;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 32
    :goto_1
    iget-object v0, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 33
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/g/m;

    if-eqz v0, :cond_b

    .line 34
    invoke-interface {v0, v4}, Le/a/l/g/m;->f(Z)V

    .line 35
    :cond_b
    iget-object v0, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 36
    new-instance v3, Le/a/l/g/l$b;

    .line 37
    iget-object v9, v0, Le/a/l/g/o;->i:Le/a/p5/c0;

    new-array v10, v4, [Ljava/lang/Object;

    .line 38
    invoke-interface {v9, v8, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v7, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 40
    iget-object v7, v7, Le/a/l/g/o;->i:Le/a/p5/c0;

    const v9, 0x7f1202b6

    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    iget-object p1, p1, Le/a/l/g/u$a;->a:Ljava/lang/String;

    aput-object p1, v2, v4

    .line 42
    invoke-interface {v7, v9, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "resourceProvider.getStri\u2026Code, result.description)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v2, Le/a/l/g/j;

    iget-object v7, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 44
    iget-object v7, v7, Le/a/l/g/o;->i:Le/a/p5/c0;

    new-array v9, v4, [Ljava/lang/Object;

    .line 45
    invoke-interface {v7, v6, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Le/a/l/g/a$a;

    invoke-direct {v5, v4, p0}, Le/a/l/g/a$a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v6, v5}, Le/a/l/g/j;-><init>(Ljava/lang/String;Ls1/z/b/a;)V

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 46
    invoke-direct {v3, v8, p1, v2}, Le/a/l/g/l$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 47
    iput-object v3, v0, Le/a/l/g/o;->d:Le/a/l/g/l;

    .line 48
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/g/m;

    if-eqz p1, :cond_f

    invoke-interface {p1, v3}, Le/a/l/g/m;->du(Le/a/l/g/l;)V

    goto/16 :goto_3

    .line 49
    :cond_c
    sget-object v3, Le/a/l/g/u$a$f;->b:Le/a/l/g/u$a$f;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_2

    .line 50
    :cond_d
    sget-object v3, Le/a/l/g/u$a$g;->b:Le/a/l/g/u$a$g;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 51
    :goto_2
    iget-object p1, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 52
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/g/m;

    if-eqz p1, :cond_e

    .line 53
    invoke-interface {p1, v4}, Le/a/l/g/m;->f(Z)V

    .line 54
    :cond_e
    iget-object p1, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 55
    new-instance v3, Le/a/l/g/l$b;

    .line 56
    iget-object v9, p1, Le/a/l/g/o;->i:Le/a/p5/c0;

    new-array v10, v4, [Ljava/lang/Object;

    .line 57
    invoke-interface {v9, v8, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v7, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 59
    iget-object v7, v7, Le/a/l/g/o;->i:Le/a/p5/c0;

    const v9, 0x7f1202b7

    new-array v10, v2, [Ljava/lang/Object;

    .line 60
    iget-object v0, v0, Le/a/l/g/b;->a:Ljava/lang/String;

    aput-object v0, v10, v4

    .line 61
    invoke-interface {v7, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "resourceProvider.getStri\u2026MessageWithoutCode, name)"

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    new-array v9, v7, [Le/a/l/g/j;

    .line 62
    new-instance v10, Le/a/l/g/j;

    iget-object v11, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 63
    iget-object v11, v11, Le/a/l/g/o;->i:Le/a/p5/c0;

    const v12, 0x7f12073c

    new-array v13, v4, [Ljava/lang/Object;

    .line 64
    invoke-interface {v11, v12, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "resourceProvider.getString(R.string.StrTryAgain)"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Le/a/l/g/a$a;

    invoke-direct {v12, v2, p0}, Le/a/l/g/a$a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v10, v11, v12}, Le/a/l/g/j;-><init>(Ljava/lang/String;Ls1/z/b/a;)V

    aput-object v10, v9, v4

    .line 65
    new-instance v10, Le/a/l/g/j;

    iget-object v11, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 66
    iget-object v11, v11, Le/a/l/g/o;->i:Le/a/p5/c0;

    new-array v4, v4, [Ljava/lang/Object;

    .line 67
    invoke-interface {v11, v6, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Le/a/l/g/a$a;

    invoke-direct {v5, v7, p0}, Le/a/l/g/a$a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v10, v4, v5}, Le/a/l/g/j;-><init>(Ljava/lang/String;Ls1/z/b/a;)V

    aput-object v10, v9, v2

    .line 68
    invoke-static {v9}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 69
    invoke-direct {v3, v8, v0, v2}, Le/a/l/g/l$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 70
    iput-object v3, p1, Le/a/l/g/o;->d:Le/a/l/g/l;

    .line 71
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/g/m;

    if-eqz p1, :cond_f

    invoke-interface {p1, v3}, Le/a/l/g/m;->du(Le/a/l/g/l;)V

    :cond_f
    :goto_3
    if-eqz v1, :cond_10

    goto :goto_4

    .line 72
    :cond_10
    iget-object p1, p0, Le/a/l/g/a;->h:Le/a/l/g/o;

    .line 73
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/g/m;

    if-eqz p1, :cond_11

    .line 74
    invoke-interface {p1}, Le/a/l/g/m;->Xo()V

    .line 75
    :cond_11
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
