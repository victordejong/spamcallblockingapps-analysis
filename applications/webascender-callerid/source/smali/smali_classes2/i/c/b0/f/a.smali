.class public abstract Li/c/b0/f/a;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Li/c/b0/d/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public b()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/r2;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/r2;-><init>(Li/c/b0/f/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()V
.end method
