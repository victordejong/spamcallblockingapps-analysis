.class final Li/a/a/e/m/a;
.super Li/a/a/d/a;
.source "SourceFile"

# interfaces
.implements Li/a/a/e/m/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a/a/d/a<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Li/a/a/e/m/d;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Li/a/a/e/m/c;->a()Li/a/a/e/m/e;

    move-result-object v0

    invoke-interface {v0}, Li/a/a/e/m/e;->c()Li/a/a/e/m/d;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li/a/a/d/a;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method static varargs i([Ljava/lang/Object;)Li/a/a/e/m/d;
    .locals 1

    .line 1
    new-instance v0, Li/a/a/e/m/a;

    invoke-direct {v0, p0}, Li/a/a/e/m/a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
