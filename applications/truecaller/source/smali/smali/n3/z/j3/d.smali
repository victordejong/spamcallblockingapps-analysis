.class public final synthetic Ln3/z/j3/d;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/p<",
        "Ln3/z/j3/c$c<",
        "TT;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln3/z/j3/c$a;)V
    .locals 7

    const-class v3, Ln3/z/j3/c$a;

    const/4 v1, 0x2

    const-string v4, "send"

    const-string v5, "send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ln3/z/j3/c$c;

    check-cast p2, Ls1/w/d;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Ln3/z/j3/c$a;

    .line 3
    invoke-virtual {v0, p1, p2}, Ln3/z/j3/k;->e(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
