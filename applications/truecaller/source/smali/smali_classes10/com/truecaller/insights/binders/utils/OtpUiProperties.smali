.class public final enum Lcom/truecaller/insights/binders/utils/OtpUiProperties;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/binders/utils/OtpUiProperties;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/truecaller/insights/binders/utils/OtpUiProperties;",
        "",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "OTP_NUM",
        "MESSAGE_ID",
        "OTP_TYPE",
        "SENDER_ID",
        "OTP_DATE_TIME",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/binders/utils/OtpUiProperties;

.field public static final enum MESSAGE_ID:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

.field public static final enum OTP_DATE_TIME:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

.field public static final enum OTP_NUM:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

.field public static final enum OTP_TYPE:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

.field public static final enum SENDER_ID:Lcom/truecaller/insights/binders/utils/OtpUiProperties;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    new-instance v1, Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    const-string v2, "OTP_NUM"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/OtpUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/OtpUiProperties;->OTP_NUM:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    const-string v2, "MESSAGE_ID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/OtpUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/OtpUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    const-string v2, "OTP_TYPE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/OtpUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/OtpUiProperties;->OTP_TYPE:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    const-string v2, "SENDER_ID"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/OtpUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/OtpUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    const-string v2, "OTP_DATE_TIME"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/binders/utils/OtpUiProperties;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/OtpUiProperties;->OTP_DATE_TIME:Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/binders/utils/OtpUiProperties;->$VALUES:[Lcom/truecaller/insights/binders/utils/OtpUiProperties;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/binders/utils/OtpUiProperties;
    .locals 1

    const-class v0, Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/binders/utils/OtpUiProperties;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/binders/utils/OtpUiProperties;->$VALUES:[Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    invoke-virtual {v0}, [Lcom/truecaller/insights/binders/utils/OtpUiProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    return-object v0
.end method
