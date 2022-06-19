.class public final Li/c/b0/e/f/e/s0;
.super Li/c/b0/b/v;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/b/v<",
        "Ljava/lang/Object;",
        ">;",
        "Li/c/b0/e/c/i<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Li/c/b0/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/v<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/f/e/s0;

    invoke-direct {v0}, Li/c/b0/e/f/e/s0;-><init>()V

    sput-object v0, Li/c/b0/e/f/e/s0;->f:Li/c/b0/b/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/b0/e/a/d;->complete(Li/c/b0/b/c0;)V

    return-void
.end method
