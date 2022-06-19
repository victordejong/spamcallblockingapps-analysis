.class public final enum Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/notifications/internal/InternalTruecallerNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

.field public static final enum NEW:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

.field public static final enum VIEWED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;


# instance fields
.field private final value:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "NEW"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->NEW:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    .line 2
    new-instance v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "VIEWED"

    invoke-direct {v2, v6, v1, v5}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->VIEWED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    new-array v3, v3, [Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    .line 3
    sput-object v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->$VALUES:[Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->value:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic access$000(Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->value:Ljava/lang/Integer;

    return-object p0
.end method

.method public static getFromValue(Ljava/lang/Integer;)Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->values()[Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    invoke-virtual {v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->getValue()Ljava/lang/Integer;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NotificationState value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->$VALUES:[Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    invoke-virtual {v0}, [Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->value:Ljava/lang/Integer;

    return-object v0
.end method
