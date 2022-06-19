.class public Lcom/freshchat/consumer/sdk/beans/config/DefaultLiveTranslationConfig;
.super Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;
.source "SourceFile"


# static fields
.field private static final LIVE_TRANSLATION_ENABLED:Z = false


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;->setEnabled(Z)V

    return-void
.end method
