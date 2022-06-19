.class public final Ln3/z/j3/i$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/j3/i$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-TT;>;",
        "Ljava/lang/Throwable;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.multicast.SharedFlowProducer$collectionJob$1$1"
    f = "SharedFlowProducer.kt"
    l = {
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/z/j3/i$a;


# direct methods
.method public constructor <init>(Ln3/z/j3/i$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/j3/i$a$a;->g:Ln3/z/j3/i$a;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lq3/a/x2/g;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Ls1/w/d;

    const-string v0, "$this$create"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "continuation"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/j3/i$a$a;

    iget-object v0, p0, Ln3/z/j3/i$a$a;->g:Ln3/z/j3/i$a;

    invoke-direct {p1, v0, p3}, Ln3/z/j3/i$a$a;-><init>(Ln3/z/j3/i$a;Ls1/w/d;)V

    iput-object p2, p1, Ln3/z/j3/i$a$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/j3/i$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/j3/i$a$a;->f:I

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

    iget-object p1, p0, Ln3/z/j3/i$a$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    .line 4
    iget-object v1, p0, Ln3/z/j3/i$a$a;->g:Ln3/z/j3/i$a;

    iget-object v1, v1, Ln3/z/j3/i$a;->f:Ln3/z/j3/i;

    .line 5
    iget-object v1, v1, Ln3/z/j3/i;->d:Ls1/z/b/p;

    .line 6
    new-instance v3, Ln3/z/j3/c$c$b$a;

    invoke-direct {v3, p1}, Ln3/z/j3/c$c$b$a;-><init>(Ljava/lang/Throwable;)V

    iput v2, p0, Ln3/z/j3/i$a$a;->f:I

    invoke-interface {v1, v3, p0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
