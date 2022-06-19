.class public Lcom/freshchat/consumer/sdk/j/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/cw$a;
    }
.end annotation


# static fields
.field private static final ir:Lcom/freshchat/consumer/sdk/j/cw$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/cw$a;->is:Lcom/freshchat/consumer/sdk/j/cw$a;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/cw;->ir:Lcom/freshchat/consumer/sdk/j/cw$a;

    return-void
.end method

.method public static bu(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "com.freshchat.consumer.sdk.flutter.FreshchatSdkPlugin"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/ao;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/freshchat/consumer/sdk/j/cw$a;->it:Lcom/freshchat/consumer/sdk/j/cw$a;

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/cw$a;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "com.freshchat.consumer.sdk.react.RNFreshchatSdk"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/ao;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/freshchat/consumer/sdk/j/cw$a;->iu:Lcom/freshchat/consumer/sdk/j/cw$a;

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/cw$a;->name:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "com.freshdesk.freshchat.android.freshchatPlugin"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/ao;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/freshchat/consumer/sdk/j/cw$a;->iv:Lcom/freshchat/consumer/sdk/j/cw$a;

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/cw$a;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    sget-object p0, Lcom/freshchat/consumer/sdk/j/cw;->ir:Lcom/freshchat/consumer/sdk/j/cw$a;

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/cw$a;->name:Ljava/lang/String;

    return-object p0
.end method
