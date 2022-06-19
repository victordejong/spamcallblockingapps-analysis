.class public final Li/c/z/e/e/d;
.super Li/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/e/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Li/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/d;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Li/c/p;Li/c/y/d;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/p<",
            "TT;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/d;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/e/d;->a:Li/c/p;

    .line 3
    iput-object p2, p0, Li/c/z/e/e/d;->b:Li/c/y/d;

    .line 4
    iput-boolean p3, p0, Li/c/z/e/e/d;->c:Z

    return-void
.end method


# virtual methods
.method protected m(Li/c/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/z/e/e/d;->a:Li/c/p;

    new-instance v1, Li/c/z/e/e/d$a;

    iget-object v2, p0, Li/c/z/e/e/d;->b:Li/c/y/d;

    iget-boolean v3, p0, Li/c/z/e/e/d;->c:Z

    invoke-direct {v1, p1, v2, v3}, Li/c/z/e/e/d$a;-><init>(Li/c/c;Li/c/y/d;Z)V

    invoke-interface {v0, v1}, Li/c/p;->b(Li/c/q;)V

    return-void
.end method
