.class final Lcom/google/android/gms/internal/measurement/d5;
.super Lcom/google/android/gms/internal/measurement/e5;
.source "SourceFile"


# instance fields
.field private f:I

.field private final g:I

.field final synthetic h:Lcom/google/android/gms/internal/measurement/m5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m5;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d5;->h:Lcom/google/android/gms/internal/measurement/m5;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/e5;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/d5;->f:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/m5;->g()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/d5;->g:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/d5;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/d5;->g:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/d5;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/d5;->g:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1
    iput v1, p0, Lcom/google/android/gms/internal/measurement/d5;->f:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d5;->h:Lcom/google/android/gms/internal/measurement/m5;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/m5;->d(I)B

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 4
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
