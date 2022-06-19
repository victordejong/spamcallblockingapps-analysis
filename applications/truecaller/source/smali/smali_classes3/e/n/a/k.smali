.class public Le/n/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lcom/mopub/common/VisibilityTracker;


# direct methods
.method public constructor <init>(Lcom/mopub/common/VisibilityTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/k;->a:Lcom/mopub/common/VisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/k;->a:Lcom/mopub/common/VisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/common/VisibilityTracker;->scheduleVisibilityCheck()V

    const/4 v0, 0x1

    return v0
.end method
