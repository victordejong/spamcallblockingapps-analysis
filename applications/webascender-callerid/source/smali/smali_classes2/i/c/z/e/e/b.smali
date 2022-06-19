.class public final Li/c/z/e/e/b;
.super Li/c/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/e/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/s<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Li/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/y/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/e<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/p;Li/c/y/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/p<",
            "TT;>;",
            "Li/c/y/e<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/s;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/e/b;->f:Li/c/p;

    .line 3
    iput-object p2, p0, Li/c/z/e/e/b;->g:Li/c/y/e;

    return-void
.end method


# virtual methods
.method protected j(Li/c/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/e/b;->f:Li/c/p;

    new-instance v1, Li/c/z/e/e/b$a;

    iget-object v2, p0, Li/c/z/e/e/b;->g:Li/c/y/e;

    invoke-direct {v1, p1, v2}, Li/c/z/e/e/b$a;-><init>(Li/c/t;Li/c/y/e;)V

    invoke-interface {v0, v1}, Li/c/p;->b(Li/c/q;)V

    return-void
.end method
