.class public final enum Lcom/truecaller/insights/models/feedback/FeedbackType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/models/feedback/FeedbackType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/insights/models/feedback/FeedbackType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CATEGORIZER_FEEDBACK",
        "SEMICARD_FEEDBACK",
        "INFOCARD_FEEDBACK",
        "UPDATES_FEEDBACK",
        "IMPORTANT_MESSAGE_FEEDBACK",
        "ROW_FEEDBACK",
        "IMPORTANT_TAB_QUESTION_FEEDBACK",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/models/feedback/FeedbackType;

.field public static final enum CATEGORIZER_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

.field public static final enum IMPORTANT_MESSAGE_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

.field public static final enum IMPORTANT_TAB_QUESTION_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

.field public static final enum INFOCARD_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

.field public static final enum ROW_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

.field public static final enum SEMICARD_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

.field public static final enum UPDATES_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/truecaller/insights/models/feedback/FeedbackType;

    new-instance v1, Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v2, "CATEGORIZER_FEEDBACK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->CATEGORIZER_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v2, "SEMICARD_FEEDBACK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->SEMICARD_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v2, "INFOCARD_FEEDBACK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->INFOCARD_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v2, "UPDATES_FEEDBACK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->UPDATES_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v2, "IMPORTANT_MESSAGE_FEEDBACK"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->IMPORTANT_MESSAGE_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v2, "ROW_FEEDBACK"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->ROW_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v2, "IMPORTANT_TAB_QUESTION_FEEDBACK"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/feedback/FeedbackType;->IMPORTANT_TAB_QUESTION_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/models/feedback/FeedbackType;->$VALUES:[Lcom/truecaller/insights/models/feedback/FeedbackType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/models/feedback/FeedbackType;
    .locals 1

    const-class v0, Lcom/truecaller/insights/models/feedback/FeedbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/models/feedback/FeedbackType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/models/feedback/FeedbackType;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/models/feedback/FeedbackType;->$VALUES:[Lcom/truecaller/insights/models/feedback/FeedbackType;

    invoke-virtual {v0}, [Lcom/truecaller/insights/models/feedback/FeedbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/models/feedback/FeedbackType;

    return-object v0
.end method
