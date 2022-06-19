.class public final enum Lcom/freshchat/consumer/sdk/k/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/k/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/k/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum of:Lcom/freshchat/consumer/sdk/k/i$a;

.field public static final enum og:Lcom/freshchat/consumer/sdk/k/i$a;

.field public static final enum oh:Lcom/freshchat/consumer/sdk/k/i$a;

.field public static oi:Lcom/freshchat/consumer/sdk/k/i$a;

.field private static final synthetic oj:[Lcom/freshchat/consumer/sdk/k/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/k/i$a;

    const-string v1, "PRE_SELECTED_CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/k/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/k/i$a;->of:Lcom/freshchat/consumer/sdk/k/i$a;

    new-instance v1, Lcom/freshchat/consumer/sdk/k/i$a;

    const-string v3, "CARD_WITH_CALLBACK_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/freshchat/consumer/sdk/k/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/freshchat/consumer/sdk/k/i$a;->og:Lcom/freshchat/consumer/sdk/k/i$a;

    new-instance v3, Lcom/freshchat/consumer/sdk/k/i$a;

    const-string v5, "CARD_WITH_CALLBACK_AND_VIEW_OPTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/freshchat/consumer/sdk/k/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/freshchat/consumer/sdk/k/i$a;->oh:Lcom/freshchat/consumer/sdk/k/i$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/k/i$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/freshchat/consumer/sdk/k/i$a;->oj:[Lcom/freshchat/consumer/sdk/k/i$a;

    sput-object v1, Lcom/freshchat/consumer/sdk/k/i$a;->oi:Lcom/freshchat/consumer/sdk/k/i$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/k/i$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/k/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/k/i$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/k/i$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/k/i$a;->oj:[Lcom/freshchat/consumer/sdk/k/i$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/k/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/k/i$a;

    return-object v0
.end method
