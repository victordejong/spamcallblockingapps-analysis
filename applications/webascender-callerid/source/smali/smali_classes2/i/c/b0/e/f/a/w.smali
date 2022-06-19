.class public final Li/c/b0/e/f/a/w;
.super Li/c/b0/b/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i;

.field final g:Li/c/b0/d/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/q<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/i;Li/c/b0/d/q;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i;",
            "Li/c/b0/d/q<",
            "+TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/w;->f:Li/c/b0/b/i;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/a/w;->h:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Li/c/b0/e/f/a/w;->g:Li/c/b0/d/q;

    return-void
.end method


# virtual methods
.method protected C(Li/c/b0/b/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/w;->f:Li/c/b0/b/i;

    new-instance v1, Li/c/b0/e/f/a/w$a;

    invoke-direct {v1, p0, p1}, Li/c/b0/e/f/a/w$a;-><init>(Li/c/b0/e/f/a/w;Li/c/b0/b/g0;)V

    invoke-interface {v0, v1}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void
.end method
