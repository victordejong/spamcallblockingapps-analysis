.class public final Le/m/a/f/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/f/h;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/f/c;->b:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    iput-object p2, p0, Le/m/a/f/f/c;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 1

    iget-object p1, p0, Le/m/a/f/f/c;->b:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    .line 2
    iget-object v0, p0, Le/m/a/f/f/c;->a:Landroid/os/Bundle;

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
