.class public Lcom/razorpay/PaymentData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private data:Lorg/json/JSONObject;

.field private externalWallet:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private paymentId:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private userContact:Ljava/lang/String;

.field private userEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/razorpay/PaymentData;->data:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/PaymentData;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getExternalWallet()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/PaymentData;->externalWallet:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/PaymentData;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/PaymentData;->paymentId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/PaymentData;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserContact()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/PaymentData;->userContact:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/PaymentData;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/PaymentData;->data:Lorg/json/JSONObject;

    return-void
.end method

.method public setExternalWallet(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/PaymentData;->externalWallet:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/PaymentData;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPaymentId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/PaymentData;->paymentId:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/PaymentData;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUserContact(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/PaymentData;->userContact:Ljava/lang/String;

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/PaymentData;->userEmail:Ljava/lang/String;

    return-void
.end method
