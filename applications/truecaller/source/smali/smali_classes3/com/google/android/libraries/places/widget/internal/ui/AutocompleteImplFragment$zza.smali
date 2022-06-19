.class public final Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;
.super Ln3/r/a/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzed;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzfa;

.field private final zze:Lcom/google/android/libraries/places/internal/zzb;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/google/android/libraries/places/internal/zzed;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/r/a/t;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;->zza:I

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdj;->zza(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/zzdj$zza;

    move-result-object p2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzdj$zzb;->zzb:Lcom/google/android/libraries/places/internal/zzdj$zzb;

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzdj$zza;->zza(Lcom/google/android/libraries/places/internal/zzdj$zzb;)Lcom/google/android/libraries/places/internal/zzdj$zza;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzdj$zza;->zzb()Lcom/google/android/libraries/places/internal/zzdj;

    move-result-object p2

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/zzdl;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzdl;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/api/Places;->zza(Landroid/content/Context;Lcom/google/android/libraries/places/internal/zzdj;)Lcom/google/android/libraries/places/api/net/PlacesClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;->zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 9
    iput-object p3, p0, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;->zzc:Lcom/google/android/libraries/places/internal/zzed;

    .line 10
    new-instance p1, Lcom/google/android/libraries/places/internal/zzez;

    invoke-direct {p1, v0, p2}, Lcom/google/android/libraries/places/internal/zzez;-><init>(Lcom/google/android/libraries/places/internal/zzdn;Lcom/google/android/libraries/places/internal/zzdj;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;->zzd:Lcom/google/android/libraries/places/internal/zzfa;

    .line 11
    new-instance p1, Lcom/google/android/libraries/places/internal/zzd;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzd;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;->zze:Lcom/google/android/libraries/places/internal/zzb;

    return-void
.end method


# virtual methods
.method public final instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 9

    .line 1
    invoke-static {p1, p2}, Ln3/r/a/t;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    iget v3, p0, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;->zza:I

    iget-object v4, p0, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;->zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

    iget-object v5, p0, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;->zzc:Lcom/google/android/libraries/places/internal/zzed;

    iget-object v6, p0, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;->zzd:Lcom/google/android/libraries/places/internal/zzfa;

    iget-object v7, p0, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zza;->zze:Lcom/google/android/libraries/places/internal/zzb;

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;-><init>(ILcom/google/android/libraries/places/api/net/PlacesClient;Lcom/google/android/libraries/places/internal/zzed;Lcom/google/android/libraries/places/internal/zzfa;Lcom/google/android/libraries/places/internal/zzb;Lcom/google/android/libraries/places/widget/internal/ui/zzg;)V

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Ln3/r/a/t;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
