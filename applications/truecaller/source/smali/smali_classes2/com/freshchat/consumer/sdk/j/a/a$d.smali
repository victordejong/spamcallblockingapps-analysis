.class public final enum Lcom/freshchat/consumer/sdk/j/a/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/j/a/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum jc:Lcom/freshchat/consumer/sdk/j/a/a$d;

.field public static final enum jd:Lcom/freshchat/consumer/sdk/j/a/a$d;

.field public static final enum je:Lcom/freshchat/consumer/sdk/j/a/a$d;

.field private static final synthetic jf:[Lcom/freshchat/consumer/sdk/j/a/a$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/a$d;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/a/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a$d;->jc:Lcom/freshchat/consumer/sdk/j/a/a$d;

    new-instance v1, Lcom/freshchat/consumer/sdk/j/a/a$d;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/freshchat/consumer/sdk/j/a/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/a/a$d;->jd:Lcom/freshchat/consumer/sdk/j/a/a$d;

    new-instance v3, Lcom/freshchat/consumer/sdk/j/a/a$d;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/freshchat/consumer/sdk/j/a/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/freshchat/consumer/sdk/j/a/a$d;->je:Lcom/freshchat/consumer/sdk/j/a/a$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/j/a/a$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/freshchat/consumer/sdk/j/a/a$d;->jf:[Lcom/freshchat/consumer/sdk/j/a/a$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/a/a$d;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/a/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/a/a$d;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/j/a/a$d;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a$d;->jf:[Lcom/freshchat/consumer/sdk/j/a/a$d;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/j/a/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/j/a/a$d;

    return-object v0
.end method
