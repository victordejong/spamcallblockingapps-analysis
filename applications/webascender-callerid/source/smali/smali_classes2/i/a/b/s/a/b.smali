.class public Li/a/b/s/a/b;
.super Li/a/b/s/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/b/s/a/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/b/s/a/a<",
        "TK;TV;",
        "Li/a/b/s/a/b$b<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Li/a/b/s/a/b$b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final g:Ljava/lang/Thread;

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/b/s/a/b$a;

    invoke-direct {v0}, Li/a/b/s/a/b$a;-><init>()V

    sput-object v0, Li/a/b/s/a/b;->i:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Li/a/b/s/a/b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(ZZLjava/util/concurrent/ConcurrentMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Li/a/b/s/a/a$d<",
            "TK;>;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Li/a/b/s/a/a;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    .line 2
    iput-boolean p2, p0, Li/a/b/s/a/b;->h:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Li/a/b/s/a/b;->g:Ljava/lang/Thread;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "weak-ref-cleaner-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Li/a/b/s/a/b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Li/a/b/s/a/b;->g:Ljava/lang/Thread;

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/a/b/s/a/b;->j(Ljava/lang/Object;)Li/a/b/s/a/b$b;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic i(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Li/a/b/s/a/b$b;

    invoke-virtual {p0, p1}, Li/a/b/s/a/b;->k(Li/a/b/s/a/b$b;)V

    return-void
.end method

.method protected j(Ljava/lang/Object;)Li/a/b/s/a/b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Li/a/b/s/a/b$b<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/a/b/s/a/b;->h:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Li/a/b/s/a/b;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/b/s/a/b$b;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li/a/b/s/a/b$b;

    invoke-direct {v0}, Li/a/b/s/a/b$b;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Li/a/b/s/a/b$b;->b(Ljava/lang/Object;)Li/a/b/s/a/b$b;

    return-object v0
.end method

.method protected k(Li/a/b/s/a/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/s/a/b$b<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Li/a/b/s/a/b$b;->a()V

    return-void
.end method
