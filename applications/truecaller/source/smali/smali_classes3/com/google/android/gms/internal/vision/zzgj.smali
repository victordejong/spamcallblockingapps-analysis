.class public final Lcom/google/android/gms/internal/vision/zzgj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zztf:Lcom/google/android/gms/internal/vision/zzgf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgf<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zztg:Lcom/google/android/gms/internal/vision/zzgf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgf<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzgh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgj;->zztf:Lcom/google/android/gms/internal/vision/zzgf;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgj;->zzfp()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgj;->zztg:Lcom/google/android/gms/internal/vision/zzgf;

    return-void
.end method

.method private static zzfp()Lcom/google/android/gms/internal/vision/zzgf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/zzgf<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzfq()Lcom/google/android/gms/internal/vision/zzgf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/zzgf<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgj;->zztf:Lcom/google/android/gms/internal/vision/zzgf;

    return-object v0
.end method

.method public static zzfr()Lcom/google/android/gms/internal/vision/zzgf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/zzgf<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgj;->zztg:Lcom/google/android/gms/internal/vision/zzgf;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
