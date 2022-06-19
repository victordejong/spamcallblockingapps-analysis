.class public final Li/c/b0/e/f/c/e;
.super Li/c/b0/b/p;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/b/p<",
        "Ljava/lang/Object;",
        ">;",
        "Li/c/b0/e/c/i<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Li/c/b0/e/f/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/f/c/e;

    invoke-direct {v0}, Li/c/b0/e/f/c/e;-><init>()V

    sput-object v0, Li/c/b0/e/f/c/e;->f:Li/c/b0/e/f/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected r(Li/c/b0/b/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/b0/e/a/d;->complete(Li/c/b0/b/r;)V

    return-void
.end method
