.class public final enum Lcom/freshchat/consumer/sdk/j/az$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/j/az$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum kT:Lcom/freshchat/consumer/sdk/j/az$c;

.field public static final enum kU:Lcom/freshchat/consumer/sdk/j/az$c;

.field public static final enum kV:Lcom/freshchat/consumer/sdk/j/az$c;

.field private static final synthetic kW:[Lcom/freshchat/consumer/sdk/j/az$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/j/az$c;

    const-string v1, "INVALID_PARAMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/az$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/az$c;->kT:Lcom/freshchat/consumer/sdk/j/az$c;

    new-instance v1, Lcom/freshchat/consumer/sdk/j/az$c;

    const-string v3, "UNKNOWN_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/freshchat/consumer/sdk/j/az$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/az$c;->kU:Lcom/freshchat/consumer/sdk/j/az$c;

    new-instance v3, Lcom/freshchat/consumer/sdk/j/az$c;

    const-string v5, "INVALID_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/freshchat/consumer/sdk/j/az$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/freshchat/consumer/sdk/j/az$c;->kV:Lcom/freshchat/consumer/sdk/j/az$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/j/az$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/freshchat/consumer/sdk/j/az$c;->kW:[Lcom/freshchat/consumer/sdk/j/az$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/az$c;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/az$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/az$c;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/j/az$c;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/az$c;->kW:[Lcom/freshchat/consumer/sdk/j/az$c;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/j/az$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/j/az$c;

    return-object v0
.end method
