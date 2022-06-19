.class final Li/c/z/e/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/w/b;",
            ">;"
        }
    .end annotation
.end field

.field final g:Li/c/c;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Li/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/w/b;",
            ">;",
            "Li/c/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/a/a$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Li/c/z/e/a/a$a;->g:Li/c/c;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/a/a$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/z/a/b;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/a/a$a;->g:Li/c/c;

    invoke-interface {v0}, Li/c/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/a/a$a;->g:Li/c/c;

    invoke-interface {v0, p1}, Li/c/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
