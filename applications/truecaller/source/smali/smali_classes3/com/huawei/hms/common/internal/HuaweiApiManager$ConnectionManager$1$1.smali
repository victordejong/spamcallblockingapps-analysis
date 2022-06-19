.class public Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1$1;->this$2:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1$1;->this$2:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;

    iget-object v0, v0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->access$200(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1$1;->this$2:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;

    iget-object v1, v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->val$callbackWrapper:Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
