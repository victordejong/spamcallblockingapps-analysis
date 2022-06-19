.class public final synthetic Ln3/e/d/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/d/z;


# direct methods
.method public synthetic constructor <init>(Ln3/e/d/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/k;->a:Ln3/e/d/z;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln3/e/d/k;->a:Ln3/e/d/z;

    .line 1
    iget-object v0, v0, Ln3/e/d/z;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-string p1, "textureViewImpl_waitForNextFrame"

    return-object p1
.end method
