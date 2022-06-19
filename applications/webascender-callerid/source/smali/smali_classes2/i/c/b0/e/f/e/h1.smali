.class public final Li/c/b0/e/f/e/h1;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/h1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Lo/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/a<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/h1;->f:Lo/a/a;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/h1;->f:Lo/a/a;

    new-instance v1, Li/c/b0/e/f/e/h1$a;

    invoke-direct {v1, p1}, Li/c/b0/e/f/e/h1$a;-><init>(Li/c/b0/b/c0;)V

    invoke-interface {v0, v1}, Lo/a/a;->a(Lo/a/b;)V

    return-void
.end method
