.class public Lcom/huawei/hms/common/internal/HandlerMessageWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mApi:Lcom/huawei/hms/common/HuaweiApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/common/HuaweiApi<",
            "*>;"
        }
    .end annotation
.end field

.field public final mContentWrapper:Lcom/huawei/hms/common/internal/BaseContentWrapper;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/common/internal/BaseContentWrapper;ILcom/huawei/hms/common/HuaweiApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/internal/BaseContentWrapper;",
            "I",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HandlerMessageWrapper;->mContentWrapper:Lcom/huawei/hms/common/internal/BaseContentWrapper;

    .line 3
    iput-object p3, p0, Lcom/huawei/hms/common/internal/HandlerMessageWrapper;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    return-void
.end method
