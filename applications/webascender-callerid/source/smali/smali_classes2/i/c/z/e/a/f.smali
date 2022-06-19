.class public final Li/c/z/e/a/f;
.super Li/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/a/f$a;
    }
.end annotation


# instance fields
.field final a:Li/c/d;

.field final b:Li/c/y/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/c<",
            "-",
            "Li/c/w/b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Li/c/y/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Li/c/y/a;

.field final e:Li/c/y/a;

.field final f:Li/c/y/a;

.field final g:Li/c/y/a;


# direct methods
.method public constructor <init>(Li/c/d;Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;Li/c/y/a;Li/c/y/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/d;",
            "Li/c/y/c<",
            "-",
            "Li/c/w/b;",
            ">;",
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/y/a;",
            "Li/c/y/a;",
            "Li/c/y/a;",
            "Li/c/y/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/a/f;->a:Li/c/d;

    .line 3
    iput-object p2, p0, Li/c/z/e/a/f;->b:Li/c/y/c;

    .line 4
    iput-object p3, p0, Li/c/z/e/a/f;->c:Li/c/y/c;

    .line 5
    iput-object p4, p0, Li/c/z/e/a/f;->d:Li/c/y/a;

    .line 6
    iput-object p5, p0, Li/c/z/e/a/f;->e:Li/c/y/a;

    .line 7
    iput-object p6, p0, Li/c/z/e/a/f;->f:Li/c/y/a;

    .line 8
    iput-object p7, p0, Li/c/z/e/a/f;->g:Li/c/y/a;

    return-void
.end method


# virtual methods
.method protected m(Li/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/a/f;->a:Li/c/d;

    new-instance v1, Li/c/z/e/a/f$a;

    invoke-direct {v1, p0, p1}, Li/c/z/e/a/f$a;-><init>(Li/c/z/e/a/f;Li/c/c;)V

    invoke-interface {v0, v1}, Li/c/d;->a(Li/c/c;)V

    return-void
.end method
