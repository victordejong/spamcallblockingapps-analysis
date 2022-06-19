.class public final enum Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

.field public static final enum ACCEPTED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

.field public static final enum DENIED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

.field public static final enum NONE:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

.field public static final enum REPLIED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

.field public static final enum VIEWED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;


# instance fields
.field private val:J


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->NONE:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    .line 2
    new-instance v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    const-string v3, "VIEWED"

    const/4 v4, 0x1

    const-wide/16 v5, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->VIEWED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    .line 3
    new-instance v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    const-string v5, "ACCEPTED"

    const/4 v6, 0x2

    const-wide/16 v7, 0x2

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->ACCEPTED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    .line 4
    new-instance v5, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    const-string v7, "DENIED"

    const/4 v8, 0x3

    const-wide/16 v9, 0x3

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->DENIED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    .line 5
    new-instance v7, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    const-string v9, "REPLIED"

    const/4 v10, 0x4

    const-wide/16 v11, 0x4

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->REPLIED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->$VALUES:[Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->val:J

    .line 3
    iput-wide p3, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->val:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->$VALUES:[Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    invoke-virtual {v0}, [Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    return-object v0
.end method


# virtual methods
.method public getVal()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->val:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
