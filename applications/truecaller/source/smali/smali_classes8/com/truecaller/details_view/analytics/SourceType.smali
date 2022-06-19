.class public final enum Lcom/truecaller/details_view/analytics/SourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/details_view/analytics/SourceType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u001b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/truecaller/details_view/analytics/SourceType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SearchResult",
        "AfterCall",
        "CallLog",
        "Contacts",
        "SearchHistory",
        "CallNotification",
        "ClipboardSearch",
        "SpammersList",
        "External",
        "MissedCallReminder",
        "Conversation",
        "BlockedEvents",
        "DeepLink",
        "ScannedNumber",
        "TruecallerContacts",
        "WhoViewedMe",
        "CallRecording",
        "BulkSmsReferral",
        "Inbox",
        "ImGroupInfo",
        "ContextCallHiddenContact",
        "GovernmentServices",
        "VoipGroupCallHistory",
        "VideoCallerIdHiddenContact",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum AfterCall:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum BlockedEvents:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum BulkSmsReferral:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum CallLog:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum CallNotification:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum CallRecording:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum ClipboardSearch:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum Contacts:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum ContextCallHiddenContact:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum Conversation:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum DeepLink:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum External:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum GovernmentServices:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum ImGroupInfo:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum Inbox:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum MissedCallReminder:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum ScannedNumber:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum SearchHistory:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum SearchResult:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum SpammersList:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum TruecallerContacts:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum VideoCallerIdHiddenContact:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum VoipGroupCallHistory:Lcom/truecaller/details_view/analytics/SourceType;

.field public static final enum WhoViewedMe:Lcom/truecaller/details_view/analytics/SourceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/truecaller/details_view/analytics/SourceType;

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "SearchResult"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->SearchResult:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "AfterCall"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->AfterCall:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "CallLog"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->CallLog:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "Contacts"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->Contacts:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "SearchHistory"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->SearchHistory:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "CallNotification"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->CallNotification:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "ClipboardSearch"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->ClipboardSearch:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "SpammersList"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->SpammersList:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "External"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->External:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "MissedCallReminder"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->MissedCallReminder:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "Conversation"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->Conversation:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "BlockedEvents"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->BlockedEvents:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "DeepLink"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->DeepLink:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "ScannedNumber"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->ScannedNumber:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "TruecallerContacts"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->TruecallerContacts:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "WhoViewedMe"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->WhoViewedMe:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "CallRecording"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->CallRecording:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "BulkSmsReferral"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->BulkSmsReferral:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "Inbox"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->Inbox:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "ImGroupInfo"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->ImGroupInfo:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "ContextCallHiddenContact"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->ContextCallHiddenContact:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "GovernmentServices"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->GovernmentServices:Lcom/truecaller/details_view/analytics/SourceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "VoipGroupCallHistory"

    const/16 v3, 0x16

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->VoipGroupCallHistory:Lcom/truecaller/details_view/analytics/SourceType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "VideoCallerIdHiddenContact"

    const/16 v3, 0x17

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/analytics/SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/analytics/SourceType;->VideoCallerIdHiddenContact:Lcom/truecaller/details_view/analytics/SourceType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/details_view/analytics/SourceType;->$VALUES:[Lcom/truecaller/details_view/analytics/SourceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/details_view/analytics/SourceType;
    .locals 1

    const-class v0, Lcom/truecaller/details_view/analytics/SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/details_view/analytics/SourceType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/details_view/analytics/SourceType;
    .locals 1

    sget-object v0, Lcom/truecaller/details_view/analytics/SourceType;->$VALUES:[Lcom/truecaller/details_view/analytics/SourceType;

    invoke-virtual {v0}, [Lcom/truecaller/details_view/analytics/SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/details_view/analytics/SourceType;

    return-object v0
.end method
