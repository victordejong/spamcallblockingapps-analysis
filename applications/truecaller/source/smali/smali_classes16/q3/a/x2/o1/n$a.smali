.class public final Lq3/a/x2/o1/n$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/x2/o1/n;->s(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1"
    f = "Combine.kt"
    l = {
        0x93
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:[Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic g:I

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic i:Lq3/a/w2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/j<",
            "Ls1/u/w<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lq3/a/x2/f;ILjava/util/concurrent/atomic/AtomicInteger;Lq3/a/w2/j;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lq3/a/x2/f<",
            "+TT;>;I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lq3/a/w2/j<",
            "Ls1/u/w<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/o1/n$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/x2/o1/n$a;->f:[Lq3/a/x2/f;

    iput p2, p0, Lq3/a/x2/o1/n$a;->g:I

    iput-object p3, p0, Lq3/a/x2/o1/n$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lq3/a/x2/o1/n$a;->i:Lq3/a/w2/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Lq3/a/x2/o1/n$a;

    iget-object v1, p0, Lq3/a/x2/o1/n$a;->f:[Lq3/a/x2/f;

    iget v2, p0, Lq3/a/x2/o1/n$a;->g:I

    iget-object v3, p0, Lq3/a/x2/o1/n$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lq3/a/x2/o1/n$a;->i:Lq3/a/w2/j;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lq3/a/x2/o1/n$a;-><init>([Lq3/a/x2/f;ILjava/util/concurrent/atomic/AtomicInteger;Lq3/a/w2/j;Ls1/w/d;)V

    return-object p1
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lq3/a/i0;

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    .line 1
    new-instance p1, Lq3/a/x2/o1/n$a;

    iget-object v1, p0, Lq3/a/x2/o1/n$a;->f:[Lq3/a/x2/f;

    iget v2, p0, Lq3/a/x2/o1/n$a;->g:I

    iget-object v3, p0, Lq3/a/x2/o1/n$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lq3/a/x2/o1/n$a;->i:Lq3/a/w2/j;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lq3/a/x2/o1/n$a;-><init>([Lq3/a/x2/f;ILjava/util/concurrent/atomic/AtomicInteger;Lq3/a/w2/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lq3/a/x2/o1/n$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lq3/a/x2/o1/n$a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    iget-object p1, p0, Lq3/a/x2/o1/n$a;->f:[Lq3/a/x2/f;

    iget v1, p0, Lq3/a/x2/o1/n$a;->g:I

    aget-object p1, p1, v1

    iget-object v4, p0, Lq3/a/x2/o1/n$a;->i:Lq3/a/w2/j;

    .line 5
    new-instance v5, Lq3/a/x2/o1/n$a$a;

    invoke-direct {v5, v4, v1}, Lq3/a/x2/o1/n$a$a;-><init>(Lq3/a/w2/j;I)V

    iput v3, p0, Lq3/a/x2/o1/n$a;->e:I

    invoke-interface {p1, v5, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lq3/a/x2/o1/n$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lq3/a/x2/o1/n$a;->i:Lq3/a/w2/j;

    invoke-static {p1, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 8
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lq3/a/x2/o1/n$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lq3/a/x2/o1/n$a;->i:Lq3/a/w2/j;

    invoke-static {v0, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    :cond_4
    throw p1
.end method
