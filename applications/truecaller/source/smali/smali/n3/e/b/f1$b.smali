.class public Ln3/e/b/f1$b;
.super Ln3/e/b/j1/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/b/f1;-><init>(Landroid/util/Size;Ln3/e/b/j1/b0;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:Ln3/e/b/f1;


# direct methods
.method public constructor <init>(Ln3/e/b/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/f1$b;->i:Ln3/e/b/f1;

    invoke-direct {p0}, Ln3/e/b/j1/k0;-><init>()V

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
    iget-object v0, p0, Ln3/e/b/f1$b;->i:Ln3/e/b/f1;

    iget-object v0, v0, Ln3/e/b/f1;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method
