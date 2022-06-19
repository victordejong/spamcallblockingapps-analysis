.class public final Le/m/a/f/e/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/b/e;->a:Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Le/m/a/f/e/b/e;->a:Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Le/m/a/f/e/b/e;->a:Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->onConnectionSuspended(I)V

    return-void
.end method
