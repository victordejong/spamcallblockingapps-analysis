.class public final Li/c/b0/e/f/e/p4;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/p4$b;,
        Li/c/b0/e/f/e/p4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final f:[Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Li/c/b0/b/a0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Z


# direct methods
.method public constructor <init>([Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/p4;->f:[Li/c/b0/b/a0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/p4;->g:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/e/p4;->h:Li/c/b0/d/o;

    .line 5
    iput p4, p0, Li/c/b0/e/f/e/p4;->i:I

    .line 6
    iput-boolean p5, p0, Li/c/b0/e/f/e/p4;->j:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/p4;->f:[Li/c/b0/b/a0;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Li/c/b0/b/a0;

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/p4;->g:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li/c/b0/b/a0;

    .line 3
    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 4
    new-array v5, v5, [Li/c/b0/b/a0;

    .line 5
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 6
    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 7
    :cond_1
    array-length v3, v0

    :cond_2
    if-nez v3, :cond_3

    .line 8
    invoke-static {p1}, Li/c/b0/e/a/d;->complete(Li/c/b0/b/c0;)V

    return-void

    .line 9
    :cond_3
    new-instance v1, Li/c/b0/e/f/e/p4$a;

    iget-object v2, p0, Li/c/b0/e/f/e/p4;->h:Li/c/b0/d/o;

    iget-boolean v4, p0, Li/c/b0/e/f/e/p4;->j:Z

    invoke-direct {v1, p1, v2, v3, v4}, Li/c/b0/e/f/e/p4$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;IZ)V

    .line 10
    iget p1, p0, Li/c/b0/e/f/e/p4;->i:I

    invoke-virtual {v1, v0, p1}, Li/c/b0/e/f/e/p4$a;->f([Li/c/b0/b/a0;I)V

    return-void
.end method
