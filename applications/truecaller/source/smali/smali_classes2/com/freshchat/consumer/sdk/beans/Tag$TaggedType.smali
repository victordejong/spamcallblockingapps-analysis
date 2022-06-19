.class public final enum Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaggedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

.field public static final enum ARTICLE:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

.field public static final enum CATEGORY:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

.field public static final enum CHANNEL:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;


# instance fields
.field private final itemTypeIntValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    const-string v1, "ARTICLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->ARTICLE:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    const-string v3, "CATEGORY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->CATEGORY:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    new-instance v3, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    const-string v5, "CHANNEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->CHANNEL:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->itemTypeIntValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;->itemTypeIntValue:I

    return v0
.end method
