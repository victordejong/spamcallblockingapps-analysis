.class public final Le/m/a/f/e/b/d;
.super Lcom/google/android/gms/common/internal/zag;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/LifecycleFragment;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/b/d;->a:Landroid/content/Intent;

    iput-object p2, p0, Le/m/a/f/e/b/d;->b:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zag;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Le/m/a/f/e/b/d;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/m/a/f/e/b/d;->b:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const/4 v2, 0x2

    .line 1
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
