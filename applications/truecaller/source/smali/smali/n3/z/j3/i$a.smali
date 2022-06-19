.class public final Ln3/z/j3/i$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/j3/i;-><init>(Lq3/a/i0;Lq3/a/x2/f;Ls1/z/b/p;)V
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
    c = "androidx.paging.multicast.SharedFlowProducer$collectionJob$1"
    f = "SharedFlowProducer.kt"
    l = {
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ln3/z/j3/i;


# direct methods
.method public constructor <init>(Ln3/z/j3/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/j3/i$a;->f:Ln3/z/j3/i;

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

    new-instance p1, Ln3/z/j3/i$a;

    iget-object v0, p0, Ln3/z/j3/i$a;->f:Ln3/z/j3/i;

    invoke-direct {p1, v0, p2}, Ln3/z/j3/i$a;-><init>(Ln3/z/j3/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/j3/i$a;

    iget-object v0, p0, Ln3/z/j3/i$a;->f:Ln3/z/j3/i;

    invoke-direct {p1, v0, p2}, Ln3/z/j3/i$a;-><init>(Ln3/z/j3/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/j3/i$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/j3/i$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq3/a/w2/q; {:try_start_0 .. :try_end_0} :catch_0

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
    :try_start_1
    iget-object p1, p0, Ln3/z/j3/i$a;->f:Ln3/z/j3/i;

    .line 5
    iget-object p1, p1, Ln3/z/j3/i;->c:Lq3/a/x2/f;

    .line 6
    new-instance v1, Ln3/z/j3/i$a$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Ln3/z/j3/i$a$a;-><init>(Ln3/z/j3/i$a;Ls1/w/d;)V

    .line 7
    new-instance v3, Lq3/a/x2/u;

    invoke-direct {v3, p1, v1}, Lq3/a/x2/u;-><init>(Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 8
    new-instance p1, Ln3/z/j3/i$a$b;

    invoke-direct {p1, p0}, Ln3/z/j3/i$a$b;-><init>(Ln3/z/j3/i$a;)V

    iput v2, p0, Ln3/z/j3/i$a;->e:I

    invoke-virtual {v3, p1, p0}, Lq3/a/x2/u;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lq3/a/w2/q; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :catch_0
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
