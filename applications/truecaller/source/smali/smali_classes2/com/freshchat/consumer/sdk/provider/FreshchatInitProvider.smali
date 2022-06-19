.class public Lcom/freshchat/consumer/sdk/provider/FreshchatInitProvider;
.super Lcom/freshchat/consumer/sdk/j/cd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/cd;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "AppStateListener"

    const-string v1, " OnCreate FreshchatInitProvider"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/f/c;->a(Landroid/app/Application;)Lcom/freshchat/consumer/sdk/f/c;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
