.class public Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private final zza:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

.field private zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_fragment:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 2
    new-instance v0, Ln3/v/k0;

    invoke-direct {v0}, Ln3/v/k0;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Ln3/v/k0;

    .line 3
    new-instance v0, Ln3/v/k0;

    invoke-direct {v0}, Ln3/v/k0;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Ln3/v/k0;

    .line 4
    sget-object v0, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->OVERLAY:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 5
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzgi;->zza()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzec;->zza:Lcom/google/android/libraries/places/internal/zzec;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzed;->zza(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;Lcom/google/android/libraries/places/internal/zzec;)Lcom/google/android/libraries/places/internal/zzed$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    return-void
.end method

.method public static newInstance()Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;-><init>()V

    return-object v0
.end method

.method private final zza()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza()Lcom/google/android/libraries/places/internal/zzed;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;-><init>(Lcom/google/android/libraries/places/internal/zzed;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    const/16 v1, 0x76d5

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static final synthetic zza(Landroid/widget/EditText;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .line 5
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 7
    :goto_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 8
    throw p0
.end method

.method private final zzc(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Ln3/v/k0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x76d5

    if-ne p1, v0, :cond_3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Places"

    if-nez p1, :cond_0

    const/4 p1, 0x5

    .line 2
    :try_start_1
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return-void

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x6

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return-void

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 4
    invoke-static {p3}, Lcom/google/android/libraries/places/widget/Autocomplete;->getPlaceFromIntent(Landroid/content/Intent;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;->onPlaceSelected(Lcom/google/android/libraries/places/api/model/Place;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->setText(Ljava/lang/CharSequence;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

    return-void

    .line 7
    :cond_2
    invoke-static {p3}, Lcom/google/android/libraries/places/widget/Autocomplete;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;->onError(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 10
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "options"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzed;

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Ln3/v/k0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Ln3/v/k0;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Ln3/v/k0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Ln3/v/k0;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzl()Lcom/google/android/libraries/places/internal/zzed$zza;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 9
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza()Lcom/google/android/libraries/places/internal/zzed;

    move-result-object v0

    const-string v1, "options"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    sget p2, Lcom/google/android/libraries/places/R$id;->places_autocomplete_search_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2
    sget v0, Lcom/google/android/libraries/places/R$id;->places_autocomplete_clear_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/google/android/libraries/places/R$id;->places_autocomplete_search_input:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 4
    new-instance v1, Lcom/google/android/libraries/places/widget/zze;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/widget/zze;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v1, Lcom/google/android/libraries/places/widget/zzg;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/widget/zzg;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v1, Lcom/google/android/libraries/places/widget/zzf;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/widget/zzf;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc(Landroid/view/View;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Ln3/v/k0;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/places/widget/zzi;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/libraries/places/widget/zzi;-><init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;Landroid/widget/EditText;Landroid/view/View;)V

    .line 10
    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Ln3/v/k0;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/widget/zzh;

    invoke-direct {v2, p1, p2}, Lcom/google/android/libraries/places/widget/zzh;-><init>(Landroid/widget/EditText;Landroid/view/View;)V

    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    return-void
.end method

.method public setActivityMode(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setCountries(Ljava/util/List;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public varargs setCountries([Ljava/lang/String;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzgi;->zza([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setHint(Ljava/lang/CharSequence;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    sget p1, Lcom/google/android/libraries/places/R$string;->places_autocomplete_search_hint:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzed$zza;

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Ln3/v/k0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzed$zza;

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzb:Ln3/v/k0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->j(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6
    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 7
    throw p1
.end method

.method public setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setOnPlaceSelectedListener(Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzd:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    return-object p0
.end method

.method public setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzed$zza;

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza:Ln3/v/k0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->j(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 3
    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 4
    throw p1
.end method

.method public setTypeFilter(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public final synthetic zza(Landroid/view/View;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza()V

    return-void
.end method

.method public final synthetic zzb(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zza()V

    return-void
.end method

.method public final synthetic zzb(Landroid/widget/EditText;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->zzc(Landroid/view/View;)V
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
