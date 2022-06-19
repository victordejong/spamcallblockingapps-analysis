.class public final Le/m/a/f/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/f/h;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/f/f;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 0

    iget-object p1, p0, Le/m/a/f/f/f;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onStart()V

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
