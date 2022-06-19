.class final Li/c/b0/e/f/e/n$a;
.super Li/c/b0/g/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/g/d<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/e/f/e/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/n$b<",
            "TT;TU;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/n$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/n$b<",
            "TT;TU;TB;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/g/d;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/n$a;->g:Li/c/b0/e/f/e/n$b;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/n$a;->g:Li/c/b0/e/f/e/n$b;

    invoke-virtual {v0}, Li/c/b0/e/f/e/n$b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/n$a;->g:Li/c/b0/e/f/e/n$b;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/n$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Li/c/b0/e/f/e/n$a;->g:Li/c/b0/e/f/e/n$b;

    invoke-virtual {p1}, Li/c/b0/e/f/e/n$b;->i()V

    return-void
.end method
