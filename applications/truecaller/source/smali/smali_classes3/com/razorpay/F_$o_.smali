.class public final Lcom/razorpay/F_$o_;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ljava/lang/String; = "magic_version"


# instance fields
.field public a:Landroid/app/Activity;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/razorpay/F_$o_;->a:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Lcom/razorpay/F_$o_;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/BaseConfig;->getMagicJsUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/razorpay/p$$q_;

    invoke-direct {v1, p0, p1}, Lcom/razorpay/p$$q_;-><init>(Lcom/razorpay/F_$o_;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/razorpay/p$_5$;->a(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static synthetic b(Lcom/razorpay/F_$o_;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/F_$o_;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/razorpay/F_$o_;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/razorpay/F_$o_;->a:Landroid/app/Activity;

    sget-object v1, Lcom/razorpay/F_$o_;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/razorpay/BaseUtils;->getLocalVersion(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/razorpay/BaseConfig;->getVersionJSON()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/razorpay/F_$o_;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/razorpay/BaseUtils;->getVersionFromJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/razorpay/BaseConfig;->getMagicJs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/F_$o_;->c:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/razorpay/F_$o_;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/BaseConfig;->getMagicJsFileName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/razorpay/F_$o_;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/razorpay/BaseUtils;->getFileFromInternal(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/F_$o_;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-static {}, Lcom/razorpay/BaseConfig;->getMagicJs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/F_$o_;->c:Ljava/lang/String;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/razorpay/F_$o_;->c:Ljava/lang/String;

    return-object v0
.end method
