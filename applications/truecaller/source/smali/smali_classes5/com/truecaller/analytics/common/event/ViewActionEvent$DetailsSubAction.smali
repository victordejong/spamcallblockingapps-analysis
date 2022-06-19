.class public final enum Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/analytics/common/event/ViewActionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailsSubAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "PHONE_BOOK",
        "TRUECALLER",
        "CLOUD_CONTACT",
        "CATEGORY",
        "HEADER",
        "BUTTON",
        "ITEM",
        "AVATAR",
        "CALL_RECORDING",
        "NAME_CLICKED",
        "PREMIUM_BADGE",
        "common-analytics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum AVATAR:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum BUTTON:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum CALL_RECORDING:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum CATEGORY:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum CLOUD_CONTACT:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum HEADER:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum ITEM:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum NAME_CLICKED:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum PHONE_BOOK:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum PREMIUM_BADGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

.field public static final enum TRUECALLER:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "PHONE_BOOK"

    const/4 v3, 0x0

    const-string v4, "phoneBook"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->PHONE_BOOK:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "TRUECALLER"

    const/4 v3, 0x1

    const-string v4, "truecaller"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->TRUECALLER:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "CLOUD_CONTACT"

    const/4 v3, 0x2

    const-string v4, "cloudContact"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->CLOUD_CONTACT:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "CATEGORY"

    const/4 v3, 0x3

    const-string v4, "category"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->CATEGORY:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "HEADER"

    const/4 v3, 0x4

    const-string v4, "header"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->HEADER:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "BUTTON"

    const/4 v3, 0x5

    const-string v4, "button"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->BUTTON:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "ITEM"

    const/4 v3, 0x6

    const-string v4, "item"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->ITEM:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "AVATAR"

    const/4 v3, 0x7

    const-string v4, "avatar"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->AVATAR:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "CALL_RECORDING"

    const/16 v3, 0x8

    const-string v4, "callRecording"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->CALL_RECORDING:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "NAME_CLICKED"

    const/16 v3, 0x9

    const-string v4, "nameClicked"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->NAME_CLICKED:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    const-string v2, "PREMIUM_BADGE"

    const/16 v3, 0xa

    const-string v4, "premiumBadge"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->PREMIUM_BADGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->$VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;
    .locals 1

    const-class v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;
    .locals 1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->$VALUES:[Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    invoke-virtual {v0}, [Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->value:Ljava/lang/String;

    return-object v0
.end method
