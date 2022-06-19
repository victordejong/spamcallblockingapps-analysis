.class public final Lcom/google/android/libraries/places/internal/zzes$zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/a1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzek;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzey;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzfa;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzek;Lcom/google/android/libraries/places/internal/zzey;Lcom/google/android/libraries/places/internal/zzfa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzes$zza;->zza:Lcom/google/android/libraries/places/internal/zzek;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzes$zza;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzes$zza;->zzc:Lcom/google/android/libraries/places/internal/zzfa;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Ln3/v/y0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/v/y0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzes;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "This factory can only be used to instantiate its enclosing class."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(ZLjava/lang/Object;)V

    .line 2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzes;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes$zza;->zza:Lcom/google/android/libraries/places/internal/zzek;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzes$zza;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzes$zza;->zzc:Lcom/google/android/libraries/places/internal/zzfa;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzes;-><init>(Lcom/google/android/libraries/places/internal/zzek;Lcom/google/android/libraries/places/internal/zzey;Lcom/google/android/libraries/places/internal/zzfa;Lcom/google/android/libraries/places/internal/zzew;)V

    return-object p1
.end method
