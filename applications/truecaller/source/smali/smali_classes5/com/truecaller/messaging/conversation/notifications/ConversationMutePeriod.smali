.class public final enum Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;",
        "",
        "",
        "stringResId",
        "I",
        "getStringResId",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "ONE_HOUR",
        "TWENTY_FOUR_HOURS",
        "FOREVER",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

.field public static final enum FOREVER:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

.field public static final enum ONE_HOUR:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

.field public static final enum TWENTY_FOUR_HOURS:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;


# instance fields
.field private final stringResId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    new-instance v1, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    const-string v2, "ONE_HOUR"

    const/4 v3, 0x0

    const v4, 0x7f1209e0

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;->ONE_HOUR:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    const-string v2, "TWENTY_FOUR_HOURS"

    const/4 v3, 0x1

    const v4, 0x7f1209de

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;->TWENTY_FOUR_HOURS:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    const-string v2, "FOREVER"

    const/4 v3, 0x2

    const v4, 0x7f1209df

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;->FOREVER:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;->$VALUES:[Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;->stringResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;->$VALUES:[Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    return-object v0
.end method


# virtual methods
.method public final getStringResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;->stringResId:I

    return v0
.end method
