.class public Ln3/z/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/b$b;,
        Ln3/z/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ln3/b0/a/q;

.field public final b:Ln3/b0/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/b0/a/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ln3/z/b$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public e:Ln3/z/q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/q1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:Ln3/z/q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/q1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:I

.field public final h:Ln3/z/q1$d;

.field public final i:Ls1/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/f<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/z/b/p<",
            "Ln3/z/t0;",
            "Ln3/z/r0;",
            "Ls1/s;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Ln3/z/q1$b;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$g;Ln3/b0/a/h$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "*>;",
            "Ln3/b0/a/h$e<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffCallback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/c/a/a/a;->d:Ljava/util/concurrent/Executor;

    const-string v1, "ArchTaskExecutor.getMainThreadExecutor()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ln3/z/b;->c:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ln3/z/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v0, Ln3/z/d;

    invoke-direct {v0, p0}, Ln3/z/d;-><init>(Ln3/z/b;)V

    iput-object v0, p0, Ln3/z/b;->h:Ln3/z/q1$d;

    .line 5
    new-instance v1, Ln3/z/c;

    invoke-direct {v1, v0}, Ln3/z/c;-><init>(Ln3/z/q1$d;)V

    iput-object v1, p0, Ln3/z/b;->i:Ls1/a/f;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ln3/z/b;->j:Ljava/util/List;

    .line 7
    new-instance v0, Ln3/z/e;

    invoke-direct {v0, p0}, Ln3/z/e;-><init>(Ln3/z/b;)V

    iput-object v0, p0, Ln3/z/b;->k:Ln3/z/q1$b;

    .line 8
    new-instance v0, Ln3/b0/a/b;

    invoke-direct {v0, p1}, Ln3/b0/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iput-object v0, p0, Ln3/z/b;->a:Ln3/b0/a/q;

    .line 9
    new-instance p1, Ln3/b0/a/c$a;

    invoke-direct {p1, p2}, Ln3/b0/a/c$a;-><init>(Ln3/b0/a/h$e;)V

    invoke-virtual {p1}, Ln3/b0/a/c$a;->a()Ln3/b0/a/c;

    move-result-object p1

    const-string p2, "AsyncDifferConfig.Builder(diffCallback).build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ln3/z/b;->b:Ln3/b0/a/c;

    return-void
.end method


# virtual methods
.method public a()Ln3/z/q1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/z/q1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/b;->f:Ln3/z/q1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln3/z/b;->e:Ln3/z/q1;

    :goto_0
    return-object v0
.end method

.method public final b()Ln3/b0/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/b;->a:Ln3/b0/a/q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "updateCallback"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(Ln3/z/q1;Ln3/z/q1;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/q1<",
            "TT;>;",
            "Ln3/z/q1<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/z/b$b;

    .line 3
    invoke-interface {v1, p1, p2}, Ln3/z/b$b;->a(Ln3/z/q1;Ln3/z/q1;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
