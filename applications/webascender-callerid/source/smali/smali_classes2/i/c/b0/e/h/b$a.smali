.class final Li/c/b0/e/h/b$a;
.super Li/c/b0/b/d0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final f:Li/c/b0/e/a/e;

.field private final g:Li/c/b0/c/a;

.field private final h:Li/c/b0/e/a/e;

.field private final i:Li/c/b0/e/h/b$c;

.field volatile j:Z


# direct methods
.method constructor <init>(Li/c/b0/e/h/b$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Li/c/b0/b/d0$c;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/h/b$a;->i:Li/c/b0/e/h/b$c;

    .line 3
    new-instance p1, Li/c/b0/e/a/e;

    invoke-direct {p1}, Li/c/b0/e/a/e;-><init>()V

    iput-object p1, p0, Li/c/b0/e/h/b$a;->f:Li/c/b0/e/a/e;

    .line 4
    new-instance v0, Li/c/b0/c/a;

    invoke-direct {v0}, Li/c/b0/c/a;-><init>()V

    iput-object v0, p0, Li/c/b0/e/h/b$a;->g:Li/c/b0/c/a;

    .line 5
    new-instance v1, Li/c/b0/e/a/e;

    invoke-direct {v1}, Li/c/b0/e/a/e;-><init>()V

    iput-object v1, p0, Li/c/b0/e/h/b$a;->h:Li/c/b0/e/a/e;

    .line 6
    invoke-virtual {v1, p1}, Li/c/b0/e/a/e;->b(Li/c/b0/c/c;)Z

    .line 7
    invoke-virtual {v1, v0}, Li/c/b0/e/a/e;->b(Li/c/b0/c/c;)Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Li/c/b0/c/c;
    .locals 6

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/b$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/e/h/b$a;->i:Li/c/b0/e/h/b$c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Li/c/b0/e/h/b$a;->f:Li/c/b0/e/a/e;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Li/c/b0/e/h/f;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Li/c/b0/c/d;)Li/c/b0/e/h/k;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;
    .locals 6

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/b$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/e/h/b$a;->i:Li/c/b0/e/h/b$c;

    iget-object v5, p0, Li/c/b0/e/h/b$a;->g:Li/c/b0/c/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Li/c/b0/e/h/f;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Li/c/b0/c/d;)Li/c/b0/e/h/k;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/b$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/h/b$a;->j:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/h/b$a;->h:Li/c/b0/e/a/e;

    invoke-virtual {v0}, Li/c/b0/e/a/e;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/b$a;->j:Z

    return v0
.end method
