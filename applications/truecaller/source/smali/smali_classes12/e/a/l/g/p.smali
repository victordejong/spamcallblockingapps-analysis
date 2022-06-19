.class public final Le/a/l/g/p;
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
    c = "com.truecaller.premium.gift.GoldGiftDialogPresenter$onContactPicked$1"
    f = "GoldGiftDialogPresenter.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/l/g/o;

.field public final synthetic h:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Le/a/l/g/o;Landroid/net/Uri;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/g/p;->g:Le/a/l/g/o;

    iput-object p2, p0, Le/a/l/g/p;->h:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/g/p;

    iget-object v1, p0, Le/a/l/g/p;->g:Le/a/l/g/o;

    iget-object v2, p0, Le/a/l/g/p;->h:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p2}, Le/a/l/g/p;-><init>(Le/a/l/g/o;Landroid/net/Uri;Ls1/w/d;)V

    iput-object p1, v0, Le/a/l/g/p;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/g/p;

    iget-object v1, p0, Le/a/l/g/p;->g:Le/a/l/g/o;

    iget-object v2, p0, Le/a/l/g/p;->h:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p2}, Le/a/l/g/p;-><init>(Le/a/l/g/o;Landroid/net/Uri;Ls1/w/d;)V

    iput-object p1, v0, Le/a/l/g/p;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/l/g/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/g/p;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/l/g/p;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

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

    iget-object p1, p0, Le/a/l/g/p;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v1, p0, Le/a/l/g/p;->g:Le/a/l/g/o;

    .line 5
    iget-object v1, v1, Le/a/l/g/o;->j:Le/a/l/g/d;

    .line 6
    iget-object v3, p0, Le/a/l/g/p;->h:Landroid/net/Uri;

    iput-object p1, p0, Le/a/l/g/p;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/l/g/p;->f:I

    .line 7
    iget-object p1, v1, Le/a/l/g/d;->c:Ls1/w/f;

    new-instance v4, Le/a/l/g/c;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Le/a/l/g/c;-><init>(Le/a/l/g/d;Landroid/net/Uri;Ls1/w/d;)V

    invoke-static {p1, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Le/a/l/g/b;

    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p0, Le/a/l/g/p;->g:Le/a/l/g/o;

    .line 10
    iput-object p1, v0, Le/a/l/g/o;->e:Le/a/l/g/b;

    .line 11
    new-instance v1, Le/a/l/g/l$a;

    .line 12
    iget-object v3, v0, Le/a/l/g/o;->i:Le/a/p5/c0;

    const v4, 0x7f1202b5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 13
    iget-object v7, p1, Le/a/l/g/b;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 14
    iget-object p1, p1, Le/a/l/g/b;->b:Ljava/lang/String;

    aput-object p1, v5, v2

    .line 15
    invoke-interface {v3, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "resourceProvider.getStri\u2026ntactTitle, name, number)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/l/g/p;->g:Le/a/l/g/o;

    .line 16
    iget-object v2, v2, Le/a/l/g/o;->g:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 17
    invoke-direct {v1, p1, v2}, Le/a/l/g/l$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 18
    iput-object v1, v0, Le/a/l/g/o;->d:Le/a/l/g/l;

    .line 19
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/g/m;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Le/a/l/g/m;->du(Le/a/l/g/l;)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object p1, p0, Le/a/l/g/p;->g:Le/a/l/g/o;

    .line 21
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/g/m;

    if-eqz p1, :cond_4

    .line 22
    invoke-interface {p1}, Le/a/l/g/m;->Xo()V

    .line 23
    :cond_4
    iget-object p1, p0, Le/a/l/g/p;->g:Le/a/l/g/o;

    .line 24
    invoke-virtual {p1}, Le/a/l/g/o;->Jj()V

    .line 25
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
