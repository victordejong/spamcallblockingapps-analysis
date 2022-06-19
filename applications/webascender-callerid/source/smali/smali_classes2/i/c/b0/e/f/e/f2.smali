.class public final Li/c/b0/e/f/e/f2;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/b/v<",
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
    new-instance v0, Li/c/b0/e/f/e/f2;

    invoke-direct {v0}, Li/c/b0/e/f/e/f2;-><init>()V

    sput-object v0, Li/c/b0/e/f/e/f2;->f:Li/c/b0/b/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 1
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
    sget-object v0, Li/c/b0/e/a/d;->NEVER:Li/c/b0/e/a/d;

    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    return-void
.end method
