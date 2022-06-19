.class public final Li/c/b0/e/f/b/r;
.super Li/c/b0/e/f/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/b/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final i:Z


# direct methods
.method public constructor <init>(Li/c/b0/b/l;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/l<",
            "TT;>;TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/b/a;-><init>(Li/c/b0/b/l;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/b/r;->h:Ljava/lang/Object;

    .line 3
    iput-boolean p3, p0, Li/c/b0/e/f/b/r;->i:Z

    return-void
.end method


# virtual methods
.method protected u(Lo/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/a;->g:Li/c/b0/b/l;

    new-instance v1, Li/c/b0/e/f/b/r$a;

    iget-object v2, p0, Li/c/b0/e/f/b/r;->h:Ljava/lang/Object;

    iget-boolean v3, p0, Li/c/b0/e/f/b/r;->i:Z

    invoke-direct {v1, p1, v2, v3}, Li/c/b0/e/f/b/r$a;-><init>(Lo/a/b;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Li/c/b0/b/l;->t(Li/c/b0/b/o;)V

    return-void
.end method
