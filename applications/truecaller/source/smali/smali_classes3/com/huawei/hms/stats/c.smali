.class public Lcom/huawei/hms/stats/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Z = false

.field public static c:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/stats/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/huawei/hms/stats/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/huawei/hms/stats/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const-string v1, "com.huawei.hianalytics.process.HiAnalyticsInstance"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "HianalyticsExist"

    const-string v4, "In isHianalyticsExist, Failed to find class HiAnalyticsConfig."

    .line 4
    invoke-static {v1, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    :goto_0
    const-string v4, "com.huawei.hms.hatool.HmsHiAnalyticsUtils"

    .line 5
    :try_start_3
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    goto :goto_1

    :catch_1
    :try_start_4
    const-string v4, "HianalyticsExist"

    const-string v5, "In isHianalyticsExist, Failed to find class HmsHiAnalyticsUtils."

    .line 6
    invoke-static {v4, v5}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 7
    sput-boolean v3, Lcom/huawei/hms/stats/c;->c:Z

    .line 8
    :cond_0
    sput-boolean v3, Lcom/huawei/hms/stats/c;->b:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "HianalyticsExist"

    .line 9
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hianalytics exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/huawei/hms/stats/c;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 11
    sget-boolean v0, Lcom/huawei/hms/stats/c;->c:Z

    return v0

    :catchall_0
    move-exception v1

    .line 12
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method
