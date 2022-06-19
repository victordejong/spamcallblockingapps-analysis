.class public interface abstract Lcom/razorpay/RzpPlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lproguard/annotation/Keep;
.end annotation

.annotation build Lproguard/annotation/KeepClassMembers;
.end annotation


# virtual methods
.method public abstract doesHandlePayload(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;)Z
.end method

.method public abstract isCompatible(Ljava/lang/String;ILjava/lang/String;)Lcom/razorpay/RzpPluginCompatibilityResponse;
.end method

.method public abstract isRegistered(Landroid/content/Context;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isRegistered(Landroid/content/Context;Lcom/razorpay/RzpPluginRegisterCallback;)V
.end method

.method public abstract onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
.end method

.method public abstract processPayment(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)V
.end method
