.class public final enum Lcom/freshchat/consumer/sdk/JwtTokenStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/JwtTokenStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field public static final enum TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field public static final enum TOKEN_INVALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field public static final enum TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field public static final enum TOKEN_NOT_SET:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field public static final enum TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;


# instance fields
.field private final intValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const-string v1, "TOKEN_NOT_SET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_SET:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-instance v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const-string v4, "TOKEN_NOT_PROCESSED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-instance v4, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const-string v6, "TOKEN_VALID"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-instance v6, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const-string v8, "TOKEN_INVALID"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_INVALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-instance v8, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const-string v10, "TOKEN_EXPIRED"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-array v10, v11, [Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->$VALUES:[Lcom/freshchat/consumer/sdk/JwtTokenStatus;

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

    iput p3, p0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->intValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/freshchat/consumer/sdk/JwtTokenStatus;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->values()[Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->asInt()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_SET:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/JwtTokenStatus;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->$VALUES:[Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/JwtTokenStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->intValue:I

    return v0
.end method
