.class public interface abstract Lcom/huawei/hms/support/api/safetydetect/SafetyDetectClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract enableAppsCheck()Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/VerifyAppsCheckEnabledResp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaliciousAppsList()Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/MaliciousAppsListResp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRiskToken()Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/RiskTokenResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiDetectStatus()Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/WifiDetectResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initAntiFraud(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initUrlCheck()Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initUserDetect()Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isVerifyAppsCheck()Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/VerifyAppsCheckEnabledResp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract releaseAntiFraud()Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shutdownUrlCheck()Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shutdownUserDetect()Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sysIntegrity(Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityRequest;)Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityRequest;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityResp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sysIntegrity([BLjava/lang/String;)Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/SysIntegrityResp;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract urlCheck(Ljava/lang/String;Ljava/lang/String;[I)Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/UrlCheckResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract userDetection(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/support/api/entity/safetydetect/UserDetectResponse;",
            ">;"
        }
    .end annotation
.end method
