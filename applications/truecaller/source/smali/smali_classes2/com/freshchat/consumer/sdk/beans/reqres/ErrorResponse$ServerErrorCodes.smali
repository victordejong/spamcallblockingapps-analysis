.class public final enum Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerErrorCodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

.field public static final enum ERROR_CODE_APP_DELETED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Le/m/e/d0/b;
        value = "20"
    .end annotation
.end field

.field public static final enum ERROR_CODE_BAD_REQUEST:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Le/m/e/d0/b;
        value = "5"
    .end annotation
.end field

.field public static final enum ERROR_CODE_INVALID_JWT_TOKEN:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Le/m/e/d0/b;
        value = "23"
    .end annotation
.end field

.field public static final enum ERROR_CODE_JWT_CLAIMS_TOO_LARGE:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Le/m/e/d0/b;
        value = "25"
    .end annotation
.end field

.field public static final enum ERROR_CODE_JWT_TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Le/m/e/d0/b;
        value = "26"
    .end annotation
.end field

.field public static final enum ERROR_CODE_NO_APP:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Le/m/e/d0/b;
        value = "3"
    .end annotation
.end field

.field public static final enum ERROR_CODE_NO_USER:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Le/m/e/d0/b;
        value = "1"
    .end annotation
.end field

.field public static final enum ERROR_CODE_USER_ALREADY_PRESENT:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Le/m/e/d0/b;
        value = "4"
    .end annotation
.end field

.field public static final enum ERROR_CODE_USER_DELETED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Le/m/e/d0/b;
        value = "19"
    .end annotation
.end field

.field public static final enum ERROR_CODE_USER_MISMATCH:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Le/m/e/d0/b;
        value = "2"
    .end annotation
.end field


# instance fields
.field private intVal:I

.field private strVal:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v1, "ERROR_CODE_NO_USER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_NO_USER:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v4, "ERROR_CODE_USER_MISMATCH"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5, v4}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_USER_MISMATCH:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v4, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v6, "ERROR_CODE_NO_APP"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7, v6}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_NO_APP:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v6, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v8, "ERROR_CODE_USER_ALREADY_PRESENT"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9, v8}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_USER_ALREADY_PRESENT:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v8, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v10, "ERROR_CODE_BAD_REQUEST"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11, v10}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_BAD_REQUEST:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v10, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v12, "ERROR_CODE_USER_DELETED"

    const/16 v13, 0x13

    invoke-direct {v10, v12, v11, v13, v12}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_USER_DELETED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v12, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v13, "ERROR_CODE_APP_DELETED"

    const/4 v14, 0x6

    const/16 v15, 0x14

    invoke-direct {v12, v13, v14, v15, v13}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_APP_DELETED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v13, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v15, "ERROR_CODE_INVALID_JWT_TOKEN"

    const/4 v14, 0x7

    const/16 v11, 0x17

    invoke-direct {v13, v15, v14, v11, v15}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_INVALID_JWT_TOKEN:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v11, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v15, "ERROR_CODE_JWT_CLAIMS_TOO_LARGE"

    const/16 v14, 0x8

    const/16 v9, 0x19

    const-string v7, "ERROR_CODE_JWT_CLAIMS_SIZE_EXCEEDED"

    invoke-direct {v11, v15, v14, v9, v7}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_JWT_CLAIMS_TOO_LARGE:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v7, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v9, "ERROR_CODE_JWT_TOKEN_EXPIRED"

    const/16 v15, 0x9

    const/16 v14, 0x1a

    const-string v5, "ERROR_CODE_EXPIRED_JWT_TOKEN"

    invoke-direct {v7, v9, v15, v14, v5}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_JWT_TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const/16 v5, 0xa

    new-array v5, v5, [Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v13, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    aput-object v7, v5, v15

    sput-object v5, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->intVal:I

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->strVal:Ljava/lang/String;

    return-void
.end method

.method public static fromInt(I)Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->values()[Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->getIntVal()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    return-object v0
.end method


# virtual methods
.method public getIntVal()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->intVal:I

    return v0
.end method

.method public getStrVal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->strVal:Ljava/lang/String;

    return-object v0
.end method
