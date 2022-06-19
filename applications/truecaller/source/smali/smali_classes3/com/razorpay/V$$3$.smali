.class public final Lcom/razorpay/V$$3$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/Callback;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/razorpay/OtpElfData;


# direct methods
.method public constructor <init>(Lcom/razorpay/OtpElfData;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/V$$3$;->b:Lcom/razorpay/OtpElfData;

    iput-object p2, p0, Lcom/razorpay/V$$3$;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/razorpay/ResponseObject;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/BaseUtils;->decryptFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/razorpay/V$$3$;->a:Ljava/lang/String;

    invoke-static {}, Lcom/razorpay/n$_B$;->a()Lcom/razorpay/BaseConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/BaseConfig;->getOTPElfJsFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/razorpay/BaseUtils;->getVersionedAssetName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/razorpay/V$$3$;->b:Lcom/razorpay/OtpElfData;

    iget-object v2, v2, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/razorpay/BaseUtils;->storeFileInInternal(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/razorpay/V$$3$;->b:Lcom/razorpay/OtpElfData;

    invoke-static {p1, v0}, Lcom/razorpay/OtpElfData;->access$102(Lcom/razorpay/OtpElfData;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/razorpay/V$$3$;->b:Lcom/razorpay/OtpElfData;

    iget-object p1, p1, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    sget-object v0, Lcom/razorpay/OtpElfData;->versionKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/razorpay/V$$3$;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/razorpay/BaseUtils;->updateLocalVersion(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
