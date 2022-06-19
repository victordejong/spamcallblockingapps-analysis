.class final Li/c/b0/e/f/e/l1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/k;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/k<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/c<",
            "TS;-",
            "Li/c/b0/b/k<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-TS;>;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field volatile j:Z

.field k:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/c;Li/c/b0/d/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/d/c<",
            "TS;-",
            "Li/c/b0/b/k<",
            "TT;>;TS;>;",
            "Li/c/b0/d/g<",
            "-TS;>;TS;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/l1$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/l1$a;->g:Li/c/b0/d/c;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/e/l1$a;->h:Li/c/b0/d/g;

    .line 5
    iput-object p4, p0, Li/c/b0/e/f/e/l1$a;->i:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/l1$a;->h:Li/c/b0/d/g;

    invoke-interface {v0, p1}, Li/c/b0/d/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/l1$a;->i:Ljava/lang/Object;

    .line 2
    iget-boolean v1, p0, Li/c/b0/e/f/e/l1$a;->j:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iput-object v2, p0, Li/c/b0/e/f/e/l1$a;->i:Ljava/lang/Object;

    .line 4
    invoke-direct {p0, v0}, Li/c/b0/e/f/e/l1$a;->b(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Li/c/b0/e/f/e/l1$a;->g:Li/c/b0/d/c;

    .line 6
    :cond_1
    iget-boolean v3, p0, Li/c/b0/e/f/e/l1$a;->j:Z

    if-eqz v3, :cond_2

    .line 7
    iput-object v2, p0, Li/c/b0/e/f/e/l1$a;->i:Ljava/lang/Object;

    .line 8
    invoke-direct {p0, v0}, Li/c/b0/e/f/e/l1$a;->b(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v3, 0x1

    .line 9
    :try_start_0
    invoke-interface {v1, v0, p0}, Li/c/b0/d/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-boolean v4, p0, Li/c/b0/e/f/e/l1$a;->k:Z

    if-eqz v4, :cond_1

    .line 11
    iput-boolean v3, p0, Li/c/b0/e/f/e/l1$a;->j:Z

    .line 12
    iput-object v2, p0, Li/c/b0/e/f/e/l1$a;->i:Ljava/lang/Object;

    .line 13
    invoke-direct {p0, v0}, Li/c/b0/e/f/e/l1$a;->b(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 14
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    iput-object v2, p0, Li/c/b0/e/f/e/l1$a;->i:Ljava/lang/Object;

    .line 16
    iput-boolean v3, p0, Li/c/b0/e/f/e/l1$a;->j:Z

    .line 17
    invoke-virtual {p0, v1}, Li/c/b0/e/f/e/l1$a;->onError(Ljava/lang/Throwable;)V

    .line 18
    invoke-direct {p0, v0}, Li/c/b0/e/f/e/l1$a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/l1$a;->j:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/l1$a;->j:Z

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/l1$a;->k:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "onError called with a null Throwable."

    .line 3
    invoke-static {p1}, Li/c/b0/e/k/j;->b(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Li/c/b0/e/f/e/l1$a;->k:Z

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/l1$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
