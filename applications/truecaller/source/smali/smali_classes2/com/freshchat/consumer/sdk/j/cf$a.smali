.class public final enum Lcom/freshchat/consumer/sdk/j/cf$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/j/cf$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum nY:Lcom/freshchat/consumer/sdk/j/cf$a;

.field public static final enum nZ:Lcom/freshchat/consumer/sdk/j/cf$a;

.field public static final enum oa:Lcom/freshchat/consumer/sdk/j/cf$a;

.field public static final ob:Lcom/freshchat/consumer/sdk/j/cf$a;

.field private static final synthetic od:[Lcom/freshchat/consumer/sdk/j/cf$a;

.field public static final enum pZ:Lcom/freshchat/consumer/sdk/j/cf$a;


# instance fields
.field public oc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/freshchat/consumer/sdk/j/cf$a;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/freshchat/consumer/sdk/j/cf$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/cf$a;->nY:Lcom/freshchat/consumer/sdk/j/cf$a;

    new-instance v1, Lcom/freshchat/consumer/sdk/j/cf$a;

    const-string v3, "CAROUSEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/freshchat/consumer/sdk/j/cf$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/cf$a;->nZ:Lcom/freshchat/consumer/sdk/j/cf$a;

    new-instance v3, Lcom/freshchat/consumer/sdk/j/cf$a;

    const-string v5, "CAROUSEL_CARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/freshchat/consumer/sdk/j/cf$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/freshchat/consumer/sdk/j/cf$a;->oa:Lcom/freshchat/consumer/sdk/j/cf$a;

    new-instance v5, Lcom/freshchat/consumer/sdk/j/cf$a;

    const-string v7, "CALENDAR_EVENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/freshchat/consumer/sdk/j/cf$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/freshchat/consumer/sdk/j/cf$a;->pZ:Lcom/freshchat/consumer/sdk/j/cf$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/freshchat/consumer/sdk/j/cf$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/freshchat/consumer/sdk/j/cf$a;->od:[Lcom/freshchat/consumer/sdk/j/cf$a;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/cf$a;->ob:Lcom/freshchat/consumer/sdk/j/cf$a;

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

    iput p3, p0, Lcom/freshchat/consumer/sdk/j/cf$a;->oc:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/cf$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/cf$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/cf$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/j/cf$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/cf$a;->od:[Lcom/freshchat/consumer/sdk/j/cf$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/j/cf$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/j/cf$a;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/j/cf$a;->oc:I

    return v0
.end method
