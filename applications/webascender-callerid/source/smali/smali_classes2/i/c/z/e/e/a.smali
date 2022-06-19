.class abstract Li/c/z/e/e/a;
.super Li/c/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/o<",
        "TU;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final f:Li/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/o;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/e/a;->f:Li/c/p;

    return-void
.end method
