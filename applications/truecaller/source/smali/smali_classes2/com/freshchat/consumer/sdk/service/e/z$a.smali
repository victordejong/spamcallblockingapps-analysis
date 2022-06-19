.class public final enum Lcom/freshchat/consumer/sdk/service/e/z$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/service/e/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/service/e/z$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum gM:Lcom/freshchat/consumer/sdk/service/e/z$a;

.field public static final enum gN:Lcom/freshchat/consumer/sdk/service/e/z$a;

.field public static final enum gO:Lcom/freshchat/consumer/sdk/service/e/z$a;

.field private static final synthetic gP:[Lcom/freshchat/consumer/sdk/service/e/z$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/z$a;

    const-string v1, "FAQ_ICONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/e/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/z$a;->gM:Lcom/freshchat/consumer/sdk/service/e/z$a;

    new-instance v1, Lcom/freshchat/consumer/sdk/service/e/z$a;

    const-string v3, "CHANNEL_ICONS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/freshchat/consumer/sdk/service/e/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/freshchat/consumer/sdk/service/e/z$a;->gN:Lcom/freshchat/consumer/sdk/service/e/z$a;

    new-instance v3, Lcom/freshchat/consumer/sdk/service/e/z$a;

    const-string v5, "FAQ_CONTENT_IMAGES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/freshchat/consumer/sdk/service/e/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/freshchat/consumer/sdk/service/e/z$a;->gO:Lcom/freshchat/consumer/sdk/service/e/z$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/service/e/z$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/freshchat/consumer/sdk/service/e/z$a;->gP:[Lcom/freshchat/consumer/sdk/service/e/z$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/z$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/e/z$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/service/e/z$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/service/e/z$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/z$a;->gP:[Lcom/freshchat/consumer/sdk/service/e/z$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/service/e/z$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/service/e/z$a;

    return-object v0
.end method
