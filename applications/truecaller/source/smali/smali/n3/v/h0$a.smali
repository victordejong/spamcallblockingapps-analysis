.class public final Ln3/v/h0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/v/h0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
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
    c = "androidx.lifecycle.LiveDataScopeImpl$emit$2"
    f = "CoroutineLiveData.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Lq3/a/i0;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Ln3/v/h0;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln3/v/h0;Ljava/lang/Object;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/v/h0$a;->h:Ln3/v/h0;

    iput-object p2, p0, Ln3/v/h0$a;->i:Ljava/lang/Object;

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

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/h0$a;

    iget-object v1, p0, Ln3/v/h0$a;->h:Ln3/v/h0;

    iget-object v2, p0, Ln3/v/h0$a;->i:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p2}, Ln3/v/h0$a;-><init>(Ln3/v/h0;Ljava/lang/Object;Ls1/w/d;)V

    check-cast p1, Lq3/a/i0;

    iput-object p1, v0, Ln3/v/h0$a;->e:Lq3/a/i0;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/h0$a;

    iget-object v1, p0, Ln3/v/h0$a;->h:Ln3/v/h0;

    iget-object v2, p0, Ln3/v/h0$a;->i:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p2}, Ln3/v/h0$a;-><init>(Ln3/v/h0;Ljava/lang/Object;Ls1/w/d;)V

    check-cast p1, Lq3/a/i0;

    iput-object p1, v0, Ln3/v/h0$a;->e:Lq3/a/i0;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/v/h0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/v/h0$a;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ln3/v/h0$a;->f:Ljava/lang/Object;

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

    iget-object p1, p0, Ln3/v/h0$a;->e:Lq3/a/i0;

    .line 4
    iget-object v1, p0, Ln3/v/h0$a;->h:Ln3/v/h0;

    .line 5
    iget-object v1, v1, Ln3/v/h0;->b:Ln3/v/h;

    .line 6
    iput-object p1, p0, Ln3/v/h0$a;->f:Ljava/lang/Object;

    iput v2, p0, Ln3/v/h0$a;->g:I

    invoke-virtual {v1, p0}, Ln3/v/h;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Ln3/v/h0$a;->h:Ln3/v/h0;

    .line 8
    iget-object p1, p1, Ln3/v/h0;->b:Ln3/v/h;

    .line 9
    iget-object v0, p0, Ln3/v/h0$a;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
