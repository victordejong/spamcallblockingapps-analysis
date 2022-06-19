.class public final enum Lcom/truecaller/premium/util/NotificationAccessSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/util/NotificationAccessSource;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/truecaller/premium/util/NotificationAccessSource;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "NOTIFICATION_AUTO_SEARCH",
        "MISSED_CALL_NOTIFICATION",
        "BLOCK_CALL_RING_SILENT",
        "WHATS_APP_CALLS",
        "SETTINGS",
        "PREMIUM_TAB",
        "NOTIFICATION_RING_SILENT",
        "BOTTOM_BAR_MISSED_CALL_NOTIFICATION",
        "BOTTOM_BAR_RING_SILENT",
        "PROMO_BANNER_MISSED_CALL_NOTIFICATION",
        "PROMO_BANNER_RING_SILENT",
        "premium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum BLOCK_CALL_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum BOTTOM_BAR_MISSED_CALL_NOTIFICATION:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum BOTTOM_BAR_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum MISSED_CALL_NOTIFICATION:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum NOTIFICATION_AUTO_SEARCH:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum NOTIFICATION_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum PREMIUM_TAB:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum PROMO_BANNER_MISSED_CALL_NOTIFICATION:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum PROMO_BANNER_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum SETTINGS:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum UNKNOWN:Lcom/truecaller/premium/util/NotificationAccessSource;

.field public static final enum WHATS_APP_CALLS:Lcom/truecaller/premium/util/NotificationAccessSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/truecaller/premium/util/NotificationAccessSource;

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->UNKNOWN:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "NOTIFICATION_AUTO_SEARCH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->NOTIFICATION_AUTO_SEARCH:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "MISSED_CALL_NOTIFICATION"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->MISSED_CALL_NOTIFICATION:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "BLOCK_CALL_RING_SILENT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->BLOCK_CALL_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "WHATS_APP_CALLS"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->WHATS_APP_CALLS:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "SETTINGS"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->SETTINGS:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "PREMIUM_TAB"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->PREMIUM_TAB:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "NOTIFICATION_RING_SILENT"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->NOTIFICATION_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "BOTTOM_BAR_MISSED_CALL_NOTIFICATION"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->BOTTOM_BAR_MISSED_CALL_NOTIFICATION:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "BOTTOM_BAR_RING_SILENT"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->BOTTOM_BAR_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "PROMO_BANNER_MISSED_CALL_NOTIFICATION"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->PROMO_BANNER_MISSED_CALL_NOTIFICATION:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/util/NotificationAccessSource;

    const-string v2, "PROMO_BANNER_RING_SILENT"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/premium/util/NotificationAccessSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->PROMO_BANNER_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/premium/util/NotificationAccessSource;->$VALUES:[Lcom/truecaller/premium/util/NotificationAccessSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/util/NotificationAccessSource;
    .locals 1

    const-class v0, Lcom/truecaller/premium/util/NotificationAccessSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/util/NotificationAccessSource;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/util/NotificationAccessSource;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/util/NotificationAccessSource;->$VALUES:[Lcom/truecaller/premium/util/NotificationAccessSource;

    invoke-virtual {v0}, [Lcom/truecaller/premium/util/NotificationAccessSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/util/NotificationAccessSource;

    return-object v0
.end method
