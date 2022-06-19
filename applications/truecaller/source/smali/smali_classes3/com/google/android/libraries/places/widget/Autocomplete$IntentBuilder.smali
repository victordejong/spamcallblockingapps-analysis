.class public Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/widget/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzed$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzed;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzl()Lcom/google/android/libraries/places/internal/zzed$zza;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzec;->zzb:Lcom/google/android/libraries/places/internal/zzec;

    .line 5
    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzed;->zza(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;Lcom/google/android/libraries/places/internal/zzec;)Lcom/google/android/libraries/places/internal/zzed$zza;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/libraries/places/widget/AutocompleteActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 4
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x1010433

    const/4 v4, 0x1

    .line 5
    invoke-virtual {p1, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(I)Lcom/google/android/libraries/places/internal/zzed$zza;

    .line 7
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x1010434

    .line 8
    invoke-virtual {p1, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget p1, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zzb(I)Lcom/google/android/libraries/places/internal/zzed$zza;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza()Lcom/google/android/libraries/places/internal/zzed;

    move-result-object p1

    const-string v1, "places/AutocompleteOptions"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 13
    throw p1
.end method

.method public setCountries(Ljava/util/List;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setInitialQuery(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public setTypeFilter(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzec;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->zza:Lcom/google/android/libraries/places/internal/zzed$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Lcom/google/android/libraries/places/internal/zzec;)Lcom/google/android/libraries/places/internal/zzed$zza;

    return-object p0
.end method
