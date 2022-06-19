.class public final Lcom/razorpay/U_$B$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/razorpay/RzpAssist;


# direct methods
.method public constructor <init>(Lcom/razorpay/RzpAssist;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/U_$B$;->b:Lcom/razorpay/RzpAssist;

    iput-boolean p2, p0, Lcom/razorpay/U_$B$;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/U_$B$;->b:Lcom/razorpay/RzpAssist;

    invoke-static {v0}, Lcom/razorpay/RzpAssist;->access$000(Lcom/razorpay/RzpAssist;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/razorpay/U_$B$;->a:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method
