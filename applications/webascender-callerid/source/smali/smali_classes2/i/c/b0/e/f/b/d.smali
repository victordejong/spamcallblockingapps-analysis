.class public final Li/c/b0/e/f/b/d;
.super Li/c/b0/b/l;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/b/l<",
        "Ljava/lang/Object;",
        ">;",
        "Li/c/b0/e/c/i<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Li/c/b0/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/l<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/f/b/d;

    invoke-direct {v0}, Li/c/b0/e/f/b/d;-><init>()V

    sput-object v0, Li/c/b0/e/f/b/d;->g:Li/c/b0/b/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u(Lo/a/b;)V
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
    invoke-static {p1}, Li/c/b0/e/j/c;->complete(Lo/a/b;)V

    return-void
.end method
