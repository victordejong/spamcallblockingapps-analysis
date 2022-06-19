.class public abstract Ln3/z/j3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/Object;

.field public static final e:Ln3/z/j3/k;


# instance fields
.field public final a:Lq3/a/w2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/z/j3/k;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq3/a/i0;)V
    .locals 4

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 2
    invoke-static {v0, v1, v1, v2}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object v2

    iput-object v2, p0, Ln3/z/j3/k;->a:Lq3/a/w2/j;

    const/4 v3, 0x1

    .line 3
    invoke-static {v1, v3}, Ls1/a/a/a/v0/f/d;->g(Lq3/a/p1;I)Lq3/a/w;

    move-result-object v3

    iput-object v3, p0, Ln3/z/j3/k;->b:Lq3/a/w;

    .line 4
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Ln3/z/j3/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->l0(Lq3/a/w2/z;)Lq3/a/x2/f;

    move-result-object v0

    .line 6
    new-instance v2, Ln3/z/j3/k$a;

    invoke-direct {v2, p0, v1}, Ln3/z/j3/k$a;-><init>(Ln3/z/j3/k;Ls1/w/d;)V

    .line 7
    new-instance v3, Lq3/a/x2/u0;

    invoke-direct {v3, v0, v2}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 8
    new-instance v0, Ln3/z/j3/k$b;

    invoke-direct {v0, p0, v1}, Ln3/z/j3/k$b;-><init>(Ln3/z/j3/k;Ls1/w/d;)V

    .line 9
    new-instance v1, Lq3/a/x2/s;

    invoke-direct {v1, v3, v0}, Lq3/a/x2/s;-><init>(Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 10
    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    return-void
.end method

.method public static final a(Ln3/z/j3/k;)V
    .locals 5

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    iget-object v1, p0, Ln3/z/j3/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ln3/z/j3/k;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v2, p0, Ln3/z/j3/k;->a:Lq3/a/w2/j;

    invoke-static {v2, v1, v3, v1}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 4
    iget-object p0, p0, Ln3/z/j3/k;->b:Lq3/a/w;

    invoke-interface {p0, v0}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 5
    iget-object v4, p0, Ln3/z/j3/k;->a:Lq3/a/w2/j;

    invoke-static {v4, v1, v3, v1}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 6
    iget-object p0, p0, Ln3/z/j3/k;->b:Lq3/a/w;

    invoke-interface {p0, v0}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    throw v2

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Ln3/z/j3/k$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ln3/z/j3/k$c;

    iget v1, v0, Ln3/z/j3/k$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/j3/k$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/j3/k$c;

    invoke-direct {v0, p0, p1}, Ln3/z/j3/k$c;-><init>(Ln3/z/j3/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Ln3/z/j3/k$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/j3/k$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Ln3/z/j3/k$c;->g:Ljava/lang/Object;

    check-cast v2, Ln3/z/j3/k;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Ln3/z/j3/k;->a:Lq3/a/w2/j;

    sget-object v2, Ln3/z/j3/k;->d:Ljava/lang/Object;

    iput-object p0, v0, Ln3/z/j3/k$c;->g:Ljava/lang/Object;

    iput v4, v0, Ln3/z/j3/k$c;->e:I

    invoke-interface {p1, v2, v0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p1, v2, Ln3/z/j3/k;->b:Lq3/a/w;

    const/4 v2, 0x0

    iput-object v2, v0, Ln3/z/j3/k$c;->g:Ljava/lang/Object;

    iput v3, v0, Ln3/z/j3/k$c;->e:I

    invoke-interface {p1, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public abstract c(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/j3/k;->a:Lq3/a/w2/j;

    invoke-interface {v0, p1, p2}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
