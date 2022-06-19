.class final Li/c/b0/e/f/e/j4$a;
.super Li/c/b0/g/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/j4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/g/d<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/e/f/e/j4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/j4$b<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field h:Z


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/j4$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/j4$b<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/g/d;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/j4$a;->g:Li/c/b0/e/f/e/j4$b;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/j4$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/j4$a;->h:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/j4$a;->g:Li/c/b0/e/f/e/j4$b;

    invoke-virtual {v0}, Li/c/b0/e/f/e/j4$b;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/j4$a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/f/e/j4$a;->h:Z

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/j4$a;->g:Li/c/b0/e/f/e/j4$b;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/j4$b;->c(Ljava/lang/Throwable;)V

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
    iget-boolean p1, p0, Li/c/b0/e/f/e/j4$a;->h:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Li/c/b0/e/f/e/j4$a;->g:Li/c/b0/e/f/e/j4$b;

    invoke-virtual {p1}, Li/c/b0/e/f/e/j4$b;->d()V

    return-void
.end method
