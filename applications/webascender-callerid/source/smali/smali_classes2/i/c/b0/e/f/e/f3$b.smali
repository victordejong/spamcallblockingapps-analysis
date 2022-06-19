.class final Li/c/b0/e/f/e/f3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/c0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/e/f3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/f3$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/e/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/g/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final h:I

.field volatile i:Z

.field j:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/f3$a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/f3$a<",
            "TT;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/f3$b;->f:Li/c/b0/e/f/e/f3$a;

    .line 3
    iput p2, p0, Li/c/b0/e/f/e/f3$b;->h:I

    .line 4
    new-instance p1, Li/c/b0/e/g/c;

    invoke-direct {p1, p3}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/e/f3$b;->g:Li/c/b0/e/g/c;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/f3$b;->i:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/f3$b;->f:Li/c/b0/e/f/e/f3$a;

    invoke-virtual {v0}, Li/c/b0/e/f/e/f3$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/f3$b;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li/c/b0/e/f/e/f3$b;->i:Z

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/f3$b;->f:Li/c/b0/e/f/e/f3$a;

    invoke-virtual {p1}, Li/c/b0/e/f/e/f3$a;->b()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/f3$b;->g:Li/c/b0/e/g/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/g/c;->offer(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/f3$b;->f:Li/c/b0/e/f/e/f3$a;

    invoke-virtual {p1}, Li/c/b0/e/f/e/f3$a;->b()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/f3$b;->f:Li/c/b0/e/f/e/f3$a;

    iget v1, p0, Li/c/b0/e/f/e/f3$b;->h:I

    invoke-virtual {v0, p1, v1}, Li/c/b0/e/f/e/f3$a;->c(Li/c/b0/c/c;I)Z

    return-void
.end method
