.class public final Le/a/c/i/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/f/a;


# instance fields
.field public final a:Le/a/c/i/f/c;


# direct methods
.method public constructor <init>(Le/a/c/i/f/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messageFtsDataSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/f/b;->a:Le/a/c/i/f/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ln3/z/q1<",
            "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "searchQuery"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/i/f/b;->a:Le/a/c/i/f/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/c/i/f/c;->a:Le/a/c/c/d/a0;

    invoke-interface {v0, p1}, Le/a/c/c/d/a0;->a(Ljava/lang/String;)Ln3/z/v$b;

    move-result-object p1

    const-string v0, "dataSourceFactory"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v7, Ln3/z/q1$c;

    const/16 v3, 0x64

    const/4 v4, 0x1

    const/16 v5, 0x12c

    const v6, 0x7fffffff

    move-object v1, v7

    move v2, v3

    invoke-direct/range {v1 .. v6}, Ln3/z/q1$c;-><init>(IIZII)V

    .line 6
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    .line 8
    sget-object v0, Ln3/c/a/a/a;->e:Ljava/util/concurrent/Executor;

    const-string v1, "ArchTaskExecutor.getIOThreadExecutor()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->b1(Ljava/util/concurrent/Executor;)Lq3/a/g0;

    move-result-object v8

    const-string v0, "fetchDispatcher"

    .line 9
    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v6, Ln3/z/d3;

    .line 11
    new-instance v0, Ln3/z/w;

    invoke-direct {v0, p1, v8}, Ln3/z/w;-><init>(Ln3/z/v$b;Lq3/a/g0;)V

    .line 12
    invoke-direct {v6, v8, v0}, Ln3/z/d3;-><init>(Lq3/a/g0;Ls1/z/b/a;)V

    const/4 p1, 0x1

    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Ln3/z/q0;

    .line 14
    sget-object v0, Ln3/c/a/a/a;->d:Ljava/util/concurrent/Executor;

    const-string v1, "ArchTaskExecutor.getMainThreadExecutor()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->b1(Ljava/util/concurrent/Executor;)Lq3/a/g0;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, v7

    move-object v7, v0

    .line 15
    invoke-direct/range {v1 .. v8}, Ln3/z/q0;-><init>(Lq3/a/i0;Ljava/lang/Object;Ln3/z/q1$c;Ln3/z/q1$a;Ls1/z/b/a;Lq3/a/g0;Lq3/a/g0;)V

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "LivePagedList cannot be built without a PagingSourceFactory or DataSource.Factory"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
