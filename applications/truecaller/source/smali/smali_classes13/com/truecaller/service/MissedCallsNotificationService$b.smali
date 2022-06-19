.class public final enum Lcom/truecaller/service/MissedCallsNotificationService$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/service/MissedCallsNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/service/MissedCallsNotificationService$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/truecaller/service/MissedCallsNotificationService$b;

.field public static final enum b:Lcom/truecaller/service/MissedCallsNotificationService$b;

.field public static final enum c:Lcom/truecaller/service/MissedCallsNotificationService$b;

.field public static final synthetic d:[Lcom/truecaller/service/MissedCallsNotificationService$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/service/MissedCallsNotificationService$b;

    new-instance v1, Lcom/truecaller/service/MissedCallsNotificationService$b;

    const-string v2, "NORMAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/service/MissedCallsNotificationService$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/service/MissedCallsNotificationService$b;->a:Lcom/truecaller/service/MissedCallsNotificationService$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/service/MissedCallsNotificationService$b;

    const-string v2, "PROMO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/service/MissedCallsNotificationService$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/service/MissedCallsNotificationService$b;->b:Lcom/truecaller/service/MissedCallsNotificationService$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/service/MissedCallsNotificationService$b;

    const-string v2, "NO_NOTIFICATION"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/service/MissedCallsNotificationService$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/service/MissedCallsNotificationService$b;->c:Lcom/truecaller/service/MissedCallsNotificationService$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/service/MissedCallsNotificationService$b;->d:[Lcom/truecaller/service/MissedCallsNotificationService$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/service/MissedCallsNotificationService$b;
    .locals 1

    const-class v0, Lcom/truecaller/service/MissedCallsNotificationService$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/service/MissedCallsNotificationService$b;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/service/MissedCallsNotificationService$b;
    .locals 1

    sget-object v0, Lcom/truecaller/service/MissedCallsNotificationService$b;->d:[Lcom/truecaller/service/MissedCallsNotificationService$b;

    invoke-virtual {v0}, [Lcom/truecaller/service/MissedCallsNotificationService$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/service/MissedCallsNotificationService$b;

    return-object v0
.end method
