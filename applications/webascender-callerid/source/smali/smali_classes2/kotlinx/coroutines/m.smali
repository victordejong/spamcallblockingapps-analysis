.class public final Lkotlinx/coroutines/m;
.super Lkotlinx/coroutines/c1;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/c1<",
        "Lkotlinx/coroutines/h1;",
        ">;",
        "Lkotlinx/coroutines/l;"
    }
.end annotation


# instance fields
.field public final j:Lkotlinx/coroutines/n;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/h1;Lkotlinx/coroutines/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/c1;-><init>(Lkotlinx/coroutines/b1;)V

    iput-object p2, p0, Lkotlinx/coroutines/m;->j:Lkotlinx/coroutines/n;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/g1;->i:Lkotlinx/coroutines/b1;

    check-cast v0, Lkotlinx/coroutines/h1;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/h1;->v(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m;->q(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public q(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/m;->j:Lkotlinx/coroutines/n;

    iget-object v0, p0, Lkotlinx/coroutines/g1;->i:Lkotlinx/coroutines/b1;

    check-cast v0, Lkotlinx/coroutines/o1;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/n;->i(Lkotlinx/coroutines/o1;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildHandle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/m;->j:Lkotlinx/coroutines/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
