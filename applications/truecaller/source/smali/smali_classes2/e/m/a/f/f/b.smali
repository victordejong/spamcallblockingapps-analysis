.class public final Le/m/a/f/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/f/h;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/f/b;->d:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    iput-object p2, p0, Le/m/a/f/f/b;->a:Landroid/app/Activity;

    iput-object p3, p0, Le/m/a/f/f/b;->b:Landroid/os/Bundle;

    iput-object p4, p0, Le/m/a/f/f/b;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 3

    iget-object p1, p0, Le/m/a/f/f/b;->d:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    .line 2
    iget-object v0, p0, Le/m/a/f/f/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Le/m/a/f/f/b;->b:Landroid/os/Bundle;

    iget-object v2, p0, Le/m/a/f/f/b;->c:Landroid/os/Bundle;

    .line 3
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->e(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
