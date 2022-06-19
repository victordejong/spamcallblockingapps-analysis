.class public final enum Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum CALENDAR_EVENT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum CALLBACK_BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum COLLECTION:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum QUICK_REPLY_BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum STATIC_TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum VIDEO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;


# instance fields
.field private final clz:Ljava/lang/Class;

.field private final intValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    const-string v2, "TEXT"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v2, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    const-string v5, "IMAGE"

    const/4 v6, 0x2

    invoke-direct {v1, v5, v4, v6, v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v5, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;

    const-string v7, "AUDIO"

    const/4 v8, 0x3

    invoke-direct {v2, v7, v6, v8, v5}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v5, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v7, Lcom/freshchat/consumer/sdk/beans/fragment/VideoFragment;

    const-string v9, "VIDEO"

    const/4 v10, 0x4

    invoke-direct {v5, v9, v8, v10, v7}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v5, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->VIDEO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v7, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v9, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    const-string v11, "BUTTON"

    const/4 v12, 0x5

    invoke-direct {v7, v11, v10, v12, v9}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v7, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v9, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v11, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    const-string v13, "CALENDAR_EVENT"

    const/4 v14, 0x7

    invoke-direct {v9, v13, v12, v14, v11}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v9, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->CALENDAR_EVENT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v11, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v13, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    const-string v15, "QUICK_REPLY_BUTTON"

    const/4 v12, 0x6

    const/16 v10, 0x33

    invoke-direct {v11, v15, v12, v10, v13}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v11, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->QUICK_REPLY_BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v10, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v13, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    const-string v15, "CALLBACK_BUTTON"

    const/16 v12, 0x34

    invoke-direct {v10, v15, v14, v12, v13}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v10, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->CALLBACK_BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v12, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v13, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    const-string v15, "COLLECTION"

    const/16 v14, 0x8

    const/16 v8, 0x3e8

    invoke-direct {v12, v15, v14, v8, v13}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v12, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->COLLECTION:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v8, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v13, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;

    const-string v15, "TEMPLATE"

    const/16 v14, 0x9

    const/16 v6, 0x3ea

    invoke-direct {v8, v15, v14, v6, v13}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v8, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v6, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v13, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;

    const-string v15, "STATIC_TEMPLATE"

    const/16 v14, 0xa

    const/16 v4, 0x1388

    invoke-direct {v6, v15, v14, v4, v13}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v6, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->STATIC_TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const/16 v4, 0xb

    new-array v4, v4, [Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v10, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    sput-object v4, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->intValue:I

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->clz:Ljava/lang/Class;

    return-void
.end method

.method public static fromInt(I)Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->values()[Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->intValue:I

    return v0
.end method

.method public getClz()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->clz:Ljava/lang/Class;

    return-object v0
.end method
