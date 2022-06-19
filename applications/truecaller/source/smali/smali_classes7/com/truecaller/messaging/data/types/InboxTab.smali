.class public final enum Lcom/truecaller/messaging/data/types/InboxTab;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/InboxTab$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/data/types/InboxTab;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u001b\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/truecaller/messaging/data/types/InboxTab;",
        "",
        "",
        "conversationFilter",
        "I",
        "getConversationFilter",
        "()I",
        "",
        "analyticsContext",
        "Ljava/lang/String;",
        "getAnalyticsContext",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "Companion",
        "a",
        "PERSONAL",
        "OTHERS",
        "BUSINESS",
        "SPAM",
        "PROMOTIONAL",
        "messaging-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/data/types/InboxTab;

.field public static final enum BUSINESS:Lcom/truecaller/messaging/data/types/InboxTab;

.field public static final Companion:Lcom/truecaller/messaging/data/types/InboxTab$a;

.field public static final enum OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

.field public static final enum PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

.field public static final enum PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

.field public static final enum SPAM:Lcom/truecaller/messaging/data/types/InboxTab;


# instance fields
.field private final analyticsContext:Ljava/lang/String;

.field private final conversationFilter:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/messaging/data/types/InboxTab;

    new-instance v1, Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v2, "PERSONAL"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "inbox_main_tab"

    .line 1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/messaging/data/types/InboxTab;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v2, "OTHERS"

    const/4 v3, 0x2

    const-string v5, "inbox_others_tab"

    .line 2
    invoke-direct {v1, v2, v4, v3, v5}, Lcom/truecaller/messaging/data/types/InboxTab;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v2, "BUSINESS"

    const-string v5, "inbox_business_tab"

    .line 3
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/messaging/data/types/InboxTab;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->BUSINESS:Lcom/truecaller/messaging/data/types/InboxTab;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v2, "SPAM"

    const/4 v3, 0x3

    const-string v4, "inbox_spam_tab"

    .line 4
    invoke-direct {v1, v2, v3, v3, v4}, Lcom/truecaller/messaging/data/types/InboxTab;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v2, "PROMOTIONAL"

    const/4 v3, 0x4

    const-string v4, "inbox_promotional_tab"

    .line 5
    invoke-direct {v1, v2, v3, v3, v4}, Lcom/truecaller/messaging/data/types/InboxTab;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->$VALUES:[Lcom/truecaller/messaging/data/types/InboxTab;

    new-instance v0, Lcom/truecaller/messaging/data/types/InboxTab$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/messaging/data/types/InboxTab$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->Companion:Lcom/truecaller/messaging/data/types/InboxTab$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/messaging/data/types/InboxTab;->conversationFilter:I

    iput-object p4, p0, Lcom/truecaller/messaging/data/types/InboxTab;->analyticsContext:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/InboxTab;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/data/types/InboxTab;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/data/types/InboxTab;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->$VALUES:[Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/data/types/InboxTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/data/types/InboxTab;

    return-object v0
.end method


# virtual methods
.method public final getAnalyticsContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/InboxTab;->analyticsContext:Ljava/lang/String;

    return-object v0
.end method

.method public final getConversationFilter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/InboxTab;->conversationFilter:I

    return v0
.end method
