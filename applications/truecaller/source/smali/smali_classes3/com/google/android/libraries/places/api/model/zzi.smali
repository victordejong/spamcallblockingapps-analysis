.class public abstract Lcom/google/android/libraries/places/api/model/zzi;
.super Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/os/ParcelUuid;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;-><init>()V

    const-string v0, "Null UUID"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzi;->zza:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzi;->zza:Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->zza()Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzi;->zza:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public final zza()Landroid/os/ParcelUuid;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzi;->zza:Landroid/os/ParcelUuid;

    return-object v0
.end method
