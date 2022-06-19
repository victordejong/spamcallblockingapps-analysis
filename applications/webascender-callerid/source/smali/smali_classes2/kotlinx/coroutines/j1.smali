.class final Lkotlinx/coroutines/j1;
.super Lkotlinx/coroutines/p1;
.source "SourceFile"


# instance fields
.field private final i:Lkotlin/u/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/u/d<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/u/g;Lkotlin/w/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/g;",
            "Lkotlin/w/b/p<",
            "-",
            "Lkotlinx/coroutines/c0;",
            "-",
            "Lkotlin/u/d<",
            "-",
            "Lkotlin/r;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/p1;-><init>(Lkotlin/u/g;Z)V

    .line 2
    invoke-static {p2, p0, p0}, Lkotlin/u/i/b;->b(Lkotlin/w/b/p;Ljava/lang/Object;Lkotlin/u/d;)Lkotlin/u/d;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/j1;->i:Lkotlin/u/d;

    return-void
.end method


# virtual methods
.method protected r0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/j1;->i:Lkotlin/u/d;

    invoke-static {v0, p0}, Lkotlinx/coroutines/w1/a;->a(Lkotlin/u/d;Lkotlin/u/d;)V

    return-void
.end method
