.class public abstract Li/c/x/a;
.super Li/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/f<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final K()Li/c/w/b;
    .locals 1

    .line 1
    new-instance v0, Li/c/z/j/e;

    invoke-direct {v0}, Li/c/z/j/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Li/c/x/a;->L(Li/c/y/c;)V

    .line 3
    iget-object v0, v0, Li/c/z/j/e;->f:Li/c/w/b;

    return-object v0
.end method

.method public abstract L(Li/c/y/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-",
            "Li/c/w/b;",
            ">;)V"
        }
    .end annotation
.end method
