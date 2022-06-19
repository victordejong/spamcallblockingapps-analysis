.class public final Li/c/b0/e/f/e/v1;
.super Li/c/b0/b/v;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;",
        "Li/c/b0/e/c/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/Object;
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
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/v1;->f:Ljava/lang/Object;

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
    iget-object v0, p0, Li/c/b0/e/f/e/v1;->f:Ljava/lang/Object;

    return-object v0
.end method

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
    new-instance v0, Li/c/b0/e/f/e/b3$a;

    iget-object v1, p0, Li/c/b0/e/f/e/v1;->f:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Li/c/b0/e/f/e/b3$a;-><init>(Li/c/b0/b/c0;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    invoke-virtual {v0}, Li/c/b0/e/f/e/b3$a;->run()V

    return-void
.end method
