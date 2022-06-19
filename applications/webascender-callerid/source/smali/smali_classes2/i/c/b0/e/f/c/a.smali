.class abstract Li/c/b0/e/f/c/a;
.super Li/c/b0/b/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/p<",
        "TR;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final f:Li/c/b0/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/p;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/a;->f:Li/c/b0/b/t;

    return-void
.end method
