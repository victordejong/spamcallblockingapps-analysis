.class public final Le/m/a/f/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/f/a;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 2

    iget-object v0, p0, Le/m/a/f/f/a;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    .line 1
    iput-object p1, v0, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    .line 2
    iget-object p1, v0, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->c:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/f/f/h;

    iget-object v1, p0, Le/m/a/f/f/a;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    .line 5
    invoke-interface {v0, v1}, Le/m/a/f/f/h;->a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/m/a/f/f/a;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->c:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Le/m/a/f/f/a;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p1, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->b:Landroid/os/Bundle;

    return-void
.end method
