.class final Li/c/z/g/b$a;
.super Li/c/r$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final f:Li/c/z/a/d;

.field private final g:Li/c/w/a;

.field private final h:Li/c/z/a/d;

.field private final i:Li/c/z/g/b$c;

.field volatile j:Z


# direct methods
.method constructor <init>(Li/c/z/g/b$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Li/c/r$b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/g/b$a;->i:Li/c/z/g/b$c;

    .line 3
    new-instance p1, Li/c/z/a/d;

    invoke-direct {p1}, Li/c/z/a/d;-><init>()V

    iput-object p1, p0, Li/c/z/g/b$a;->f:Li/c/z/a/d;

    .line 4
    new-instance v0, Li/c/w/a;

    invoke-direct {v0}, Li/c/w/a;-><init>()V

    iput-object v0, p0, Li/c/z/g/b$a;->g:Li/c/w/a;

    .line 5
    new-instance v1, Li/c/z/a/d;

    invoke-direct {v1}, Li/c/z/a/d;-><init>()V

    iput-object v1, p0, Li/c/z/g/b$a;->h:Li/c/z/a/d;

    .line 6
    invoke-virtual {v1, p1}, Li/c/z/a/d;->b(Li/c/w/b;)Z

    .line 7
    invoke-virtual {v1, v0}, Li/c/z/a/d;->b(Li/c/w/b;)Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Li/c/w/b;
    .locals 6

    .line 1
    iget-boolean v0, p0, Li/c/z/g/b$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/z/g/b$a;->i:Li/c/z/g/b$c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Li/c/z/g/b$a;->f:Li/c/z/a/d;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Li/c/z/g/e;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Li/c/z/a/a;)Li/c/z/g/h;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/w/b;
    .locals 6

    .line 1
    iget-boolean v0, p0, Li/c/z/g/b$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/z/g/b$a;->i:Li/c/z/g/b$c;

    iget-object v5, p0, Li/c/z/g/b$a;->g:Li/c/w/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Li/c/z/g/e;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Li/c/z/a/a;)Li/c/z/g/h;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/g/b$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/z/g/b$a;->j:Z

    .line 3
    iget-object v0, p0, Li/c/z/g/b$a;->h:Li/c/z/a/d;

    invoke-virtual {v0}, Li/c/z/a/d;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/g/b$a;->j:Z

    return v0
.end method
