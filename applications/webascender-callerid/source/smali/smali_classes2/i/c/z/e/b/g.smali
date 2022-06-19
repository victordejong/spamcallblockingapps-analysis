.class public final Li/c/z/e/b/g;
.super Li/c/f;
.source "SourceFile"

# interfaces
.implements Li/c/z/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/f<",
        "Ljava/lang/Object;",
        ">;",
        "Li/c/z/c/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Li/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/z/e/b/g;

    invoke-direct {v0}, Li/c/z/e/b/g;-><init>()V

    sput-object v0, Li/c/z/e/b/g;->g:Li/c/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method public I(Lo/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/z/i/d;->complete(Lo/a/b;)V

    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
