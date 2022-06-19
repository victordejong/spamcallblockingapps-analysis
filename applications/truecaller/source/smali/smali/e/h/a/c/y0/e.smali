.class public Le/h/a/c/y0/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/h/a/c/y0/e;->a:Ljava/lang/Runnable;

    return-void
.end method
