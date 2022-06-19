.class public final Lcom/google/android/libraries/places/widget/internal/ui/zzl;
.super Ln3/b0/a/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/b0/a/p<",
        "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
        "Lcom/google/android/libraries/places/widget/internal/ui/zzm;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/libraries/places/widget/internal/ui/zzo;

.field private zzb:I

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/widget/internal/ui/zzo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/widget/internal/ui/zzn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/widget/internal/ui/zzn;-><init>(Lcom/google/android/libraries/places/widget/internal/ui/zzk;)V

    invoke-direct {p0, v0}, Ln3/b0/a/p;-><init>(Ln3/b0/a/h$e;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzl;->zzc:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzl;->zza:Lcom/google/android/libraries/places/widget/internal/ui/zzo;

    return-void
.end method

.method private final zza(Landroid/view/ViewGroup;I)Lcom/google/android/libraries/places/widget/internal/ui/zzm;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/widget/internal/ui/zzm;

    iget-object v1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzl;->zza:Lcom/google/android/libraries/places/widget/internal/ui/zzo;

    sget v2, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_prediction:I

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p2, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/places/widget/internal/ui/zzm;-><init>(Lcom/google/android/libraries/places/widget/internal/ui/zzo;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 5
    throw p1
.end method


# virtual methods
.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/widget/internal/ui/zzm;

    .line 2
    :try_start_0
    invoke-virtual {p0, p2}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    iget-boolean v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzl;->zzc:Z

    invoke-virtual {p1, p2, v0}, Lcom/google/android/libraries/places/widget/internal/ui/zzm;->zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Z)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 4
    throw p1
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/widget/internal/ui/zzl;->zza(Landroid/view/ViewGroup;I)Lcom/google/android/libraries/places/widget/internal/ui/zzm;

    move-result-object p1

    return-object p1
.end method

.method public final submitList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzl;->zzb:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzl;->zzc:Z

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzl;->zzb:I

    .line 3
    invoke-super {p0, p1}, Ln3/b0/a/p;->submitList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 4
    :goto_2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 5
    throw p1
.end method
