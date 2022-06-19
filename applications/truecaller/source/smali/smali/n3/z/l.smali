.class public final Ln3/z/l;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Ln3/z/w0<",
        "TT;>;",
        "Ln3/z/w0<",
        "TT;>;",
        "Ls1/w/d<",
        "-",
        "Ln3/z/w0<",
        "TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.CachedPagingDataKt$cachedIn$multicastedFlow$2"
    f = "CachedPagingData.kt"
    l = {
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ln3/z/w0;

    check-cast p2, Ln3/z/w0;

    check-cast p3, Ls1/w/d;

    const-string v0, "prev"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/l;

    invoke-direct {v0, p3}, Ln3/z/l;-><init>(Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/l;->e:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/l;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/l;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ln3/z/l;->e:Ljava/lang/Object;

    check-cast v0, Ln3/z/w0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/z/l;->e:Ljava/lang/Object;

    check-cast p1, Ln3/z/w0;

    iget-object v1, p0, Ln3/z/l;->f:Ljava/lang/Object;

    check-cast v1, Ln3/z/w0;

    .line 4
    iput-object v1, p0, Ln3/z/l;->e:Ljava/lang/Object;

    iput v2, p0, Ln3/z/l;->g:I

    .line 5
    iget-object p1, p1, Ln3/z/w0;->a:Ln3/z/h;

    .line 6
    iget-object p1, p1, Ln3/z/h;->c:Ln3/z/j3/g;

    .line 7
    sget-object v2, Ls1/s;->a:Ls1/s;

    iget-object p1, p1, Ln3/z/j3/g;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/j3/c;

    .line 8
    iget-object p1, p1, Ln3/z/j3/c;->a:Ln3/z/j3/c$a;

    invoke-virtual {p1, p0}, Ln3/z/j3/k;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v2

    :goto_2
    if-ne p1, v0, :cond_5

    move-object v2, p1

    :cond_5
    if-ne v2, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, v1

    :goto_3
    return-object v0
.end method
