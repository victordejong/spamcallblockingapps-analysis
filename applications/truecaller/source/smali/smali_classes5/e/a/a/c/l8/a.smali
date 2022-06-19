.class public final Le/a/a/c/l8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic c:Ln3/e/b/c1;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;Lcom/google/common/util/concurrent/ListenableFuture;Ln3/e/b/c1;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/l8/a;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    iput-object p2, p0, Le/a/a/c/l8/a;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Le/a/a/c/l8/a;->c:Ln3/e/b/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/c/l8/a;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/c/c;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ln3/e/c/c;->c()V

    .line 3
    iget-object v1, p0, Le/a/a/c/l8/a;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-virtual {v1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/a/c/l8/a;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ln3/v/b0;

    sget-object v2, Ln3/e/b/m0;->c:Ln3/e/b/m0;

    const/4 v3, 0x1

    new-array v3, v3, [Ln3/e/b/g1;

    const/4 v4, 0x0

    iget-object v5, p0, Le/a/a/c/l8/a;->c:Ln3/e/b/c1;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ln3/e/c/c;->a(Ln3/v/b0;Ln3/e/b/m0;[Ln3/e/b/g1;)Ln3/e/b/h0;

    .line 5
    iget-object v1, p0, Le/a/a/c/l8/a;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 6
    iput-object v0, v1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->w:Ln3/e/c/c;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
