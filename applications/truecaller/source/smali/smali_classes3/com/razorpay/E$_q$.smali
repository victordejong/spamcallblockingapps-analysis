.class public final Lcom/razorpay/E$_q$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lcom/razorpay/CheckoutPresenterImpl;


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutPresenterImpl;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/E$_q$;->c:Lcom/razorpay/CheckoutPresenterImpl;

    iput p2, p0, Lcom/razorpay/E$_q$;->a:I

    iput p3, p0, Lcom/razorpay/E$_q$;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/razorpay/E$_q$;->c:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v0, v0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/razorpay/E$_q$;->a:I

    .line 3
    iget-object v2, p0, Lcom/razorpay/E$_q$;->c:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v2, v2, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/razorpay/G_$8_;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lcom/razorpay/E$_q$;->c:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v1, v1, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/razorpay/E$_q$;->b:I

    invoke-static {v1, v2}, Lcom/razorpay/G_$8_;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    iget-object v1, p0, Lcom/razorpay/E$_q$;->c:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v1, v1, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
