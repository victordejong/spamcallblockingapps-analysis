.class public final Li/c/b0/e/f/e/n2;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/n2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/b/v<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:J

.field private final g:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-wide p1, p0, Li/c/b0/e/f/e/n2;->f:J

    .line 3
    iput-wide p3, p0, Li/c/b0/e/f/e/n2;->g:J

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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Li/c/b0/e/f/e/n2$a;

    iget-wide v2, p0, Li/c/b0/e/f/e/n2;->f:J

    iget-wide v0, p0, Li/c/b0/e/f/e/n2;->g:J

    add-long v4, v2, v0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/n2$a;-><init>(Li/c/b0/b/c0;JJ)V

    .line 2
    invoke-interface {p1, v6}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    invoke-virtual {v6}, Li/c/b0/e/f/e/n2$a;->run()V

    return-void
.end method
