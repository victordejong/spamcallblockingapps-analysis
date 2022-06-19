.class public final enum Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

.field public static final enum CAROUSEL:Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

.field public static final enum CAROUSEL_CARD_DEFAULT:Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

.field public static final enum QUICK_REPLY_DROP_DOWN:Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;


# instance fields
.field private clz:Ljava/lang/Class;

.field private str:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;

    const-string v2, "QUICK_REPLY_DROP_DOWN"

    const/4 v3, 0x0

    const-string v4, "quick_reply_dropdown"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->QUICK_REPLY_DROP_DOWN:Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    const-class v2, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselFragment;

    const-string v4, "CAROUSEL"

    const/4 v5, 0x1

    const-string v6, "carousel"

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->CAROUSEL:Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    const-class v4, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    const-string v6, "CAROUSEL_CARD_DEFAULT"

    const/4 v7, 0x2

    const-string v8, "carousel_card_default"

    invoke-direct {v2, v6, v7, v8, v4}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->CAROUSEL_CARD_DEFAULT:Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->str:Ljava/lang/String;

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->clz:Ljava/lang/Class;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;
    .locals 6

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->values()[Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->str:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->str:Ljava/lang/String;

    return-object v0
.end method

.method public getClz()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->clz:Ljava/lang/Class;

    return-object v0
.end method
