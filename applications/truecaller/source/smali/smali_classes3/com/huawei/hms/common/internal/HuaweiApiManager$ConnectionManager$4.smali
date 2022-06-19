.class public Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->access$700(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)V

    return-void
.end method
