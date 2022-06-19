.class public final enum Lcom/freshchat/consumer/sdk/k/l$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/k/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/k/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum qf:Lcom/freshchat/consumer/sdk/k/l$a;

.field public static final enum qg:Lcom/freshchat/consumer/sdk/k/l$a;

.field public static final enum qh:Lcom/freshchat/consumer/sdk/k/l$a;

.field public static final qi:Lcom/freshchat/consumer/sdk/k/l$a;

.field private static final synthetic qj:[Lcom/freshchat/consumer/sdk/k/l$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/k/l$a;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/k/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/k/l$a;->qf:Lcom/freshchat/consumer/sdk/k/l$a;

    new-instance v1, Lcom/freshchat/consumer/sdk/k/l$a;

    const-string v3, "CREATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/freshchat/consumer/sdk/k/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/freshchat/consumer/sdk/k/l$a;->qg:Lcom/freshchat/consumer/sdk/k/l$a;

    new-instance v3, Lcom/freshchat/consumer/sdk/k/l$a;

    const-string v5, "FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/freshchat/consumer/sdk/k/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/freshchat/consumer/sdk/k/l$a;->qh:Lcom/freshchat/consumer/sdk/k/l$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/k/l$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/freshchat/consumer/sdk/k/l$a;->qj:[Lcom/freshchat/consumer/sdk/k/l$a;

    sput-object v0, Lcom/freshchat/consumer/sdk/k/l$a;->qi:Lcom/freshchat/consumer/sdk/k/l$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/k/l$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/k/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/k/l$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/k/l$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/k/l$a;->qj:[Lcom/freshchat/consumer/sdk/k/l$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/k/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/k/l$a;

    return-object v0
.end method
