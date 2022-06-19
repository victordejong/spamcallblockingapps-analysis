.class public final Lcom/google/android/libraries/places/internal/zzfh;
.super Lcom/google/android/libraries/places/internal/zzfi;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzfh;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzfh;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzfh;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzfh;->zza:Lcom/google/android/libraries/places/internal/zzfh;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzfi;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-string v0, "index"

    .line 2
    invoke-static {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(IILjava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public final zzb(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
