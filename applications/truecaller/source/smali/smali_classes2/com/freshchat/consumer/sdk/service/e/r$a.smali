.class public final enum Lcom/freshchat/consumer/sdk/service/e/r$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/service/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/service/e/r$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum gB:Lcom/freshchat/consumer/sdk/service/e/r$a;

.field public static final enum gC:Lcom/freshchat/consumer/sdk/service/e/r$a;

.field public static final enum gD:Lcom/freshchat/consumer/sdk/service/e/r$a;

.field public static final enum gE:Lcom/freshchat/consumer/sdk/service/e/r$a;

.field private static final synthetic gF:[Lcom/freshchat/consumer/sdk/service/e/r$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/r$a;

    const-string v1, "UserNotCreated"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/e/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/r$a;->gB:Lcom/freshchat/consumer/sdk/service/e/r$a;

    new-instance v1, Lcom/freshchat/consumer/sdk/service/e/r$a;

    const-string v3, "NoInternet"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/freshchat/consumer/sdk/service/e/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/freshchat/consumer/sdk/service/e/r$a;->gC:Lcom/freshchat/consumer/sdk/service/e/r$a;

    new-instance v3, Lcom/freshchat/consumer/sdk/service/e/r$a;

    const-string v5, "Failed"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/freshchat/consumer/sdk/service/e/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/freshchat/consumer/sdk/service/e/r$a;->gD:Lcom/freshchat/consumer/sdk/service/e/r$a;

    new-instance v5, Lcom/freshchat/consumer/sdk/service/e/r$a;

    const-string v7, "Success"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/freshchat/consumer/sdk/service/e/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/freshchat/consumer/sdk/service/e/r$a;->gE:Lcom/freshchat/consumer/sdk/service/e/r$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/freshchat/consumer/sdk/service/e/r$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/freshchat/consumer/sdk/service/e/r$a;->gF:[Lcom/freshchat/consumer/sdk/service/e/r$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/r$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/e/r$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/service/e/r$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/r$a;->gF:[Lcom/freshchat/consumer/sdk/service/e/r$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/service/e/r$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-object v0
.end method
