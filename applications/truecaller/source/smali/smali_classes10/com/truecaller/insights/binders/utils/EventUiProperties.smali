.class public final enum Lcom/truecaller/insights/binders/utils/EventUiProperties;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/binders/utils/EventUiProperties;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0000\n\u0002\u0008\u0012\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/insights/binders/utils/EventUiProperties;",
        "",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "MESSAGE_ID",
        "SENDER_ID",
        "EVENT_TYPE",
        "EVENT_STATUS",
        "NAME",
        "TITLE",
        "SUBTITLE",
        "BOOKING_ID",
        "SECRET_CODE",
        "LOCATION",
        "PRIMARY_ICON",
        "SMALL_TICK_MARK",
        "BIG_TICK_MARK",
        "ENABLE_EXPERIMENTAL_SENDER",
        "ACTION_PRIMARY",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum ACTION_PRIMARY:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum BIG_TICK_MARK:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum BOOKING_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum EVENT_STATUS:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum EVENT_TYPE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum LOCATION:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum MESSAGE_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum NAME:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum PRIMARY_ICON:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum SECRET_CODE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum SENDER_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum SMALL_TICK_MARK:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum SUBTITLE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

.field public static final enum TITLE:Lcom/truecaller/insights/binders/utils/EventUiProperties;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/truecaller/insights/binders/utils/EventUiProperties;

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "MESSAGE_ID"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "SENDER_ID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "EVENT_TYPE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->EVENT_TYPE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "EVENT_STATUS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->EVENT_STATUS:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "NAME"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->NAME:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "TITLE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->TITLE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "SUBTITLE"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SUBTITLE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "BOOKING_ID"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->BOOKING_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "SECRET_CODE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SECRET_CODE:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "LOCATION"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->LOCATION:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "PRIMARY_ICON"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->PRIMARY_ICON:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "SMALL_TICK_MARK"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SMALL_TICK_MARK:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "BIG_TICK_MARK"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->BIG_TICK_MARK:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "ENABLE_EXPERIMENTAL_SENDER"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    const-string v2, "ACTION_PRIMARY"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/EventUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/EventUiProperties;->ACTION_PRIMARY:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/binders/utils/EventUiProperties;->$VALUES:[Lcom/truecaller/insights/binders/utils/EventUiProperties;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/binders/utils/EventUiProperties;
    .locals 1

    const-class v0, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/binders/utils/EventUiProperties;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/binders/utils/EventUiProperties;->$VALUES:[Lcom/truecaller/insights/binders/utils/EventUiProperties;

    invoke-virtual {v0}, [Lcom/truecaller/insights/binders/utils/EventUiProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/binders/utils/EventUiProperties;

    return-object v0
.end method
