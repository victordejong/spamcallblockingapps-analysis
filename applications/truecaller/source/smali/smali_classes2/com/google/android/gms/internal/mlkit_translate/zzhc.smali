.class public final Lcom/google/android/gms/internal/mlkit_translate/zzhc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null FID"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Invalid FID: must be exactly 22 characters: "

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_1
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x63

    if-lt v3, v4, :cond_2

    const/16 v4, 0x66

    if-gt v3, v4, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    const-string v4, "Invalid FID: must start with [c-f]: "

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_3
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    move v3, v2

    :goto_4
    if-ge v3, v0, :cond_a

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v5, 0x39

    if-le v4, v5, :cond_8

    :cond_4
    const/16 v5, 0x61

    if-lt v4, v5, :cond_5

    const/16 v5, 0x7a

    if-le v4, v5, :cond_8

    :cond_5
    const/16 v5, 0x41

    if-lt v4, v5, :cond_6

    const/16 v5, 0x5a

    if-le v4, v5, :cond_8

    :cond_6
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_8

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_7

    goto :goto_5

    :cond_7
    move v4, v2

    goto :goto_6

    :cond_8
    :goto_5
    move v4, v1

    :goto_6
    const-string v5, "Invalid FID: must contain only URL-safe base-64 characters: "

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_9
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_7
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 9
    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhc;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_translate/zzhc;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhc;->zza:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzhc;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_translate/zzhc;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhc;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhc;->zza:Ljava/lang/String;

    return-object v0
.end method
