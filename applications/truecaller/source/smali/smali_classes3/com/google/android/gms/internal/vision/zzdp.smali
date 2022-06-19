.class public final Lcom/google/android/gms/internal/vision/zzdp;
.super Lcom/google/android/gms/internal/vision/zzdf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzdf<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient offset:I

.field private final transient size:I

.field private final transient zzlx:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzdf;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzdp;->zzlx:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzdp;->offset:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzdp;->size:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzdp;->size:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzct;->zzc(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdp;->zzlx:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzdp;->offset:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzdp;->size:I

    return v0
.end method
