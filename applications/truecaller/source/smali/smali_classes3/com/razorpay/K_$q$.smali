.class public final Lcom/razorpay/K_$q$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/razorpay/CheckoutUtils$BackButtonDialogCallback;


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutUtils$BackButtonDialogCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/K_$q$;->a:Lcom/razorpay/CheckoutUtils$BackButtonDialogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/razorpay/K_$q$;->a:Lcom/razorpay/CheckoutUtils$BackButtonDialogCallback;

    invoke-interface {p1}, Lcom/razorpay/CheckoutUtils$BackButtonDialogCallback;->onNegativeButtonClick()V

    return-void
.end method
