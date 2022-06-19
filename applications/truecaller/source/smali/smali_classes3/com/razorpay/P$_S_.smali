.class public final Lcom/razorpay/P$_S_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/Callback;


# instance fields
.field private synthetic a:Lcom/razorpay/F_$o_;


# direct methods
.method public constructor <init>(Lcom/razorpay/F_$o_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/P$_S_;->a:Lcom/razorpay/F_$o_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/razorpay/ResponseObject;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/razorpay/F_$o_;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/razorpay/BaseUtils;->getVersionFromJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/razorpay/P$_S_;->a:Lcom/razorpay/F_$o_;

    iget-object v0, v0, Lcom/razorpay/F_$o_;->a:Landroid/app/Activity;

    sget-object v1, Lcom/razorpay/F_$o_;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/razorpay/BaseUtils;->getLocalVersion(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/razorpay/P$_S_;->a:Lcom/razorpay/F_$o_;

    invoke-static {v0, p1}, Lcom/razorpay/F_$o_;->a(Lcom/razorpay/F_$o_;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "error"

    const-string v1, "Could not extract version from server json"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
