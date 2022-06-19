.class public Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;->enabled:Z

    return-void
.end method
