.class public Le/i/b/r1/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/r1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/i/b/r1/v;

.field public volatile c:Le/i/b/r1/r;


# direct methods
.method public constructor <init>(Ljava/lang/ref/Reference;Le/i/b/r1/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "Landroid/view/View;",
            ">;",
            "Le/i/b/r1/v;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/i/b/r1/w$a;->c:Le/i/b/r1/r;

    .line 3
    iput-object p1, p0, Le/i/b/r1/w$a;->a:Ljava/lang/ref/Reference;

    .line 4
    iput-object p2, p0, Le/i/b/r1/w$a;->b:Le/i/b/r1/v;

    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .line 1
    iget-object v0, p0, Le/i/b/r1/w$a;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v3, p0, Le/i/b/r1/w$a;->b:Le/i/b/r1/v;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    :goto_2
    move v0, v1

    goto :goto_3

    .line 6
    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_7

    .line 7
    iget-object v0, p0, Le/i/b/r1/w$a;->c:Le/i/b/r1/r;

    if-eqz v0, :cond_7

    .line 8
    iget-object v3, v0, Le/i/b/r1/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    .line 9
    :cond_5
    iget-object v1, v0, Le/i/b/r1/r;->c:Le/i/b/r1/q;

    iget-object v3, v0, Le/i/b/r1/r;->a:Ljava/lang/Iterable;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    .line 12
    iget-object v5, v1, Le/i/b/r1/q;->b:Ljava/util/concurrent/Executor;

    new-instance v6, Le/i/b/r1/q$a;

    iget-object v7, v1, Le/i/b/r1/q;->a:Le/i/b/i2/g;

    const/4 v8, 0x0

    invoke-direct {v6, v4, v7, v8}, Le/i/b/r1/q$a;-><init>(Ljava/net/URL;Le/i/b/i2/g;Le/i/b/r1/p;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 13
    :cond_6
    iget-object v1, v0, Le/i/b/r1/r;->b:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    if-eqz v1, :cond_7

    .line 14
    iget-object v0, v0, Le/i/b/r1/r;->c:Le/i/b/r1/q;

    .line 15
    iget-object v0, v0, Le/i/b/r1/q;->c:Le/i/b/w1/c;

    new-instance v3, Le/i/b/r1/p;

    invoke-direct {v3, v1}, Le/i/b/r1/p;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    .line 16
    iget-object v0, v0, Le/i/b/w1/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_5
    return v2
.end method
