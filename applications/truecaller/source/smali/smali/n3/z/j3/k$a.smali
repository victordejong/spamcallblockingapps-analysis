.class public final Ln3/z/j3/k$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/j3/k;-><init>(Lq3/a/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Object;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.multicast.StoreRealActor$1"
    f = "StoreRealActor.kt"
    l = {
        0x2d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/z/j3/k;


# direct methods
.method public constructor <init>(Ln3/z/j3/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/j3/k$a;->g:Ln3/z/j3/k;

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

    new-instance v0, Ln3/z/j3/k$a;

    iget-object v1, p0, Ln3/z/j3/k$a;->g:Ln3/z/j3/k;

    invoke-direct {v0, v1, p2}, Ln3/z/j3/k$a;-><init>(Ln3/z/j3/k;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/j3/k$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/j3/k$a;

    iget-object v1, p0, Ln3/z/j3/k$a;->g:Ln3/z/j3/k;

    invoke-direct {v0, v1, p2}, Ln3/z/j3/k$a;-><init>(Ln3/z/j3/k;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/j3/k$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/j3/k$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/j3/k$a;->f:I

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

    iget-object p1, p0, Ln3/z/j3/k$a;->e:Ljava/lang/Object;

    .line 4
    sget-object v1, Ln3/z/j3/k;->e:Ln3/z/j3/k;

    .line 5
    sget-object v1, Ln3/z/j3/k;->d:Ljava/lang/Object;

    sget-object v1, Ln3/z/j3/k;->d:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    .line 6
    iget-object p1, p0, Ln3/z/j3/k$a;->g:Ln3/z/j3/k;

    invoke-static {p1}, Ln3/z/j3/k;->a(Ln3/z/j3/k;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Ln3/z/j3/k$a;->g:Ln3/z/j3/k;

    iput v2, p0, Ln3/z/j3/k$a;->f:I

    invoke-virtual {v1, p1, p0}, Ln3/z/j3/k;->c(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
