.class public abstract Ln3/c0/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDatabase:Ln3/c0/q;

.field private final mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mStmt:Ln3/e0/a/f;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ln3/c0/c0;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Ln3/c0/c0;->mDatabase:Ln3/c0/q;

    return-void
.end method

.method private createNewStatement()Ln3/e0/a/f;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/c0/c0;->createQuery()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/c0/c0;->mDatabase:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    return-object v0
.end method

.method private getStmt(Z)Ln3/e0/a/f;
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Ln3/c0/c0;->mStmt:Ln3/e0/a/f;

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Ln3/c0/c0;->createNewStatement()Ln3/e0/a/f;

    move-result-object p1

    iput-object p1, p0, Ln3/c0/c0;->mStmt:Ln3/e0/a/f;

    .line 3
    :cond_0
    iget-object p1, p0, Ln3/c0/c0;->mStmt:Ln3/e0/a/f;

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Ln3/c0/c0;->createNewStatement()Ln3/e0/a/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public acquire()Ln3/e0/a/f;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/c0/c0;->assertNotMainThread()V

    .line 2
    iget-object v0, p0, Ln3/c0/c0;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-direct {p0, v0}, Ln3/c0/c0;->getStmt(Z)Ln3/e0/a/f;

    move-result-object v0

    return-object v0
.end method

.method public assertNotMainThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/c0;->mDatabase:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotMainThread()V

    return-void
.end method

.method public abstract createQuery()Ljava/lang/String;
.end method

.method public release(Ln3/e0/a/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/c0;->mStmt:Ln3/e0/a/f;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Ln3/c0/c0;->mLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
