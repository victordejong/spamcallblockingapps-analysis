.class public final Le/a/e/t0;
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
    c = "com.truecaller.ui.FeedbackFormCoroutinesHelper$feedbackAsync$1"
    f = "FeedbackFormCoroutinesHelper.kt"
    l = {
        0x19,
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/e/u0;

.field public final synthetic h:Z

.field public final synthetic i:Ls1/z/b/l;

.field public final synthetic j:Ljava/lang/CharSequence;

.field public final synthetic k:Ljava/lang/CharSequence;

.field public final synthetic l:Ljava/lang/CharSequence;

.field public final synthetic m:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Le/a/e/u0;ZLs1/z/b/l;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/t0;->g:Le/a/e/u0;

    iput-boolean p2, p0, Le/a/e/t0;->h:Z

    iput-object p3, p0, Le/a/e/t0;->i:Ls1/z/b/l;

    iput-object p4, p0, Le/a/e/t0;->j:Ljava/lang/CharSequence;

    iput-object p5, p0, Le/a/e/t0;->k:Ljava/lang/CharSequence;

    iput-object p6, p0, Le/a/e/t0;->l:Ljava/lang/CharSequence;

    iput-object p7, p0, Le/a/e/t0;->m:Ljava/lang/CharSequence;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
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

    new-instance p1, Le/a/e/t0;

    iget-object v1, p0, Le/a/e/t0;->g:Le/a/e/u0;

    iget-boolean v2, p0, Le/a/e/t0;->h:Z

    iget-object v3, p0, Le/a/e/t0;->i:Ls1/z/b/l;

    iget-object v4, p0, Le/a/e/t0;->j:Ljava/lang/CharSequence;

    iget-object v5, p0, Le/a/e/t0;->k:Ljava/lang/CharSequence;

    iget-object v6, p0, Le/a/e/t0;->l:Ljava/lang/CharSequence;

    iget-object v7, p0, Le/a/e/t0;->m:Ljava/lang/CharSequence;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Le/a/e/t0;-><init>(Le/a/e/u0;ZLs1/z/b/l;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/e/t0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/e/t0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/t0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e/t0;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/e/t0;->e:Ljava/lang/Object;

    check-cast v0, Ls1/z/b/l;

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Le/a/e/t0;->h:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/e/t0;->g:Le/a/e/u0;

    .line 5
    iget-object p1, p1, Le/a/e/u0;->b:Le/a/l/a/z;

    .line 6
    iput v3, p0, Le/a/e/t0;->f:I

    invoke-virtual {p1, p0}, Le/a/l/a/z;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    move-object v9, p1

    .line 7
    iget-object p1, p0, Le/a/e/t0;->i:Ls1/z/b/l;

    .line 8
    iget-object v1, p0, Le/a/e/t0;->g:Le/a/e/u0;

    .line 9
    iget-object v3, v1, Le/a/e/u0;->a:Le/a/v3/c/a;

    .line 10
    iget-object v4, p0, Le/a/e/t0;->j:Ljava/lang/CharSequence;

    .line 11
    iget-object v5, p0, Le/a/e/t0;->k:Ljava/lang/CharSequence;

    .line 12
    iget-object v6, p0, Le/a/e/t0;->l:Ljava/lang/CharSequence;

    .line 13
    iget-object v7, p0, Le/a/e/t0;->m:Ljava/lang/CharSequence;

    .line 14
    iget-object v1, v1, Le/a/e/u0;->b:Le/a/l/a/z;

    .line 15
    invoke-virtual {v1}, Le/a/l/a/z;->h()Ljava/lang/String;

    move-result-object v8

    .line 16
    iput-object p1, p0, Le/a/e/t0;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/e/t0;->f:I

    move-object v10, p0

    .line 17
    invoke-interface/range {v3 .. v10}, Le/a/v3/c/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v1

    .line 18
    :goto_2
    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
