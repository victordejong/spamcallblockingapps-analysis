.class public abstract Lkotlinx/coroutines/internal/l$a;
.super Lkotlinx/coroutines/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/c<",
        "Lkotlinx/coroutines/internal/l;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/internal/l;

.field public final c:Lkotlinx/coroutines/internal/l;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/c;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/l$a;->c:Lkotlinx/coroutines/internal/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/l;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/l$a;->h(Lkotlinx/coroutines/internal/l;Ljava/lang/Object;)V

    return-void
.end method

.method public h(Lkotlinx/coroutines/internal/l;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/l$a;->c:Lkotlinx/coroutines/internal/l;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/l$a;->b:Lkotlinx/coroutines/internal/l;

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lkotlinx/coroutines/internal/l;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/internal/l$a;->c:Lkotlinx/coroutines/internal/l;

    iget-object p2, p0, Lkotlinx/coroutines/internal/l$a;->b:Lkotlinx/coroutines/internal/l;

    invoke-static {p2}, Lkotlin/w/c/k;->d(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/l;->c(Lkotlinx/coroutines/internal/l;Lkotlinx/coroutines/internal/l;)V

    :cond_2
    return-void
.end method
