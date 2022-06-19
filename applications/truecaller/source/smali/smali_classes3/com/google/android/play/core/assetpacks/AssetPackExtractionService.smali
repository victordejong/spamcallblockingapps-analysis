.class public Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Le/m/a/h/a/a/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->a:Le/m/a/h/a/a/x;

    return-object p1
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln3/g0/y;->k2(Landroid/content/Context;)Le/m/a/h/a/a/t0;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le/m/a/h/a/a/t0;->B:Le/m/a/h/a/d/k1;

    .line 4
    invoke-interface {v0}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Le/m/a/h/a/a/x;

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->a:Le/m/a/h/a/a/x;

    return-void
.end method
