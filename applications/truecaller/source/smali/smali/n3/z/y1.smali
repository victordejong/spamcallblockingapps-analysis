.class public final synthetic Ln3/z/y1;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ln3/z/k2<",
        "TKey;TValue;>;>;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/b/a;)V
    .locals 7

    const-class v3, Ln3/z/d3;

    const/4 v1, 0x1

    const-string v4, "create"

    const-string v5, "create(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Ls1/z/b/a;

    check-cast v0, Ln3/z/d3;

    .line 3
    iget-object v1, v0, Ln3/z/d3;->a:Lq3/a/g0;

    new-instance v2, Ln3/z/c3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ln3/z/c3;-><init>(Ln3/z/d3;Ls1/w/d;)V

    invoke-static {v1, v2, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
