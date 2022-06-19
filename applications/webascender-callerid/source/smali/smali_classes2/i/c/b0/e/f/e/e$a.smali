.class final Li/c/b0/e/f/e/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final f:Li/c/b0/e/f/e/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/e$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Throwable;

.field private l:Z


# direct methods
.method constructor <init>(Li/c/b0/b/a0;Li/c/b0/e/f/e/e$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/e/f/e/e$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/e$a;->i:Z

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/f/e/e$a;->j:Z

    .line 4
    iput-object p1, p0, Li/c/b0/e/f/e/e$a;->g:Li/c/b0/b/a0;

    .line 5
    iput-object p2, p0, Li/c/b0/e/f/e/e$a;->f:Li/c/b0/e/f/e/e$b;

    return-void
.end method

.method private a()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/e$a;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Li/c/b0/e/f/e/e$a;->l:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/e$a;->f:Li/c/b0/e/f/e/e$b;

    invoke-virtual {v0}, Li/c/b0/e/f/e/e$b;->d()V

    .line 4
    new-instance v0, Li/c/b0/e/f/e/b2;

    iget-object v2, p0, Li/c/b0/e/f/e/e$a;->g:Li/c/b0/b/a0;

    invoke-direct {v0, v2}, Li/c/b0/e/f/e/b2;-><init>(Li/c/b0/b/a0;)V

    iget-object v2, p0, Li/c/b0/e/f/e/e$a;->f:Li/c/b0/e/f/e/e$b;

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/e$a;->f:Li/c/b0/e/f/e/e$b;

    invoke-virtual {v0}, Li/c/b0/e/f/e/e$b;->e()Li/c/b0/b/u;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, Li/c/b0/b/u;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 7
    iput-boolean v3, p0, Li/c/b0/e/f/e/e$a;->j:Z

    .line 8
    invoke-virtual {v0}, Li/c/b0/b/u;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Li/c/b0/e/f/e/e$a;->h:Ljava/lang/Object;

    return v1

    .line 9
    :cond_1
    iput-boolean v3, p0, Li/c/b0/e/f/e/e$a;->i:Z

    .line 10
    invoke-virtual {v0}, Li/c/b0/b/u;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 11
    :cond_2
    invoke-virtual {v0}, Li/c/b0/b/u;->d()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Li/c/b0/e/f/e/e$a;->k:Ljava/lang/Throwable;

    .line 12
    invoke-static {v0}, Li/c/b0/e/k/j;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Li/c/b0/e/f/e/e$a;->f:Li/c/b0/e/f/e/e$b;

    invoke-virtual {v1}, Li/c/b0/g/d;->dispose()V

    .line 14
    iput-object v0, p0, Li/c/b0/e/f/e/e$a;->k:Ljava/lang/Throwable;

    .line 15
    invoke-static {v0}, Li/c/b0/e/k/j;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/e$a;->k:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 2
    iget-boolean v0, p0, Li/c/b0/e/f/e/e$a;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Li/c/b0/e/f/e/e$a;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/c/b0/e/f/e/e$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 4
    :cond_3
    invoke-static {v0}, Li/c/b0/e/k/j;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/e$a;->k:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/e$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/f/e/e$a;->j:Z

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/e$a;->h:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-static {v0}, Li/c/b0/e/k/j;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
