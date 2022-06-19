.class public final enum Lcom/freshchat/consumer/sdk/Event$Property;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/Event$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyBotFAQFeedback:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyBotFAQPlaceholderReferenceId:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyBotFAQReferenceId:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyBotFAQTitle:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyChannelID:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyChannelName:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyComment:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyConversationID:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyFAQCategoryID:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyFAQCategoryName:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyFAQID:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyFAQTitle:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyInputTags:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyInviteId:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyIsHelpful:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyIsRelevant:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyOption:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyRating:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyResolutionStatus:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertySearchFAQCount:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertySearchKey:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyURL:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static eventPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/Event$Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v1, "FCPropertyInputTags"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyInputTags:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v1, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v3, "FCPropertyFAQCategoryID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQCategoryID:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v3, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v5, "FCPropertyFAQCategoryName"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQCategoryName:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v5, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v7, "FCPropertyFAQID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQID:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v7, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v9, "FCPropertyFAQTitle"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQTitle:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v9, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v11, "FCPropertySearchKey"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertySearchKey:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v11, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v13, "FCPropertySearchFAQCount"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertySearchFAQCount:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v13, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v15, "FCPropertyIsRelevant"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyIsRelevant:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v15, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v14, "FCPropertyIsHelpful"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyIsHelpful:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v14, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v12, "FCPropertyChannelID"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyChannelID:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v12, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v10, "FCPropertyConversationID"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyConversationID:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v10, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v8, "FCPropertyChannelName"

    const/16 v6, 0xb

    const-string v4, "FCPropertyChannelName"

    invoke-direct {v10, v8, v6, v4}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyChannelName:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v6, "FCPropertyResolutionStatus"

    const/16 v8, 0xc

    const-string v2, "FCPropertyResolutionStatus"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyResolutionStatus:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v6, "FCPropertyRating"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "FCPropertyRating"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyRating:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v6, "FCPropertyComment"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "FCPropertyComment"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyComment:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v6, "FCPropertyURL"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const-string v4, "FCPropertyURL"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyURL:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v6, "FCPropertyOption"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const-string v2, "FCPropertyOption"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyOption:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v6, "FCPropertyInviteId"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const-string v4, "FCPropertyInviteId"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyInviteId:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v6, "FCPropertyBotFAQTitle"

    const/16 v8, 0x12

    move-object/from16 v21, v2

    const-string v2, "FCPropertyBotFAQTitle"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyBotFAQTitle:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v6, "FCPropertyBotFAQReferenceId"

    const/16 v8, 0x13

    move-object/from16 v22, v4

    const-string v4, "FCPropertyBotFAQReferenceId"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyBotFAQReferenceId:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v6, "FCPropertyBotFAQPlaceholderReferenceId"

    const/16 v8, 0x14

    move-object/from16 v23, v2

    const-string v2, "FCPropertyBotFAQPlaceholderReferenceId"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyBotFAQPlaceholderReferenceId:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v6, "FCPropertyBotFAQFeedback"

    const/16 v8, 0x15

    move-object/from16 v24, v4

    const-string v4, "FCPropertyBotFAQFeedback"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyBotFAQFeedback:Lcom/freshchat/consumer/sdk/Event$Property;

    const/16 v4, 0x16

    new-array v4, v4, [Lcom/freshchat/consumer/sdk/Event$Property;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v2, v4, v0

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$Property;->$VALUES:[Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->eventPropertyMap:Ljava/util/Map;

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/Event$Property;->values()[Lcom/freshchat/consumer/sdk/Event$Property;

    move-result-object v0

    const/16 v1, 0x16

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/freshchat/consumer/sdk/Event$Property;->eventPropertyMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/freshchat/consumer/sdk/Event$Property;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/Event$Property;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Event$Property;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->eventPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/Event$Property;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Event$Property;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/Event$Property;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/Event$Property;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->$VALUES:[Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/Event$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/Event$Property;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Event$Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Event$Property;->name:Ljava/lang/String;

    return-object v0
.end method
