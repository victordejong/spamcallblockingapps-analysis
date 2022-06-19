.class public final enum Lcom/truecaller/insights/models/smartcards/FeedbackClass;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/models/smartcards/FeedbackClass;",
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
        "Lcom/truecaller/insights/models/smartcards/FeedbackClass;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SEMICARD",
        "INFOCARD",
        "UPDATES",
        "IMPORTANT_MESSAGE",
        "EDIT_TAG",
        "SPAM",
        "NOT_SPAM",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/models/smartcards/FeedbackClass;

.field public static final enum EDIT_TAG:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

.field public static final enum IMPORTANT_MESSAGE:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

.field public static final enum INFOCARD:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

.field public static final enum NOT_SPAM:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

.field public static final enum SEMICARD:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

.field public static final enum SPAM:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

.field public static final enum UPDATES:Lcom/truecaller/insights/models/smartcards/FeedbackClass;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    new-instance v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    const-string v2, "SEMICARD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/smartcards/FeedbackClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->SEMICARD:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    const-string v2, "INFOCARD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/smartcards/FeedbackClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->INFOCARD:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    const-string v2, "UPDATES"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/smartcards/FeedbackClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->UPDATES:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    const-string v2, "IMPORTANT_MESSAGE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/smartcards/FeedbackClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->IMPORTANT_MESSAGE:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    const-string v2, "EDIT_TAG"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/smartcards/FeedbackClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->EDIT_TAG:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    const-string v2, "SPAM"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/smartcards/FeedbackClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->SPAM:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    const-string v2, "NOT_SPAM"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/models/smartcards/FeedbackClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->NOT_SPAM:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->$VALUES:[Lcom/truecaller/insights/models/smartcards/FeedbackClass;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/models/smartcards/FeedbackClass;
    .locals 1

    const-class v0, Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/models/smartcards/FeedbackClass;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->$VALUES:[Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    invoke-virtual {v0}, [Lcom/truecaller/insights/models/smartcards/FeedbackClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    return-object v0
.end method
