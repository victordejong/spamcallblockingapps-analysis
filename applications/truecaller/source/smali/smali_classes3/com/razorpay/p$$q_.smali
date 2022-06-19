.class public final Lcom/razorpay/p$$q_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/Callback;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/razorpay/F_$o_;


# direct methods
.method public constructor <init>(Lcom/razorpay/F_$o_;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/p$$q_;->b:Lcom/razorpay/F_$o_;

    iput-object p2, p0, Lcom/razorpay/p$$q_;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/razorpay/p$$q_;->a:Ljava/lang/String;

    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/BaseConfig;->getMagicJsFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/razorpay/BaseUtils;->getVersionedAssetName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/razorpay/p$$q_;->b:Lcom/razorpay/F_$o_;

    iget-object v2, v2, Lcom/razorpay/F_$o_;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/razorpay/BaseUtils;->storeFileInInternal(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/razorpay/p$$q_;->b:Lcom/razorpay/F_$o_;

    invoke-static {p1, v0}, Lcom/razorpay/F_$o_;->b(Lcom/razorpay/F_$o_;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/razorpay/p$$q_;->b:Lcom/razorpay/F_$o_;

    iget-object p1, p1, Lcom/razorpay/F_$o_;->a:Landroid/app/Activity;

    sget-object v0, Lcom/razorpay/F_$o_;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/razorpay/p$$q_;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/razorpay/BaseUtils;->updateLocalVersion(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
