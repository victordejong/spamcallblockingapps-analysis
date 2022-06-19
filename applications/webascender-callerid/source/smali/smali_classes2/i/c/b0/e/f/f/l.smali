.class public final Li/c/b0/e/f/f/l;
.super Li/c/b0/b/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/l;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected C(Li/c/b0/b/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/c/b;->a()Li/c/b0/c/c;

    move-result-object v0

    invoke-interface {p1, v0}, Li/c/b0/b/g0;->onSubscribe(Li/c/b0/c/c;)V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/f/l;->f:Ljava/lang/Object;

    invoke-interface {p1, v0}, Li/c/b0/b/g0;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
