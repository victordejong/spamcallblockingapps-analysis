.class public final enum Lcom/freshchat/consumer/sdk/service/e/am$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/service/e/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/service/e/am$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum rl:Lcom/freshchat/consumer/sdk/service/e/am$a;

.field public static final enum rm:Lcom/freshchat/consumer/sdk/service/e/am$a;

.field private static final synthetic rn:[Lcom/freshchat/consumer/sdk/service/e/am$a;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/am$a;

    const-string v1, "THUMBS_UP"

    const/4 v2, 0x0

    const-string v3, "thumbs_up"

    invoke-direct {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/service/e/am$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/am$a;->rl:Lcom/freshchat/consumer/sdk/service/e/am$a;

    new-instance v1, Lcom/freshchat/consumer/sdk/service/e/am$a;

    const-string v3, "THUMBS_DOWN"

    const/4 v4, 0x1

    const-string v5, "thumbs_down"

    invoke-direct {v1, v3, v4, v5}, Lcom/freshchat/consumer/sdk/service/e/am$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/service/e/am$a;->rm:Lcom/freshchat/consumer/sdk/service/e/am$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/freshchat/consumer/sdk/service/e/am$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/freshchat/consumer/sdk/service/e/am$a;->rn:[Lcom/freshchat/consumer/sdk/service/e/am$a;

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

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/service/e/am$a;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/am$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/e/am$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/service/e/am$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/service/e/am$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/am$a;->rn:[Lcom/freshchat/consumer/sdk/service/e/am$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/service/e/am$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/service/e/am$a;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/am$a;->value:Ljava/lang/String;

    return-object v0
.end method
