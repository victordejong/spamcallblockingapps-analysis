.class public final Li/c/b0/e/f/a/q;
.super Li/c/b0/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/q$a;
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i;

.field final g:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final i:Li/c/b0/d/a;

.field final j:Li/c/b0/d/a;

.field final k:Li/c/b0/d/a;

.field final l:Li/c/b0/d/a;


# direct methods
.method public constructor <init>(Li/c/b0/b/i;Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;Li/c/b0/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i;",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/d/a;",
            "Li/c/b0/d/a;",
            "Li/c/b0/d/a;",
            "Li/c/b0/d/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/q;->f:Li/c/b0/b/i;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/a/q;->g:Li/c/b0/d/g;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/a/q;->h:Li/c/b0/d/g;

    .line 5
    iput-object p4, p0, Li/c/b0/e/f/a/q;->i:Li/c/b0/d/a;

    .line 6
    iput-object p5, p0, Li/c/b0/e/f/a/q;->j:Li/c/b0/d/a;

    .line 7
    iput-object p6, p0, Li/c/b0/e/f/a/q;->k:Li/c/b0/d/a;

    .line 8
    iput-object p7, p0, Li/c/b0/e/f/a/q;->l:Li/c/b0/d/a;

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/q;->f:Li/c/b0/b/i;

    new-instance v1, Li/c/b0/e/f/a/q$a;

    invoke-direct {v1, p0, p1}, Li/c/b0/e/f/a/q$a;-><init>(Li/c/b0/e/f/a/q;Li/c/b0/b/g;)V

    invoke-interface {v0, v1}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void
.end method
