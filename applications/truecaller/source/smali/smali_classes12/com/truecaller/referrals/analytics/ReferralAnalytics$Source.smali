.class public final enum Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "PACS",
        "FACS",
        "DETAILS_VIEW",
        "CONVERSATION",
        "CONTACTS",
        "QA_MENU",
        "referral_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

.field public static final enum CONTACTS:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

.field public static final enum CONVERSATION:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

.field public static final enum DETAILS_VIEW:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

.field public static final enum FACS:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

.field public static final enum PACS:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

.field public static final enum QA_MENU:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    new-instance v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    const-string v2, "PACS"

    const/4 v3, 0x0

    const-string v4, "afterCall"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->PACS:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    const-string v2, "FACS"

    const/4 v3, 0x1

    const-string v4, "fullAfterCall"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->FACS:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    const-string v2, "DETAILS_VIEW"

    const/4 v3, 0x2

    const-string v4, "DetailsViewV2"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->DETAILS_VIEW:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    const-string v2, "CONVERSATION"

    const/4 v3, 0x3

    const-string v4, "conversation"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->CONVERSATION:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    const-string v2, "CONTACTS"

    const/4 v3, 0x4

    const-string v4, "contacts"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->CONTACTS:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    const-string v2, "QA_MENU"

    const/4 v3, 0x5

    const-string v4, "qaMenu"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->QA_MENU:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->$VALUES:[Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

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

    iput-object p3, p0, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;
    .locals 1

    const-class v0, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;
    .locals 1

    sget-object v0, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->$VALUES:[Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    invoke-virtual {v0}, [Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->value:Ljava/lang/String;

    return-object v0
.end method
