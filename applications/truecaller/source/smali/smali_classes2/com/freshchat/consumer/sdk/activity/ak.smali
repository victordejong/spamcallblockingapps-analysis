.class public synthetic Lcom/freshchat/consumer/sdk/activity/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic pi:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/freshchat/consumer/sdk/service/Status;->values()[Lcom/freshchat/consumer/sdk/service/Status;

    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/freshchat/consumer/sdk/activity/ak;->pi:[I

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->INIT_LOADING:Lcom/freshchat/consumer/sdk/service/Status;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    const/4 v1, 0x4

    :try_start_1
    sget-object v2, Lcom/freshchat/consumer/sdk/activity/ak;->pi:[I

    sget-object v3, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/freshchat/consumer/sdk/activity/ak;->pi:[I

    sget-object v4, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    aput v2, v3, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v0, 0x5

    :try_start_3
    sget-object v3, Lcom/freshchat/consumer/sdk/activity/ak;->pi:[I

    sget-object v4, Lcom/freshchat/consumer/sdk/service/Status;->COMPLETE:Lcom/freshchat/consumer/sdk/service/Status;

    aput v1, v3, v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/freshchat/consumer/sdk/activity/ak;->pi:[I

    sget-object v3, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
