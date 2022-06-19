.class public Le/n/b/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/n/b/k0$b;,
        Le/n/b/k0$c;,
        Le/n/b/k0$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public b:Ljava/lang/ref/WeakReference;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Le/n/b/k0$b;

.field public f:Le/n/b/k0$d;

.field public final g:Le/n/b/k0$c;

.field public final h:Landroid/os/Handler;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iput-object p2, p0, Le/n/b/k0;->d:Landroid/view/View;

    .line 5
    iput-object p3, p0, Le/n/b/k0;->c:Landroid/view/View;

    .line 6
    new-instance p2, Le/n/b/k0$b;

    invoke-direct {p2, p4, p5}, Le/n/b/k0$b;-><init>(II)V

    iput-object p2, p0, Le/n/b/k0;->e:Le/n/b/k0$b;

    .line 7
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Le/n/b/k0;->h:Landroid/os/Handler;

    .line 8
    new-instance p2, Le/n/b/k0$c;

    invoke-direct {p2, p0}, Le/n/b/k0$c;-><init>(Le/n/b/k0;)V

    iput-object p2, p0, Le/n/b/k0;->g:Le/n/b/k0$c;

    .line 9
    new-instance p2, Le/n/b/k0$a;

    invoke-direct {p2, p0}, Le/n/b/k0$a;-><init>(Le/n/b/k0;)V

    iput-object p2, p0, Le/n/b/k0;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 10
    new-instance p4, Ljava/lang/ref/WeakReference;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Le/n/b/k0;->b:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/ViewTreeObserver;

    if-eqz p4, :cond_0

    .line 12
    invoke-virtual {p4}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, p3}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_1

    .line 14
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p4, "Unable to set Visibility Tracker due to no available root view."

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p5

    if-nez p5, :cond_2

    .line 17
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p4, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_2
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Le/n/b/k0;->b:Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    return-void
.end method
