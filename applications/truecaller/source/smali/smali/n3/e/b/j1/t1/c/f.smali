.class public Ln3/e/b/j1/t1/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/t1/c/b<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c/a/c/a;


# direct methods
.method public constructor <init>(Ln3/c/a/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/j1/t1/c/f;->a:Ln3/c/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/t1/c/f;->a:Ln3/c/a/c/a;

    invoke-interface {v0, p1}, Ln3/c/a/c/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
