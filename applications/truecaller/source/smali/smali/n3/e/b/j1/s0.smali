.class public final Ln3/e/b/j1/s0;
.super Ln3/e/b/j1/k0;
.source "SourceFile"


# instance fields
.field public final i:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/e/b/j1/k0;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/b/j1/s0;->i:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public g()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/s0;->i:Landroid/view/Surface;

    invoke-static {v0}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
