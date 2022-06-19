.class public final Li/c/b0/e/f/c/h;
.super Li/c/b0/e/f/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/c/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/c/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/t;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "TT;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/t<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/c/a;-><init>(Li/c/b0/b/t;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/c/h;->g:Li/c/b0/d/o;

    return-void
.end method


# virtual methods
.method protected r(Li/c/b0/b/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/a;->f:Li/c/b0/b/t;

    new-instance v1, Li/c/b0/e/f/c/h$a;

    iget-object v2, p0, Li/c/b0/e/f/c/h;->g:Li/c/b0/d/o;

    invoke-direct {v1, p1, v2}, Li/c/b0/e/f/c/h$a;-><init>(Li/c/b0/b/r;Li/c/b0/d/o;)V

    invoke-interface {v0, v1}, Li/c/b0/b/t;->a(Li/c/b0/b/r;)V

    return-void
.end method
