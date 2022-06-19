.class public final Li/c/b0/e/f/a/u;
.super Li/c/b0/b/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/i;


# direct methods
.method public constructor <init>(Li/c/b0/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/l;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/u;->g:Li/c/b0/b/i;

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
    iget-object v0, p0, Li/c/b0/e/f/a/u;->g:Li/c/b0/b/i;

    new-instance v1, Li/c/b0/e/f/b/f;

    invoke-direct {v1, p1}, Li/c/b0/e/f/b/f;-><init>(Lo/a/b;)V

    invoke-interface {v0, v1}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void
.end method
