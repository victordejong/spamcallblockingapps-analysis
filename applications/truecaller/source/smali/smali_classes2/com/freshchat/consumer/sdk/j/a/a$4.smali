.class public synthetic Lcom/freshchat/consumer/sdk/j/a/a$4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic iV:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/a/a$d;->values()[Lcom/freshchat/consumer/sdk/j/a/a$d;

    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a$4;->iV:[I

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/a$d;->jd:Lcom/freshchat/consumer/sdk/j/a/a$d;

    const/4 v1, 0x1

    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a$4;->iV:[I

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/a$d;->je:Lcom/freshchat/consumer/sdk/j/a/a$d;

    const/4 v1, 0x2

    aput v1, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
