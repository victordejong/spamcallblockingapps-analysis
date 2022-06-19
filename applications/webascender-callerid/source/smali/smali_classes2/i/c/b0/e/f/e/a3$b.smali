.class final Li/c/b0/e/f/e/a3$b;
.super Li/c/b0/e/f/e/a3$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/a3;
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
        "Li/c/b0/e/f/e/a3$c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/b/a0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Li/c/b0/e/f/e/a3$c;-><init>(Li/c/b0/b/c0;Li/c/b0/b/a0;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a3$c;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method

.method e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/e/a3$c;->c()V

    return-void
.end method
