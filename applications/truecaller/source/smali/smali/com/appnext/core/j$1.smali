.class public final Lcom/appnext/core/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/j;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IZLcom/appnext/core/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/r/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic dS:Ljava/lang/ref/WeakReference;

.field public final synthetic dT:Lcom/appnext/core/j;


# direct methods
.method public constructor <init>(Lcom/appnext/core/j;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/j$1;->dT:Lcom/appnext/core/j;

    iput-object p2, p0, Lcom/appnext/core/j$1;->dS:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Le/f/a/n/a;",
            "Z)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/appnext/core/j$1;->dS:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/r;",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/appnext/core/j$1;->dS:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/j$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/appnext/core/j$a;->aw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/appnext/core/j$1;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z

    move-result p1

    return p1
.end method
