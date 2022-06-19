.class public Lcom/huawei/hms/availableupdate/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/huawei/hms/availableupdate/t;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/availableupdate/t;->a:Z

    return-void
.end method

.method public static b()Lcom/huawei/hms/availableupdate/t;
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hms/availableupdate/t;->b:Lcom/huawei/hms/availableupdate/t;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/huawei/hms/availableupdate/t;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hms/availableupdate/t;->b:Lcom/huawei/hms/availableupdate/t;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/huawei/hms/availableupdate/t;

    invoke-direct {v1}, Lcom/huawei/hms/availableupdate/t;-><init>()V

    sput-object v1, Lcom/huawei/hms/availableupdate/t;->b:Lcom/huawei/hms/availableupdate/t;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hms/availableupdate/t;->b:Lcom/huawei/hms/availableupdate/t;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/huawei/hms/availableupdate/t;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/availableupdate/t;->a:Z

    return v0
.end method
