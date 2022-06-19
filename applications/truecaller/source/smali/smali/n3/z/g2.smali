.class public abstract Ln3/z/g2;
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


# instance fields
.field public a:Ln3/z/o1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/o1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ln3/z/h3;

.field public final c:Ln3/z/x0;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ls1/z/b/l<",
            "Ln3/z/q;",
            "Ls1/s;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ln3/z/a3;

.field public volatile f:Z

.field public volatile g:I

.field public final h:Ln3/z/g2$b;

.field public final i:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ln3/z/q;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ln3/z/x;

.field public final k:Lq3/a/g0;


# direct methods
.method public constructor <init>(Ln3/z/x;Lq3/a/g0;)V
    .locals 3

    const-string v0, "differCallback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/g2;->j:Ln3/z/x;

    iput-object p2, p0, Ln3/z/g2;->k:Lq3/a/g0;

    .line 2
    sget-object p1, Ln3/z/o1;->f:Ln3/z/o1$a;

    .line 3
    sget-object p1, Ln3/z/o1;->e:Ln3/z/o1;

    const-string p2, "null cannot be cast to non-null type androidx.paging.PagePresenter<T>"

    .line 4
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Ln3/z/g2;->a:Ln3/z/o1;

    .line 6
    new-instance p1, Ln3/z/x0;

    invoke-direct {p1}, Ln3/z/x0;-><init>()V

    iput-object p1, p0, Ln3/z/g2;->c:Ln3/z/x0;

    .line 7
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Ln3/z/g2;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    new-instance v0, Ln3/z/a3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln3/z/a3;-><init>(ZI)V

    iput-object v0, p0, Ln3/z/g2;->e:Ln3/z/a3;

    .line 9
    new-instance v0, Ln3/z/g2$b;

    invoke-direct {v0, p0}, Ln3/z/g2$b;-><init>(Ln3/z/g2;)V

    iput-object v0, p0, Ln3/z/g2;->h:Ln3/z/g2$b;

    .line 10
    invoke-virtual {p1}, Ln3/z/x0;->e()Ln3/z/q;

    move-result-object v0

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Ln3/z/g2;->i:Lq3/a/x2/a1;

    .line 11
    new-instance v0, Ln3/z/g2$a;

    invoke-direct {v0, p0}, Ln3/z/g2$a;-><init>(Ln3/z/g2;)V

    const-string v1, "listener"

    .line 12
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p1}, Ln3/z/x0;->e()Ln3/z/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/z/g2$a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/z/g2;->f:Z

    .line 2
    iput p1, p0, Ln3/z/g2;->g:I

    .line 3
    iget-object v0, p0, Ln3/z/g2;->b:Ln3/z/h3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ln3/z/g2;->a:Ln3/z/o1;

    invoke-virtual {v1, p1}, Ln3/z/o1;->f(I)Ln3/z/i3$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ln3/z/h3;->a(Ln3/z/i3;)V

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/z/g2;->a:Ln3/z/o1;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_3

    .line 6
    invoke-virtual {v0}, Ln3/z/o1;->a()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 7
    iget v1, v0, Ln3/z/o1;->c:I

    sub-int/2addr p1, v1

    if-ltz p1, :cond_2

    .line 8
    iget v1, v0, Ln3/z/o1;->b:I

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, p1}, Ln3/z/o1;->e(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Index: "

    const-string v3, ", Size: "

    invoke-static {v2, p1, v3}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ln3/z/o1;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract b(Ln3/z/z0;Ln3/z/z0;Ln3/z/q;ILs1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/z/q;",
            "I",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
