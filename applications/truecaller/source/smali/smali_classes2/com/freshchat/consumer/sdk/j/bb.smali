.class public synthetic Lcom/freshchat/consumer/sdk/j/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic lj:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->values()[Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const/4 v0, 0x5

    new-array v1, v0, [I

    sput-object v1, Lcom/freshchat/consumer/sdk/j/bb;->lj:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    sget-object v4, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/j/bb;->lj:[I

    sget-object v4, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_SET:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const/4 v4, 0x0

    aput v3, v1, v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x3

    :try_start_2
    sget-object v3, Lcom/freshchat/consumer/sdk/j/bb;->lj:[I

    sget-object v4, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    aput v1, v3, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/freshchat/consumer/sdk/j/bb;->lj:[I

    sget-object v3, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const/4 v3, 0x4

    aput v3, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/freshchat/consumer/sdk/j/bb;->lj:[I

    sget-object v3, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_INVALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    aput v0, v2, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
