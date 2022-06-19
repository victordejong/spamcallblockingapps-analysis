.class public Lcom/tenor/android/core/response/WeakRefCallback$1;
.super Lcom/tenor/android/core/weakref/WeakRefRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenor/android/core/response/WeakRefCallback;->onResponse(Lx3/b;Lx3/a0;)V
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

.field public final synthetic val$response:Lx3/a0;


# direct methods
.method public constructor <init>(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/ref/WeakReference;Lx3/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tenor/android/core/response/WeakRefCallback$1;->this$0:Lcom/tenor/android/core/response/WeakRefCallback;

    iput-object p3, p0, Lcom/tenor/android/core/response/WeakRefCallback$1;->val$response:Lx3/a0;

    invoke-direct {p0, p2}, Lcom/tenor/android/core/weakref/WeakRefRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$1;->val$response:Lx3/a0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$1;->this$0:Lcom/tenor/android/core/response/WeakRefCallback;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/tenor/android/core/response/WeakRefCallback;->access$000(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/Object;Ljava/lang/Throwable;Lu3/k0;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$1;->val$response:Lx3/a0;

    .line 4
    iget-object v1, v0, Lx3/a0;->b:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/tenor/android/core/response/WeakRefCallback$1;->this$0:Lcom/tenor/android/core/response/WeakRefCallback;

    .line 6
    iget-object v0, v0, Lx3/a0;->a:Lu3/k0;

    .line 7
    invoke-static {v2, p1, v1, v0}, Lcom/tenor/android/core/response/WeakRefCallback;->access$100(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/Object;Ljava/lang/Object;Lu3/k0;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback$1;->this$0:Lcom/tenor/android/core/response/WeakRefCallback;

    iget-object v1, p0, Lcom/tenor/android/core/response/WeakRefCallback$1;->val$response:Lx3/a0;

    .line 9
    iget-object v1, v1, Lx3/a0;->c:Lu3/l0;

    .line 10
    invoke-static {v1}, Lcom/tenor/android/core/response/WeakRefCallback;->access$200(Lu3/l0;)Ljava/lang/Throwable;

    move-result-object v1

    iget-object v2, p0, Lcom/tenor/android/core/response/WeakRefCallback$1;->val$response:Lx3/a0;

    .line 11
    iget-object v2, v2, Lx3/a0;->a:Lu3/k0;

    .line 12
    invoke-static {v0, p1, v1, v2}, Lcom/tenor/android/core/response/WeakRefCallback;->access$000(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/Object;Ljava/lang/Throwable;Lu3/k0;)V

    :goto_0
    return-void
.end method
