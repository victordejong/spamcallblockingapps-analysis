.class public final Li/c/z/e/f/e;
.super Li/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/f/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/u<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/u<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/f;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/f/e;->g:Li/c/u;

    return-void
.end method


# virtual methods
.method public I(Lo/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/f/e;->g:Li/c/u;

    new-instance v1, Li/c/z/e/f/e$a;

    invoke-direct {v1, p1}, Li/c/z/e/f/e$a;-><init>(Lo/a/b;)V

    invoke-interface {v0, v1}, Li/c/u;->c(Li/c/t;)V

    return-void
.end method
