.class public synthetic Lcom/freshchat/consumer/sdk/k/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic nt:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/freshchat/consumer/sdk/k/e$a;->values()[Lcom/freshchat/consumer/sdk/k/e$a;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sput-object v1, Lcom/freshchat/consumer/sdk/k/f;->nt:[I

    :try_start_0
    sget-object v2, Lcom/freshchat/consumer/sdk/k/e$a;->nv:Lcom/freshchat/consumer/sdk/k/e$a;

    const/4 v2, 0x1

    aput v2, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/k/f;->nt:[I

    sget-object v2, Lcom/freshchat/consumer/sdk/k/e$a;->rF:Lcom/freshchat/consumer/sdk/k/e$a;

    const/4 v2, 0x0

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
