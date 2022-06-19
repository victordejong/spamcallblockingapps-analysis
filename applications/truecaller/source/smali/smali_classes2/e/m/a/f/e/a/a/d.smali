.class public final Le/m/a/f/e/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/d;->a:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/a/f/e/a/a/d;->a:Lcom/google/android/gms/common/api/internal/zaar;

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->d:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaar;->c:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->cancelAvailabilityErrorNotifications(Landroid/content/Context;)V

    return-void
.end method
