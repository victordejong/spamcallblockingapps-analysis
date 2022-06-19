.class public final Le/m/a/f/e/a/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/zabl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabl;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/x;->a:Lcom/google/android/gms/common/api/internal/zabl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Le/m/a/f/e/a/a/x;->a:Lcom/google/android/gms/common/api/internal/zabl;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabl;->m:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/os/Handler;

    .line 2
    new-instance v1, Le/m/a/f/e/a/a/w;

    .line 3
    invoke-direct {v1, p0}, Le/m/a/f/e/a/a/w;-><init>(Le/m/a/f/e/a/a/x;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
