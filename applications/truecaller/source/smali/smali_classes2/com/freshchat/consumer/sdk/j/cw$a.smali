.class public final enum Lcom/freshchat/consumer/sdk/j/cw$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/j/cw$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum is:Lcom/freshchat/consumer/sdk/j/cw$a;

.field public static final enum it:Lcom/freshchat/consumer/sdk/j/cw$a;

.field public static final enum iu:Lcom/freshchat/consumer/sdk/j/cw$a;

.field public static final enum iv:Lcom/freshchat/consumer/sdk/j/cw$a;

.field private static final synthetic kp:[Lcom/freshchat/consumer/sdk/j/cw$a;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/freshchat/consumer/sdk/j/cw$a;

    const-string v1, "ANDROID"

    const/4 v2, 0x0

    const-string v3, "android"

    invoke-direct {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/cw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/cw$a;->is:Lcom/freshchat/consumer/sdk/j/cw$a;

    new-instance v1, Lcom/freshchat/consumer/sdk/j/cw$a;

    const-string v3, "FLUTTER"

    const/4 v4, 0x1

    const-string v5, "flutter"

    invoke-direct {v1, v3, v4, v5}, Lcom/freshchat/consumer/sdk/j/cw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/cw$a;->it:Lcom/freshchat/consumer/sdk/j/cw$a;

    new-instance v3, Lcom/freshchat/consumer/sdk/j/cw$a;

    const-string v5, "REACT_NATIVE"

    const/4 v6, 0x2

    const-string v7, "reactnative"

    invoke-direct {v3, v5, v6, v7}, Lcom/freshchat/consumer/sdk/j/cw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/freshchat/consumer/sdk/j/cw$a;->iu:Lcom/freshchat/consumer/sdk/j/cw$a;

    new-instance v5, Lcom/freshchat/consumer/sdk/j/cw$a;

    const-string v7, "PHONEGAP"

    const/4 v8, 0x3

    const-string v9, "phonegap"

    invoke-direct {v5, v7, v8, v9}, Lcom/freshchat/consumer/sdk/j/cw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/freshchat/consumer/sdk/j/cw$a;->iv:Lcom/freshchat/consumer/sdk/j/cw$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/freshchat/consumer/sdk/j/cw$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/freshchat/consumer/sdk/j/cw$a;->kp:[Lcom/freshchat/consumer/sdk/j/cw$a;

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

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/j/cw$a;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/cw$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/cw$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/cw$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/j/cw$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/cw$a;->kp:[Lcom/freshchat/consumer/sdk/j/cw$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/j/cw$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/j/cw$a;

    return-object v0
.end method
