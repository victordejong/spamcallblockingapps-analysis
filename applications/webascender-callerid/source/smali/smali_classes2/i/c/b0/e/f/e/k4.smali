.class public final Li/c/b0/e/f/e/k4;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/k4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;",
        "Li/c/b0/b/v<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TB;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TB;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final i:I


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/b/a0<",
            "TB;>;",
            "Li/c/b0/d/o<",
            "-TB;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/k4;->g:Li/c/b0/b/a0;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/k4;->h:Li/c/b0/d/o;

    .line 4
    iput p4, p0, Li/c/b0/e/f/e/k4;->i:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/k4$a;

    iget-object v2, p0, Li/c/b0/e/f/e/k4;->g:Li/c/b0/b/a0;

    iget-object v3, p0, Li/c/b0/e/f/e/k4;->h:Li/c/b0/d/o;

    iget v4, p0, Li/c/b0/e/f/e/k4;->i:I

    invoke-direct {v1, p1, v2, v3, v4}, Li/c/b0/e/f/e/k4$a;-><init>(Li/c/b0/b/c0;Li/c/b0/b/a0;Li/c/b0/d/o;I)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
