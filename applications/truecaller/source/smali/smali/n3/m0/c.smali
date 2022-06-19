.class public final Ln3/m0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/c$b;,
        Ln3/m0/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ln3/m0/b0;

.field public final d:Ln3/m0/m;

.field public final e:Ln3/m0/c0/a;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Ln3/m0/c$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ln3/m0/c;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Ln3/m0/c;->a:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ln3/m0/c;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Ln3/m0/c;->b:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v0, p1, Ln3/m0/c$a;->a:Ln3/m0/b0;

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Ln3/m0/b0;->a:Ljava/lang/String;

    new-instance v0, Ln3/m0/a0;

    invoke-direct {v0}, Ln3/m0/a0;-><init>()V

    .line 6
    iput-object v0, p0, Ln3/m0/c;->c:Ln3/m0/b0;

    goto :goto_0

    .line 7
    :cond_0
    iput-object v0, p0, Ln3/m0/c;->c:Ln3/m0/b0;

    .line 8
    :goto_0
    new-instance v0, Ln3/m0/l;

    invoke-direct {v0}, Ln3/m0/l;-><init>()V

    .line 9
    iput-object v0, p0, Ln3/m0/c;->d:Ln3/m0/m;

    .line 10
    new-instance v0, Ln3/m0/c0/a;

    invoke-direct {v0}, Ln3/m0/c0/a;-><init>()V

    iput-object v0, p0, Ln3/m0/c;->e:Ln3/m0/c0/a;

    const/4 v0, 0x4

    .line 11
    iput v0, p0, Ln3/m0/c;->f:I

    .line 12
    iget v0, p1, Ln3/m0/c$a;->b:I

    iput v0, p0, Ln3/m0/c;->g:I

    .line 13
    iget v0, p1, Ln3/m0/c$a;->c:I

    iput v0, p0, Ln3/m0/c;->h:I

    .line 14
    iget p1, p1, Ln3/m0/c$a;->d:I

    iput p1, p0, Ln3/m0/c;->i:I

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/util/concurrent/Executor;
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
    new-instance v1, Ln3/m0/b;

    invoke-direct {v1, p0, p1}, Ln3/m0/b;-><init>(Ln3/m0/c;Z)V

    .line 3
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method
