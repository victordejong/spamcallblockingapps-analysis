.class public final enum Lcom/freshchat/consumer/sdk/b/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/b/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum jI:Lcom/freshchat/consumer/sdk/b/k;

.field public static final enum nG:Lcom/freshchat/consumer/sdk/b/k;

.field public static final enum nc:Lcom/freshchat/consumer/sdk/b/k;

.field public static final enum nd:Lcom/freshchat/consumer/sdk/b/k;

.field public static final enum ne:Lcom/freshchat/consumer/sdk/b/k;

.field private static final synthetic nf:[Lcom/freshchat/consumer/sdk/b/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/freshchat/consumer/sdk/b/k;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/k;->nc:Lcom/freshchat/consumer/sdk/b/k;

    new-instance v1, Lcom/freshchat/consumer/sdk/b/k;

    const-string v3, "DROP_DOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/freshchat/consumer/sdk/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/freshchat/consumer/sdk/b/k;->nd:Lcom/freshchat/consumer/sdk/b/k;

    new-instance v3, Lcom/freshchat/consumer/sdk/b/k;

    const-string v5, "CAROUSEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/freshchat/consumer/sdk/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/freshchat/consumer/sdk/b/k;->nG:Lcom/freshchat/consumer/sdk/b/k;

    new-instance v5, Lcom/freshchat/consumer/sdk/b/k;

    const-string v7, "CALLBACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/freshchat/consumer/sdk/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/freshchat/consumer/sdk/b/k;->jI:Lcom/freshchat/consumer/sdk/b/k;

    new-instance v7, Lcom/freshchat/consumer/sdk/b/k;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/freshchat/consumer/sdk/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/freshchat/consumer/sdk/b/k;->ne:Lcom/freshchat/consumer/sdk/b/k;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/freshchat/consumer/sdk/b/k;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/freshchat/consumer/sdk/b/k;->nf:[Lcom/freshchat/consumer/sdk/b/k;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/b/k;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/b/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/b/k;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/b/k;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/b/k;->nf:[Lcom/freshchat/consumer/sdk/b/k;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/b/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/b/k;

    return-object v0
.end method
