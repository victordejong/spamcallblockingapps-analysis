.class public final enum Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

.field public static final enum CAROUSEL_CARDS:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .annotation runtime Le/m/e/d0/b;
        value = "cards"
    .end annotation
.end field

.field public static final enum CAROUSEL_CARD_CALLBACK:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .annotation runtime Le/m/e/d0/b;
        value = "callback"
    .end annotation
.end field

.field public static final enum CAROUSEL_CARD_DESCRIPTION:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .annotation runtime Le/m/e/d0/b;
        value = "description"
    .end annotation
.end field

.field public static final enum CAROUSEL_CARD_HERO_IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .annotation runtime Le/m/e/d0/b;
        value = "hero_image"
    .end annotation
.end field

.field public static final enum CAROUSEL_CARD_TITLE:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .annotation runtime Le/m/e/d0/b;
        value = "title"
    .end annotation
.end field

.field public static final enum CAROUSEL_CARD_VIEW:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .annotation runtime Le/m/e/d0/b;
        value = "view"
    .end annotation
.end field

.field public static final enum DROP_DOWN_OPTIONS:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .annotation runtime Le/m/e/d0/b;
        value = "options"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    const-string v1, "DROP_DOWN_OPTIONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->DROP_DOWN_OPTIONS:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    const-string v3, "CAROUSEL_CARD_HERO_IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_HERO_IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    new-instance v3, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    const-string v5, "CAROUSEL_CARD_TITLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_TITLE:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    new-instance v5, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    const-string v7, "CAROUSEL_CARD_DESCRIPTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_DESCRIPTION:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    new-instance v7, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    const-string v9, "CAROUSEL_CARD_CALLBACK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_CALLBACK:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    new-instance v9, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    const-string v11, "CAROUSEL_CARD_VIEW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_VIEW:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    new-instance v11, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    const-string v13, "CAROUSEL_CARDS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARDS:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    return-object v0
.end method
