.class public final Li/c/b0/e/f/c/j;
.super Li/c/b0/b/p;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/p<",
        "TT;>;",
        "Li/c/b0/e/c/i<",
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
    invoke-direct {p0}, Li/c/b0/b/p;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/j;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/j;->f:Ljava/lang/Object;

    return-object v0
.end method

.method protected r(Li/c/b0/b/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/c/b;->a()Li/c/b0/c/c;

    move-result-object v0

    invoke-interface {p1, v0}, Li/c/b0/b/r;->onSubscribe(Li/c/b0/c/c;)V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/c/j;->f:Ljava/lang/Object;

    invoke-interface {p1, v0}, Li/c/b0/b/r;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
