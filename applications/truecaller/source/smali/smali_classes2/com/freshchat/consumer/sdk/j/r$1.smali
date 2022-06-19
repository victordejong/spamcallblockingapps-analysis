.class public synthetic Lcom/freshchat/consumer/sdk/j/r$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic kw:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->values()[Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/freshchat/consumer/sdk/j/r$1;->kw:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->CURRENT_AVG:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/freshchat/consumer/sdk/j/r$1;->kw:[I

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->LAST_WEEK_AVG:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
