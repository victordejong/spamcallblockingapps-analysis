.class public final Le/a/c/a/m/c/c0$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/c0$b;->onClick(Landroid/view/View;)V
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
    c = "com.truecaller.insights.ui.qa.view.TotalSmartCardsShownQaFragment$onViewCreated$1$1"
    f = "TotalSmartCardsShownQaFragment.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:J

.field public f:I

.field public final synthetic g:Le/a/c/a/m/c/c0$b;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/c0$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/c0$b$a;->g:Le/a/c/a/m/c/c0$b;

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

    new-instance p1, Le/a/c/a/m/c/c0$b$a;

    iget-object v0, p0, Le/a/c/a/m/c/c0$b$a;->g:Le/a/c/a/m/c/c0$b;

    invoke-direct {p1, v0, p2}, Le/a/c/a/m/c/c0$b$a;-><init>(Le/a/c/a/m/c/c0$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/c/c0$b$a;

    iget-object v0, p0, Le/a/c/a/m/c/c0$b$a;->g:Le/a/c/a/m/c/c0$b;

    invoke-direct {p1, v0, p2}, Le/a/c/a/m/c/c0$b$a;-><init>(Le/a/c/a/m/c/c0$b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/c/c0$b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/m/c/c0$b$a;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Le/a/c/a/m/c/c0$b$a;->e:J

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
    new-instance p1, Lw3/b/a/b;

    const/16 v4, 0x7e5

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lw3/b/a/b;-><init>(IIIII)V

    invoke-virtual {p1}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object p1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 6
    iget-object v1, p0, Le/a/c/a/m/c/c0$b$a;->g:Le/a/c/a/m/c/c0$b;

    iget-object v1, v1, Le/a/c/a/m/c/c0$b;->a:Le/a/c/a/m/c/c0;

    .line 7
    iget-object v1, v1, Le/a/c/a/m/c/c0;->c:Le/a/c/a/i/d;

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    const-string v6, "date"

    .line 8
    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-wide v3, p0, Le/a/c/a/m/c/c0$b$a;->e:J

    iput v2, p0, Le/a/c/a/m/c/c0$b$a;->f:I

    .line 9
    iget-object v2, v1, Le/a/c/a/i/k;->a:Ls1/w/f;

    new-instance v6, Le/a/c/a/i/k$a;

    invoke-direct {v6, v1, p1, v5}, Le/a/c/a/i/k$a;-><init>(Le/a/c/a/i/k;Ljava/lang/Object;Ls1/w/d;)V

    invoke-static {v2, v6, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-wide v0, v3

    .line 10
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 11
    iget-object p1, p0, Le/a/c/a/m/c/c0$b$a;->g:Le/a/c/a/m/c/c0$b;

    iget-object p1, p1, Le/a/c/a/m/c/c0$b;->a:Le/a/c/a/m/c/c0;

    .line 12
    sget-object v0, Le/a/c/a/m/c/c0;->d:[Ls1/a/l;

    .line 13
    invoke-virtual {p1, v2, v3}, Le/a/c/a/m/c/c0;->PA(J)V

    .line 14
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_3
    const-string p1, "smartCardsCountUseCase"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5
.end method
