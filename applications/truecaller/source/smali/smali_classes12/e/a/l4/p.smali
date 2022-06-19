.class public final Le/a/l4/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le/a/l4/e;


# direct methods
.method public static a(Lcom/truecaller/api/services/presence/v1/models/Availability;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v1

    invoke-static {v1}, Lcom/truecaller/presence/AvailabilityStatus;->fromGrpsStatus(Lcom/truecaller/api/services/presence/v1/models/Availability$Status;)Lcom/truecaller/presence/AvailabilityStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getContext()Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    move-result-object p0

    invoke-static {p0}, Lcom/truecaller/presence/AvailabilityContext;->fromGrpcContext(Lcom/truecaller/api/services/presence/v1/models/Availability$Context;)Lcom/truecaller/presence/AvailabilityContext;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
