.class public final Li/c/b0/e/f/e/m2;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/m2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/b/v<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:I

.field private final g:J


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput p1, p0, Li/c/b0/e/f/e/m2;->f:I

    int-to-long v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    .line 3
    iput-wide v0, p0, Li/c/b0/e/f/e/m2;->g:J

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Li/c/b0/e/f/e/m2$a;

    iget v0, p0, Li/c/b0/e/f/e/m2;->f:I

    int-to-long v2, v0

    iget-wide v4, p0, Li/c/b0/e/f/e/m2;->g:J

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/m2$a;-><init>(Li/c/b0/b/c0;JJ)V

    .line 2
    invoke-interface {p1, v6}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    invoke-virtual {v6}, Li/c/b0/e/f/e/m2$a;->run()V

    return-void
.end method
