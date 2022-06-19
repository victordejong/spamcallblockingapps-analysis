.class public final Lcom/razorpay/Y$_o$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/Y$_o$;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/Y$_o$;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/razorpay/BaseConfig;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
