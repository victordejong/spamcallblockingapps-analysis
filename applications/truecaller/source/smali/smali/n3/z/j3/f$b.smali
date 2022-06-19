.class public final Ln3/z/j3/f$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/j3/f;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Ln3/z/j3/c$c$b$c<",
        "TT;>;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.multicast.Multicaster$flow$1$subFlow$1"
    f = "Multicaster.kt"
    l = {
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ln3/z/j3/f;

.field public final synthetic g:Lq3/a/w2/j;


# direct methods
.method public constructor <init>(Ln3/z/j3/f;Lq3/a/w2/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/j3/f$b;->f:Ln3/z/j3/f;

    iput-object p2, p0, Ln3/z/j3/f$b;->g:Lq3/a/w2/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/j3/f$b;

    iget-object v0, p0, Ln3/z/j3/f$b;->f:Ln3/z/j3/f;

    iget-object v1, p0, Ln3/z/j3/f$b;->g:Lq3/a/w2/j;

    invoke-direct {p1, v0, v1, p2}, Ln3/z/j3/f$b;-><init>(Ln3/z/j3/f;Lq3/a/w2/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/j3/f$b;

    iget-object v0, p0, Ln3/z/j3/f$b;->f:Ln3/z/j3/f;

    iget-object v1, p0, Ln3/z/j3/f$b;->g:Lq3/a/w2/j;

    invoke-direct {p1, v0, v1, p2}, Ln3/z/j3/f$b;-><init>(Ln3/z/j3/f;Lq3/a/w2/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/j3/f$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Ln3/z/j3/f$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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

    .line 4
    iget-object p1, p0, Ln3/z/j3/f$b;->f:Ln3/z/j3/f;

    iget-object p1, p1, Ln3/z/j3/f;->g:Ln3/z/j3/g;

    .line 5
    iget-object p1, p1, Ln3/z/j3/g;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/j3/c;

    .line 6
    iget-object v2, p0, Ln3/z/j3/f$b;->g:Lq3/a/w2/j;

    iput v3, p0, Ln3/z/j3/f$b;->e:I

    .line 7
    iget-object p1, p1, Ln3/z/j3/c;->a:Ln3/z/j3/c$a;

    new-instance v3, Ln3/z/j3/c$c$a;

    invoke-direct {v3, v2}, Ln3/z/j3/c$c$a;-><init>(Lq3/a/w2/d0;)V

    invoke-virtual {p1, v3, p0}, Ln3/z/j3/k;->e(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method
