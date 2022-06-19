.class public final synthetic Ln3/e/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/b;


# instance fields
.field public final synthetic a:Ln3/e/d/t;


# direct methods
.method public synthetic constructor <init>(Ln3/e/d/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/c;->a:Ln3/e/d/t;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Ln3/e/d/c;->a:Ln3/e/d/t;

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, v0, Ln3/e/d/t;->d:Ln3/e/d/v;

    invoke-virtual {p1}, Ln3/e/d/v;->g()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
