.class public final Li/c/b0/e/f/c/p;
.super Li/c/b0/b/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/c/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/l<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/l;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/p;->g:Li/c/b0/b/t;

    return-void
.end method


# virtual methods
.method protected u(Lo/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/p;->g:Li/c/b0/b/t;

    new-instance v1, Li/c/b0/e/f/c/p$a;

    invoke-direct {v1, p1}, Li/c/b0/e/f/c/p$a;-><init>(Lo/a/b;)V

    invoke-interface {v0, v1}, Li/c/b0/b/t;->a(Li/c/b0/b/r;)V

    return-void
.end method
