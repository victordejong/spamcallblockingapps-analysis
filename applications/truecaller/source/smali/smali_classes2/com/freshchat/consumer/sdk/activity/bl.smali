.class public synthetic Lcom/freshchat/consumer/sdk/activity/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic jz:[I

.field public static final synthetic ld:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/c/a;->values()[Lcom/freshchat/consumer/sdk/j/c/a;

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lcom/freshchat/consumer/sdk/activity/bl;->ld:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Lcom/freshchat/consumer/sdk/j/c/a;->lp:Lcom/freshchat/consumer/sdk/j/c/a;

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v4, Lcom/freshchat/consumer/sdk/activity/bl;->ld:[I

    sget-object v5, Lcom/freshchat/consumer/sdk/j/c/a;->lq:Lcom/freshchat/consumer/sdk/j/c/a;

    aput v1, v4, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v4, Lcom/freshchat/consumer/sdk/activity/bl;->ld:[I

    sget-object v5, Lcom/freshchat/consumer/sdk/j/c/a;->lr:Lcom/freshchat/consumer/sdk/j/c/a;

    aput v0, v4, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/az$c;->values()[Lcom/freshchat/consumer/sdk/j/az$c;

    new-array v4, v0, [I

    sput-object v4, Lcom/freshchat/consumer/sdk/activity/bl;->jz:[I

    :try_start_3
    sget-object v5, Lcom/freshchat/consumer/sdk/j/az$c;->kV:Lcom/freshchat/consumer/sdk/j/az$c;

    aput v3, v4, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/freshchat/consumer/sdk/activity/bl;->jz:[I

    sget-object v5, Lcom/freshchat/consumer/sdk/j/az$c;->kU:Lcom/freshchat/consumer/sdk/j/az$c;

    aput v1, v4, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/freshchat/consumer/sdk/activity/bl;->jz:[I

    sget-object v3, Lcom/freshchat/consumer/sdk/j/az$c;->kT:Lcom/freshchat/consumer/sdk/j/az$c;

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
