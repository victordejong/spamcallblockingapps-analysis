.class abstract Li/c/z/e/b/a;
.super Li/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/f<",
        "TR;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final g:Li/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/f;-><init>()V

    const-string v0, "source is null"

    .line 2
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/c/f;

    iput-object p1, p0, Li/c/z/e/b/a;->g:Li/c/f;

    return-void
.end method
