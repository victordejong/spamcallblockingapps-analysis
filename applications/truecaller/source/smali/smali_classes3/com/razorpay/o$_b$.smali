.class public final Lcom/razorpay/o$_b$;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/Throwable;

.field private synthetic b:Lcom/razorpay/d__B_;


# direct methods
.method public constructor <init>(Lcom/razorpay/d__B_;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/o$_b$;->b:Lcom/razorpay/d__B_;

    iput-object p2, p0, Lcom/razorpay/o$_b$;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/o$_b$;->a:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->reportUncaughtException(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/razorpay/o$_b$;->b:Lcom/razorpay/d__B_;

    iget-object v0, v0, Lcom/razorpay/d__B_;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->saveEventsToPreferences(Landroid/content/Context;)V

    return-void
.end method
