.class public final Li/c/z/e/a/e;
.super Li/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/a/e$a;
    }
.end annotation


# instance fields
.field final a:Li/c/d;

.field final b:Li/c/y/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/e<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/d;Li/c/y/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/d;",
            "Li/c/y/e<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/a/e;->a:Li/c/d;

    .line 3
    iput-object p2, p0, Li/c/z/e/a/e;->b:Li/c/y/e;

    return-void
.end method


# virtual methods
.method protected m(Li/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/a/e;->a:Li/c/d;

    new-instance v1, Li/c/z/e/a/e$a;

    invoke-direct {v1, p0, p1}, Li/c/z/e/a/e$a;-><init>(Li/c/z/e/a/e;Li/c/c;)V

    invoke-interface {v0, v1}, Li/c/d;->a(Li/c/c;)V

    return-void
.end method
