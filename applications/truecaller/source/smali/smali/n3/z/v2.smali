.class public final Ln3/z/v2;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "TT;TT;",
        "Ls1/w/d<",
        "-TR;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.SeparatorsKt$insertEventSeparators$separatorState$1"
    f = "Separators.kt"
    l = {
        0x23f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Ls1/z/b/q;


# direct methods
.method public constructor <init>(Ls1/z/b/q;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/v2;->h:Ls1/z/b/q;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p3, Ls1/w/d;

    const-string v0, "continuation"

    .line 1
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/v2;

    iget-object v1, p0, Ln3/z/v2;->h:Ls1/z/b/q;

    invoke-direct {v0, v1, p3}, Ln3/z/v2;-><init>(Ls1/z/b/q;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/v2;->e:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/v2;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/v2;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/v2;->g:I

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

    iget-object p1, p0, Ln3/z/v2;->e:Ljava/lang/Object;

    iget-object v1, p0, Ln3/z/v2;->f:Ljava/lang/Object;

    .line 4
    iget-object v3, p0, Ln3/z/v2;->h:Ls1/z/b/q;

    const/4 v4, 0x0

    iput-object v4, p0, Ln3/z/v2;->e:Ljava/lang/Object;

    iput v2, p0, Ln3/z/v2;->g:I

    invoke-interface {v3, p1, v1, p0}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
