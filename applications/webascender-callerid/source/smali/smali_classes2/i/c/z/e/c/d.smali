.class public final Li/c/z/e/c/d;
.super Li/c/j;
.source "SourceFile"

# interfaces
.implements Li/c/z/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/j<",
        "Ljava/lang/Object;",
        ">;",
        "Li/c/z/c/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Li/c/z/e/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/z/e/c/d;

    invoke-direct {v0}, Li/c/z/e/c/d;-><init>()V

    sput-object v0, Li/c/z/e/c/d;->f:Li/c/z/e/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/j;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected u(Li/c/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/z/a/c;->complete(Li/c/l;)V

    return-void
.end method
