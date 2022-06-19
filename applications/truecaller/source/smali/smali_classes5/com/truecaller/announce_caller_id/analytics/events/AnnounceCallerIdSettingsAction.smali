.class public final enum Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "HEADSET_ENABLED",
        "HEADSET_DISABLED",
        "VOIP_ENABLED",
        "VOIP_DISABLED",
        "PB_CONTACTS_ONLY_ENABLED",
        "PB_CONTACTS_ONLY_DISABLED",
        "announce-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

.field public static final enum HEADSET_DISABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

.field public static final enum HEADSET_ENABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

.field public static final enum PB_CONTACTS_ONLY_DISABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

.field public static final enum PB_CONTACTS_ONLY_ENABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

.field public static final enum VOIP_DISABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

.field public static final enum VOIP_ENABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    new-instance v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    const-string v2, "HEADSET_ENABLED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->HEADSET_ENABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    const-string v2, "HEADSET_DISABLED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->HEADSET_DISABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    const-string v2, "VOIP_ENABLED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->VOIP_ENABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    const-string v2, "VOIP_DISABLED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->VOIP_DISABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    const-string v2, "PB_CONTACTS_ONLY_ENABLED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->PB_CONTACTS_ONLY_ENABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    const-string v2, "PB_CONTACTS_ONLY_DISABLED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->PB_CONTACTS_ONLY_DISABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->$VALUES:[Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;
    .locals 1

    const-class v0, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;
    .locals 1

    sget-object v0, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->$VALUES:[Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    invoke-virtual {v0}, [Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    return-object v0
.end method
