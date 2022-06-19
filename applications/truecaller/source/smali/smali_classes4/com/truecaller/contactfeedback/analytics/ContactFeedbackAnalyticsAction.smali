.class public final enum Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "VIEWED",
        "DISMISSED",
        "VOTE_POSITIVE",
        "VOTE_NEGATIVE",
        "SAVE_SUGGESTED_NAME",
        "contact-feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

.field public static final enum DISMISSED:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

.field public static final enum SAVE_SUGGESTED_NAME:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

.field public static final enum VIEWED:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

.field public static final enum VOTE_NEGATIVE:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

.field public static final enum VOTE_POSITIVE:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    new-instance v1, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    const-string v2, "VIEWED"

    const/4 v3, 0x0

    const-string v4, "NameFeedbackViewed"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->VIEWED:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    const-string v2, "DISMISSED"

    const/4 v3, 0x1

    const-string v4, "NameFeedbackDismissed"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->DISMISSED:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    const-string v2, "VOTE_POSITIVE"

    const/4 v3, 0x2

    const-string v4, "NameFeedbackPositive"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->VOTE_POSITIVE:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    const-string v2, "VOTE_NEGATIVE"

    const/4 v3, 0x3

    const-string v4, "NameFeedbackNegative"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->VOTE_NEGATIVE:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    const-string v2, "SAVE_SUGGESTED_NAME"

    const/4 v3, 0x4

    const-string v4, "NameFeedbackSaveSuggestion"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->SAVE_SUGGESTED_NAME:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->$VALUES:[Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

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

    iput-object p3, p0, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;
    .locals 1

    const-class v0, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;
    .locals 1

    sget-object v0, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->$VALUES:[Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    invoke-virtual {v0}, [Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->value:Ljava/lang/String;

    return-object v0
.end method
