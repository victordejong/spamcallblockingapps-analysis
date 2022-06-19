.class public final Le/a/f/y/o$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/y/o;->Lj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/f/w/f;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.service.InCallUIServicePresenter$listenToCallerInfoChanges$1"
    f = "InCallUIServicePresenter.kt"
    l = {
        0x105
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/y/o;


# direct methods
.method public constructor <init>(Le/a/f/y/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/o$b;->g:Le/a/f/y/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/y/o$b;

    iget-object v1, p0, Le/a/f/y/o$b;->g:Le/a/f/y/o;

    invoke-direct {v0, v1, p2}, Le/a/f/y/o$b;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/y/o$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/y/o$b;

    iget-object v1, p0, Le/a/f/y/o$b;->g:Le/a/f/y/o;

    invoke-direct {v0, v1, p2}, Le/a/f/y/o$b;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/y/o$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/y/o$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/y/o$b;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    iget-object p1, p0, Le/a/f/y/o$b;->e:Ljava/lang/Object;

    check-cast p1, Le/a/f/w/f;

    .line 4
    instance-of v1, p1, Le/a/f/w/f$b;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 5
    iget-object v4, p0, Le/a/f/y/o$b;->g:Le/a/f/y/o;

    check-cast p1, Le/a/f/w/f$b;

    .line 6
    iget-object v1, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 7
    iget-object v5, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/f/y/k;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Le/a/f/y/k;->r()Landroid/telecom/Call;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 8
    invoke-virtual {v5}, Landroid/telecom/Call;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 9
    new-instance v8, Le/a/f/y/m;

    invoke-direct {v8, v4, v1, v5, v3}, Le/a/f/y/m;-><init>(Le/a/f/y/o;Le/a/f/a/g;Landroid/telecom/Call;Ls1/w/d;)V

    const/4 v1, 0x3

    const/4 v9, 0x0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v1

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 10
    :cond_3
    :goto_0
    iget-object v1, p0, Le/a/f/y/o$b;->g:Le/a/f/y/o;

    .line 11
    iget-object v3, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 12
    iget-object v3, v3, Le/a/f/a/g;->a:Ljava/lang/String;

    .line 13
    invoke-static {v1, v3}, Le/a/f/y/o;->Jj(Le/a/f/y/o;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Le/a/f/y/o$b;->g:Le/a/f/y/o;

    .line 15
    iget-object v3, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 16
    invoke-static {v1, v3}, Le/a/f/y/o;->Ij(Le/a/f/y/o;Le/a/f/a/g;)V

    .line 17
    iget-object v1, p0, Le/a/f/y/o$b;->g:Le/a/f/y/o;

    .line 18
    iget-object p1, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 19
    iput v2, p0, Le/a/f/y/o$b;->f:I

    invoke-virtual {v1, p1, p0}, Le/a/f/y/o;->Sj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 20
    :cond_4
    iget-object p1, p0, Le/a/f/y/o$b;->g:Le/a/f/y/o;

    .line 21
    invoke-virtual {p1}, Le/a/f/y/o;->Rj()V

    .line 22
    iget-object p1, p0, Le/a/f/y/o$b;->g:Le/a/f/y/o;

    invoke-static {p1, v3}, Le/a/f/y/o;->Ij(Le/a/f/y/o;Le/a/f/a/g;)V

    .line 23
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
