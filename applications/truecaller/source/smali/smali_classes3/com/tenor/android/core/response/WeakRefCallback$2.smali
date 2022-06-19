.class public Lcom/tenor/android/core/response/WeakRefCallback$2;
.super Lcom/tenor/android/core/weakref/WeakRefRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenor/android/core/response/WeakRefCallback;->onFailure(Lx3/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tenor/android/core/weakref/WeakRefRunnable<",
        "TCTX;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tenor/android/core/response/WeakRefCallback;

.field public final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/ref/WeakReference;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->this$0:Lcom/tenor/android/core/response/WeakRefCallback;

    iput-object p3, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0, p2}, Lcom/tenor/android/core/weakref/WeakRefRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->val$throwable:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->this$0:Lcom/tenor/android/core/response/WeakRefCallback;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "unknown error"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v2, v1}, Lcom/tenor/android/core/response/WeakRefCallback;->access$000(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/Object;Ljava/lang/Throwable;Lu3/k0;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->this$0:Lcom/tenor/android/core/response/WeakRefCallback;

    invoke-virtual {v0}, Lcom/tenor/android/core/response/WeakRefCallback;->isReportNetworkDropAsException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->this$0:Lcom/tenor/android/core/response/WeakRefCallback;

    iget-object v2, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->val$throwable:Ljava/lang/Throwable;

    invoke-static {v0, p1, v2, v1}, Lcom/tenor/android/core/response/WeakRefCallback;->access$000(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/Object;Ljava/lang/Throwable;Lu3/k0;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "canceled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->val$throwable:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 6
    iget-object p1, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->this$0:Lcom/tenor/android/core/response/WeakRefCallback;

    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lcom/tenor/android/core/response/WeakRefCallback;->onNetworkDropCaught(Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->this$0:Lcom/tenor/android/core/response/WeakRefCallback;

    iget-object v2, p0, Lcom/tenor/android/core/response/WeakRefCallback$2;->val$throwable:Ljava/lang/Throwable;

    invoke-static {v0, p1, v2, v1}, Lcom/tenor/android/core/response/WeakRefCallback;->access$000(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/Object;Ljava/lang/Throwable;Lu3/k0;)V

    return-void
.end method
