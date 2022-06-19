.class public final Landroidx/work/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/b$b;,
        Landroidx/work/b$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Ljava/util/concurrent/Executor;

.field final c:Landroidx/work/y;

.field final d:Landroidx/work/l;

.field final e:Landroidx/work/t;

.field final f:Landroidx/work/j;

.field final g:Ljava/lang/String;

.field final h:I

.field final i:I

.field final j:I

.field final k:I


# direct methods
.method constructor <init>(Landroidx/work/b$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/work/b$a;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/work/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->a:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Landroidx/work/b;->a:Ljava/util/concurrent/Executor;

    .line 5
    :goto_0
    iget-object v0, p1, Landroidx/work/b$a;->d:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Landroidx/work/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->b:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 7
    :cond_1
    iput-object v0, p0, Landroidx/work/b;->b:Ljava/util/concurrent/Executor;

    .line 8
    :goto_1
    iget-object v0, p1, Landroidx/work/b$a;->b:Landroidx/work/y;

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Landroidx/work/y;->c()Landroidx/work/y;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->c:Landroidx/work/y;

    goto :goto_2

    .line 10
    :cond_2
    iput-object v0, p0, Landroidx/work/b;->c:Landroidx/work/y;

    .line 11
    :goto_2
    iget-object v0, p1, Landroidx/work/b$a;->c:Landroidx/work/l;

    if-nez v0, :cond_3

    .line 12
    invoke-static {}, Landroidx/work/l;->c()Landroidx/work/l;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->d:Landroidx/work/l;

    goto :goto_3

    .line 13
    :cond_3
    iput-object v0, p0, Landroidx/work/b;->d:Landroidx/work/l;

    .line 14
    :goto_3
    iget-object v0, p1, Landroidx/work/b$a;->e:Landroidx/work/t;

    if-nez v0, :cond_4

    .line 15
    new-instance v0, Landroidx/work/impl/a;

    invoke-direct {v0}, Landroidx/work/impl/a;-><init>()V

    iput-object v0, p0, Landroidx/work/b;->e:Landroidx/work/t;

    goto :goto_4

    .line 16
    :cond_4
    iput-object v0, p0, Landroidx/work/b;->e:Landroidx/work/t;

    .line 17
    :goto_4
    iget v0, p1, Landroidx/work/b$a;->h:I

    iput v0, p0, Landroidx/work/b;->h:I

    .line 18
    iget v0, p1, Landroidx/work/b$a;->i:I

    iput v0, p0, Landroidx/work/b;->i:I

    .line 19
    iget v0, p1, Landroidx/work/b$a;->j:I

    iput v0, p0, Landroidx/work/b;->j:I

    .line 20
    iget v0, p1, Landroidx/work/b$a;->k:I

    iput v0, p0, Landroidx/work/b;->k:I

    .line 21
    iget-object v0, p1, Landroidx/work/b$a;->f:Landroidx/work/j;

    iput-object v0, p0, Landroidx/work/b;->f:Landroidx/work/j;

    .line 22
    iget-object p1, p1, Landroidx/work/b$a;->g:Ljava/lang/String;

    iput-object p1, p0, Landroidx/work/b;->g:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroidx/work/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/b;->f:Landroidx/work/j;

    return-object v0
.end method

.method public d()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/b;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public e()Landroidx/work/l;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/b;->d:Landroidx/work/l;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/b;->j:I

    return v0
.end method

.method public g()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroidx/work/b;->k:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 3
    :cond_0
    iget v0, p0, Landroidx/work/b;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/b;->i:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/b;->h:I

    return v0
.end method

.method public j()Landroidx/work/t;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/b;->e:Landroidx/work/t;

    return-object v0
.end method

.method public k()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/b;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public l()Landroidx/work/y;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/b;->c:Landroidx/work/y;

    return-object v0
.end method
