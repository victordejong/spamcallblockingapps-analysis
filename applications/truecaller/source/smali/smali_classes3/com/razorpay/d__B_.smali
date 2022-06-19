.class public final Lcom/razorpay/d__B_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public a:Landroid/content/Context;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/razorpay/d__B_;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3
    iput-object p1, p0, Lcom/razorpay/d__B_;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()V
    .locals 2

    .line 4
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/razorpay/d__B_;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/razorpay/d__B_;

    .line 7
    iget-object v0, v0, Lcom/razorpay/d__B_;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/razorpay/d__B_;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/razorpay/d__B_;

    invoke-direct {v1, p0, v0}, Lcom/razorpay/d__B_;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/razorpay/o$_b$;

    invoke-direct {v0, p0, p2}, Lcom/razorpay/o$_b$;-><init>(Lcom/razorpay/d__B_;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    iget-object v0, p0, Lcom/razorpay/d__B_;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
