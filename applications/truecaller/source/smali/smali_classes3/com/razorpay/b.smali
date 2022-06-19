.class public final Lcom/razorpay/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/razorpay/RzpAssist;


# direct methods
.method public constructor <init>(Lcom/razorpay/RzpAssist;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/b;->b:Lcom/razorpay/RzpAssist;

    iput-object p2, p0, Lcom/razorpay/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/razorpay/b;->b:Lcom/razorpay/RzpAssist;

    invoke-static {v0}, Lcom/razorpay/RzpAssist;->access$100(Lcom/razorpay/RzpAssist;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
