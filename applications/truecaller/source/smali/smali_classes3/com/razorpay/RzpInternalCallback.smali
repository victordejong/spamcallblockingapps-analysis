.class public interface abstract Lcom/razorpay/RzpInternalCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lproguard/annotation/Keep;
.end annotation

.annotation build Lproguard/annotation/KeepClassMembers;
.end annotation


# virtual methods
.method public abstract onPaymentError(ILjava/lang/String;)V
.end method

.method public abstract onPaymentSuccess(Ljava/lang/String;)V
.end method
