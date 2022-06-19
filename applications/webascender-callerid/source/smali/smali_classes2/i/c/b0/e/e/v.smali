.class Li/c/b0/e/e/v;
.super Li/c/b0/e/e/t;
.source "SourceFile"


# instance fields
.field final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/c/b0/e/e/t;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Li/c/b0/e/e/v;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
