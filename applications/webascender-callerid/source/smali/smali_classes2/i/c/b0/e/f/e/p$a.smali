.class final Li/c/b0/e/f/e/p$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/p;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
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

.field final g:Li/c/b0/e/f/e/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Li/c/b0/e/f/e/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/p$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:I

.field j:J

.field volatile k:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/e/f/e/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/e/f/e/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/p$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/p$a;->g:Li/c/b0/e/f/e/p;

    .line 4
    iget-object p1, p2, Li/c/b0/e/f/e/p;->k:Li/c/b0/e/f/e/p$b;

    iput-object p1, p0, Li/c/b0/e/f/e/p$a;->h:Li/c/b0/e/f/e/p$b;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/p$a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/p$a;->k:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/p$a;->g:Li/c/b0/e/f/e/p;

    invoke-virtual {v0, p0}, Li/c/b0/e/f/e/p;->b(Li/c/b0/e/f/e/p$a;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/p$a;->k:Z

    return v0
.end method
