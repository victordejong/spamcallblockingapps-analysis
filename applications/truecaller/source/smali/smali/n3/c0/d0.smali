.class public final Ln3/c0/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/w/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/c0/d0$a;
    }
.end annotation


# static fields
.field public static final d:Ln3/c0/d0$a;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Lq3/a/p1;

.field public final c:Ls1/w/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln3/c0/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/c0/d0$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ln3/c0/d0;->d:Ln3/c0/d0$a;

    return-void
.end method

.method public constructor <init>(Lq3/a/p1;Ls1/w/e;)V
    .locals 1

    const-string v0, "transactionThreadControlJob"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionDispatcher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/c0/d0;->b:Lq3/a/p1;

    iput-object p2, p0, Ln3/c0/d0;->c:Ls1/w/e;

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ln3/c0/d0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/c0/d0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/c0/d0;->b:Lq3/a/p1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transaction was never started or was already released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fold(Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ls1/z/b/p<",
            "-TR;-",
            "Ls1/w/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Ls1/w/f$a$a;->a(Ls1/w/f$a;Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ls1/w/f$b;)Ls1/w/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ls1/w/f$a;",
            ">(",
            "Ls1/w/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/w/f$a$a;->b(Ls1/w/f$a;Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ls1/w/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/w/f$b<",
            "Ln3/c0/d0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/c0/d0;->d:Ln3/c0/d0$a;

    return-object v0
.end method

.method public minusKey(Ls1/w/f$b;)Ls1/w/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f$b<",
            "*>;)",
            "Ls1/w/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/w/f$a$a;->c(Ls1/w/f$a;Ls1/w/f$b;)Ls1/w/f;

    move-result-object p1

    return-object p1
.end method

.method public plus(Ls1/w/f;)Ls1/w/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/w/f$a$a;->d(Ls1/w/f$a;Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    return-object p1
.end method
