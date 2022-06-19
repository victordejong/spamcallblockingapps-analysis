.class public synthetic Lcom/freshchat/consumer/sdk/activity/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ld:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/c/a;->values()[Lcom/freshchat/consumer/sdk/j/c/a;

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lcom/freshchat/consumer/sdk/activity/g;->ld:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/freshchat/consumer/sdk/j/c/a;->lp:Lcom/freshchat/consumer/sdk/j/c/a;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v3, Lcom/freshchat/consumer/sdk/activity/g;->ld:[I

    sget-object v4, Lcom/freshchat/consumer/sdk/j/c/a;->lq:Lcom/freshchat/consumer/sdk/j/c/a;

    aput v1, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/freshchat/consumer/sdk/activity/g;->ld:[I

    sget-object v3, Lcom/freshchat/consumer/sdk/j/c/a;->lr:Lcom/freshchat/consumer/sdk/j/c/a;

    aput v0, v2, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
