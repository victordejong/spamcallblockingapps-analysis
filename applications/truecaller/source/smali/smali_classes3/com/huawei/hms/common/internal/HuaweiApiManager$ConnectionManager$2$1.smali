.class public Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2$1;->this$2:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2$1;->this$2:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2;

    iget-object v0, v0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->disconnect()Z

    return-void
.end method
