.class public final enum Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "BANNER",
        "WHATS_NEW",
        "FACS",
        "PACSCall",
        "PACSExpand",
        "SETTINGS",
        "PROFILE",
        "FAVOURITE_CONTACTS",
        "NOTIFICATION",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public static final enum BANNER:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public static final enum FACS:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public static final enum FAVOURITE_CONTACTS:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public static final enum NOTIFICATION:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public static final enum PACSCall:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public static final enum PACSExpand:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public static final enum PROFILE:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public static final enum SETTINGS:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public static final enum WHATS_NEW:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    const-string v2, "BANNER"

    const/4 v3, 0x0

    const-string v4, "Banner"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->BANNER:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    const-string v2, "WHATS_NEW"

    const/4 v3, 0x1

    const-string v4, "WhatsNew"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->WHATS_NEW:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    const-string v2, "FACS"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->FACS:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    const-string v2, "PACSCall"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->PACSCall:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    const-string v2, "PACSExpand"

    const/4 v3, 0x4

    .line 5
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->PACSExpand:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    const-string v2, "SETTINGS"

    const/4 v3, 0x5

    const-string v4, "Settings"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->SETTINGS:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    const-string v2, "PROFILE"

    const/4 v3, 0x6

    const-string v4, "Profile"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->PROFILE:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    const-string v2, "FAVOURITE_CONTACTS"

    const/4 v3, 0x7

    const-string v4, "FavouriteContacts"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->FAVOURITE_CONTACTS:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    const-string v2, "NOTIFICATION"

    const/16 v3, 0x8

    const-string v4, "Notification"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->NOTIFICATION:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->$VALUES:[Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

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

    iput-object p3, p0, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;
    .locals 1

    const-class v0, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;
    .locals 1

    sget-object v0, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->$VALUES:[Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    invoke-virtual {v0}, [Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->value:Ljava/lang/String;

    return-object v0
.end method
