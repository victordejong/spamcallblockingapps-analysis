.class public final enum Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "REQUEST_CALL_ME_BACK_FAILURE",
        "REASON_RESPONSE_NULL",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

.field public static final enum REASON_RESPONSE_NULL:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

.field public static final enum REQUEST_CALL_ME_BACK_FAILURE:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    new-instance v1, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    const-string v2, "REQUEST_CALL_ME_BACK_FAILURE"

    const/4 v3, 0x0

    const-string v4, "FAILURE"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->REQUEST_CALL_ME_BACK_FAILURE:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    const-string v2, "REASON_RESPONSE_NULL"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->REASON_RESPONSE_NULL:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->$VALUES:[Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

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

    iput-object p3, p0, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;
    .locals 1

    const-class v0, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;
    .locals 1

    sget-object v0, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->$VALUES:[Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    invoke-virtual {v0}, [Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackFailureReason;->value:Ljava/lang/String;

    return-object v0
.end method
