.class public final Lp3/a/q1/e$b;
.super Lp3/a/q1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/q1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/q1/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/f<",
            "TT;*>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lp3/a/f;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f<",
            "TT;*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp3/a/q1/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp3/a/q1/e$b;->c:Z

    .line 3
    iput-boolean v0, p0, Lp3/a/q1/e$b;->d:Z

    .line 4
    iput-object p1, p0, Lp3/a/q1/e$b;->a:Lp3/a/f;

    .line 5
    iput-boolean p2, p0, Lp3/a/q1/e$b;->b:Z

    return-void
.end method


# virtual methods
.method public W0(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/q1/e$b;->a:Lp3/a/f;

    const-string v1, "Cancelled by client with StreamObserver.onError()"

    invoke-virtual {v0, v1, p1}, Lp3/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lp3/a/q1/e$b;->c:Z

    return-void
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/q1/e$b;->a:Lp3/a/f;

    invoke-virtual {v0}, Lp3/a/f;->b()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp3/a/q1/e$b;->d:Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp3/a/q1/e$b;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream was terminated by error, no further calls are allowed"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lp3/a/q1/e$b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream is already completed, no further calls are allowed"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lp3/a/q1/e$b;->a:Lp3/a/f;

    invoke-virtual {v0, p1}, Lp3/a/f;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/a/q1/e$b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lp3/a/q1/e$b;->a:Lp3/a/f;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lp3/a/f;->c(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lp3/a/q1/e$b;->a:Lp3/a/f;

    invoke-virtual {v0, p1}, Lp3/a/f;->c(I)V

    :goto_0
    return-void
.end method
