.class public Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/common/internal/AnyClient$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->postMessage(Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

.field public final synthetic val$callbackWrapper:Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    iput-object p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->val$callbackWrapper:Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->val$callbackWrapper:Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;->getCallBack()Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    iget-object p2, p2, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {p2}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-static {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->access$200(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Ljava/util/Queue;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->val$callbackWrapper:Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;

    invoke-interface {p1, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    iget-object p1, p1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1$1;

    invoke-direct {p2, p0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1$1;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
