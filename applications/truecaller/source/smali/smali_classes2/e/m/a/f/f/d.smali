.class public final Le/m/a/f/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/f/h;


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout;

.field public final synthetic b:Landroid/view/LayoutInflater;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/f/d;->e:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    iput-object p2, p0, Le/m/a/f/f/d;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Le/m/a/f/f/d;->b:Landroid/view/LayoutInflater;

    iput-object p4, p0, Le/m/a/f/f/d;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Le/m/a/f/f/d;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 4

    iget-object p1, p0, Le/m/a/f/f/d;->a:Landroid/widget/FrameLayout;

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Le/m/a/f/f/d;->a:Landroid/widget/FrameLayout;

    iget-object v0, p0, Le/m/a/f/f/d;->e:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    .line 3
    iget-object v1, p0, Le/m/a/f/f/d;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Le/m/a/f/f/d;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Le/m/a/f/f/d;->d:Landroid/os/Bundle;

    .line 4
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
