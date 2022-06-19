.class public final enum Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/util/NotificationUtil$ShowUIAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum BLOCK:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum HISTORY:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum NOTIFICATIONS:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum PREMIUM:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum PROFILE_EDIT:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum SEARCH:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum SETTINGS:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum SETTINGS_ABOUT:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum SETTINGS_CALLERID:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum SETTINGS_GENERAL:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum SETTINGS_GENERAL_LANGUAGE:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum SETTINGS_PRIVACY:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public static final enum SETTINGS_UPDATE:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v1, "PROFILE_EDIT"

    const/4 v2, 0x0

    const-string v3, "profileEdit"

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->PROFILE_EDIT:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 2
    new-instance v1, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v3, "SEARCH"

    const/4 v4, 0x1

    const-string v5, "search"

    invoke-direct {v1, v3, v4, v5}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->SEARCH:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 3
    new-instance v3, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v5, "HISTORY"

    const/4 v6, 0x2

    const-string v7, "history"

    invoke-direct {v3, v5, v6, v7}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->HISTORY:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 4
    new-instance v5, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v7, "NOTIFICATIONS"

    const/4 v8, 0x3

    const-string v9, "notifications"

    invoke-direct {v5, v7, v8, v9}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->NOTIFICATIONS:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 5
    new-instance v7, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v9, "BLOCK"

    const/4 v10, 0x4

    const-string v11, "filterMy"

    invoke-direct {v7, v9, v10, v11}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->BLOCK:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 6
    new-instance v9, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v11, "PREMIUM"

    const/4 v12, 0x5

    const-string v13, "premium"

    invoke-direct {v9, v11, v12, v13}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->PREMIUM:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 7
    new-instance v11, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v13, "SETTINGS"

    const/4 v14, 0x6

    const-string v15, "settings"

    invoke-direct {v11, v13, v14, v15}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->SETTINGS:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 8
    new-instance v13, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v15, "SETTINGS_GENERAL"

    const/4 v14, 0x7

    const-string v12, "settingsGeneral"

    invoke-direct {v13, v15, v14, v12}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->SETTINGS_GENERAL:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 9
    new-instance v12, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v15, "SETTINGS_UPDATE"

    const/16 v14, 0x8

    const-string v10, "settingsUpdate"

    invoke-direct {v12, v15, v14, v10}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->SETTINGS_UPDATE:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 10
    new-instance v10, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v15, "SETTINGS_CALLERID"

    const/16 v14, 0x9

    const-string v8, "settingsCallerId"

    invoke-direct {v10, v15, v14, v8}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->SETTINGS_CALLERID:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 11
    new-instance v8, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v15, "SETTINGS_PRIVACY"

    const/16 v14, 0xa

    const-string v6, "settingsPrivacy"

    invoke-direct {v8, v15, v14, v6}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->SETTINGS_PRIVACY:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 12
    new-instance v6, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v15, "SETTINGS_ABOUT"

    const/16 v14, 0xb

    const-string v4, "settingsAbout"

    invoke-direct {v6, v15, v14, v4}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->SETTINGS_ABOUT:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 13
    new-instance v4, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v15, "SETTINGS_GENERAL_LANGUAGE"

    const/16 v14, 0xc

    const-string v2, "settingsGeneralLanguage"

    invoke-direct {v4, v15, v14, v2}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->SETTINGS_GENERAL_LANGUAGE:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    aput-object v4, v2, v14

    .line 14
    sput-object v2, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->$VALUES:[Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

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

    .line 2
    iput-object p3, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getUiType(Ljava/lang/String;)Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;
    .locals 4

    .line 1
    invoke-static {}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->values()[Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xd

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    invoke-virtual {v2}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->$VALUES:[Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    invoke-virtual {v0}, [Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->name:Ljava/lang/String;

    return-object v0
.end method
