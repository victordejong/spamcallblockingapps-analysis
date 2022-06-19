.class public Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->onConnectionSuspended(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

.field public final synthetic val$cause:I


# direct methods
.method public constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$5;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    iput p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$5;->val$cause:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$5;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    iget v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$5;->val$cause:I

    invoke-static {v0, v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->access$800(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;I)V

    return-void
.end method
