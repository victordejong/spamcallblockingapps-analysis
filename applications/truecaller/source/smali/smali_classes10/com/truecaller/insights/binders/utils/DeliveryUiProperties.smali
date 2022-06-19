.class public final enum Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0000\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;",
        "",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "MESSAGE_ID",
        "SENDER_ID",
        "ICON",
        "ORDER_STATUS",
        "ITEM_NAME",
        "ENABLE_EXPERIMENTAL_SENDER",
        "UI_DATE",
        "ACTION_PRIMARY",
        "UI_TITLE",
        "UI_SUBTITLE",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

.field public static final enum ACTION_PRIMARY:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

.field public static final enum ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

.field public static final enum ICON:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

.field public static final enum ITEM_NAME:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

.field public static final enum MESSAGE_ID:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

.field public static final enum ORDER_STATUS:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

.field public static final enum SENDER_ID:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

.field public static final enum UI_DATE:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

.field public static final enum UI_SUBTITLE:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

.field public static final enum UI_TITLE:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const-string v2, "MESSAGE_ID"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const-string v2, "SENDER_ID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const-string v2, "ICON"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ICON:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const-string v2, "ORDER_STATUS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ORDER_STATUS:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const-string v2, "ITEM_NAME"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ITEM_NAME:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const-string v2, "ENABLE_EXPERIMENTAL_SENDER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const-string v2, "UI_DATE"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->UI_DATE:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const-string v2, "ACTION_PRIMARY"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ACTION_PRIMARY:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const-string v2, "UI_TITLE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->UI_TITLE:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    const-string v2, "UI_SUBTITLE"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->UI_SUBTITLE:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->$VALUES:[Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;
    .locals 1

    const-class v0, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->$VALUES:[Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    invoke-virtual {v0}, [Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    return-object v0
.end method
