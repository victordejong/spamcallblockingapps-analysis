.class public final enum Lcom/truecaller/insights/binders/utils/BillUiProperties;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/binders/utils/BillUiProperties;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0000\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/truecaller/insights/binders/utils/BillUiProperties;",
        "",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "UI_DUE_DATE",
        "DUE_AMT",
        "DATE",
        "DUEINS_NUM",
        "UI_DUEINS_TYPE",
        "UI_DUE_TYPE",
        "UI_TRX_DETAIL",
        "SENDER_ID",
        "MESSAGE_ID",
        "TRX_CURRENCY",
        "UI_DUE_AMT",
        "UI_TAGS",
        "ENABLE_EXPERIMENTAL_SENDER",
        "UI_TRX_TYPE",
        "BILL_DATE_TIME",
        "PAST_UI_DUE_DATE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum BILL_DATE_TIME:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum DUEINS_NUM:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum DUE_AMT:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum MESSAGE_ID:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum PAST_UI_DUE_DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum SENDER_ID:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum TRX_CURRENCY:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum UI_DUEINS_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum UI_DUE_AMT:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum UI_DUE_DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum UI_DUE_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum UI_TAGS:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum UI_TRX_DETAIL:Lcom/truecaller/insights/binders/utils/BillUiProperties;

.field public static final enum UI_TRX_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/truecaller/insights/binders/utils/BillUiProperties;

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "UI_DUE_DATE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUE_DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "DUE_AMT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->DUE_AMT:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "DATE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "DUEINS_NUM"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->DUEINS_NUM:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "UI_DUEINS_TYPE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUEINS_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "UI_DUE_TYPE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUE_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "UI_TRX_DETAIL"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_TRX_DETAIL:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "SENDER_ID"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "MESSAGE_ID"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "TRX_CURRENCY"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->TRX_CURRENCY:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "UI_DUE_AMT"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUE_AMT:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "UI_TAGS"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_TAGS:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "ENABLE_EXPERIMENTAL_SENDER"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "UI_TRX_TYPE"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_TRX_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "BILL_DATE_TIME"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->BILL_DATE_TIME:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    const-string v2, "PAST_UI_DUE_DATE"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/BillUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/BillUiProperties;->PAST_UI_DUE_DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/binders/utils/BillUiProperties;->$VALUES:[Lcom/truecaller/insights/binders/utils/BillUiProperties;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/binders/utils/BillUiProperties;
    .locals 1

    const-class v0, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/binders/utils/BillUiProperties;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/binders/utils/BillUiProperties;->$VALUES:[Lcom/truecaller/insights/binders/utils/BillUiProperties;

    invoke-virtual {v0}, [Lcom/truecaller/insights/binders/utils/BillUiProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/binders/utils/BillUiProperties;

    return-object v0
.end method
