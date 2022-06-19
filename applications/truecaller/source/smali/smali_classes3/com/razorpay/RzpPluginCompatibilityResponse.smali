.class public Lcom/razorpay/RzpPluginCompatibilityResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lproguard/annotation/Keep;
.end annotation

.annotation build Lproguard/annotation/KeepClassMembers;
.end annotation


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private isCompatible:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/razorpay/RzpPluginCompatibilityResponse;->isCompatible:Z

    .line 3
    iput-object p2, p0, Lcom/razorpay/RzpPluginCompatibilityResponse;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/RzpPluginCompatibilityResponse;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isCompatible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/RzpPluginCompatibilityResponse;->isCompatible:Z

    return v0
.end method
