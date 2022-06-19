.class public final enum Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/Csat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CSatStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

.field public static final enum NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

.field public static final enum RATED_NOT_UPLOADED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

.field public static final enum UPLOADED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;


# instance fields
.field private final intValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    const-string v1, "NOT_RATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    const-string v3, "RATED_NOT_UPLOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->RATED_NOT_UPLOADED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    new-instance v3, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    const-string v5, "UPLOADED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->UPLOADED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

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

    iput p3, p0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->intValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->values()[Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->asInt()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->intValue:I

    return v0
.end method
