.class public final enum Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CONTENT_CLICK",
        "ANSWER_CLICK",
        "DECLINE_CLICK",
        "HANGUP_CLICK",
        "MUTE_CLICK",
        "UNMUTE_CLICK",
        "SPEAKER_ON_CLICK",
        "SPEAKER_OFF_CLICK",
        "incallui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

.field public static final enum ANSWER_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

.field public static final enum CONTENT_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

.field public static final enum DECLINE_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

.field public static final enum HANGUP_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

.field public static final enum MUTE_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

.field public static final enum SPEAKER_OFF_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

.field public static final enum SPEAKER_ON_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

.field public static final enum UNMUTE_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    new-instance v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    const-string v2, "CONTENT_CLICK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->CONTENT_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    const-string v2, "ANSWER_CLICK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->ANSWER_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    const-string v2, "DECLINE_CLICK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->DECLINE_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    const-string v2, "HANGUP_CLICK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->HANGUP_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    const-string v2, "MUTE_CLICK"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->MUTE_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    const-string v2, "UNMUTE_CLICK"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->UNMUTE_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    const-string v2, "SPEAKER_ON_CLICK"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->SPEAKER_ON_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    const-string v2, "SPEAKER_OFF_CLICK"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->SPEAKER_OFF_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->$VALUES:[Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;
    .locals 1

    const-class v0, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;
    .locals 1

    sget-object v0, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->$VALUES:[Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    invoke-virtual {v0}, [Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    return-object v0
.end method
