.class public final Lcom/google/android/libraries/places/internal/zzdr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context must not be null."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdr;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzgn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgn<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdr;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdr;->zza:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzde;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/google/android/libraries/places/internal/zzgm;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzgm;-><init>()V

    if-eqz v0, :cond_0

    const-string v3, "X-Android-Package"

    .line 5
    invoke-virtual {v2, v3, v0}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "X-Android-Cert"

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza()Lcom/google/android/libraries/places/internal/zzgn;

    move-result-object v0

    return-object v0
.end method
