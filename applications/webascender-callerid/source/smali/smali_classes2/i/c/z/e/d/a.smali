.class public final Li/c/z/e/d/a;
.super Li/c/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/d/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/o<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/p<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/n;Li/c/y/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/n<",
            "TT;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/p<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/o;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/d/a;->f:Li/c/n;

    .line 3
    iput-object p2, p0, Li/c/z/e/d/a;->g:Li/c/y/d;

    return-void
.end method


# virtual methods
.method protected k(Li/c/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/q<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/d/a$a;

    iget-object v1, p0, Li/c/z/e/d/a;->g:Li/c/y/d;

    invoke-direct {v0, p1, v1}, Li/c/z/e/d/a$a;-><init>(Li/c/q;Li/c/y/d;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/q;->a(Li/c/w/b;)V

    .line 3
    iget-object p1, p0, Li/c/z/e/d/a;->f:Li/c/n;

    invoke-interface {p1, v0}, Li/c/n;->a(Li/c/l;)V

    return-void
.end method
