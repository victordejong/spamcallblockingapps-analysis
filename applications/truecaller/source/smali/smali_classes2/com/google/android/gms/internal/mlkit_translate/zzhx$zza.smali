.class public final Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_translate/zzhx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/Date;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

.field private zzd:Lcom/google/android/gms/internal/mlkit_translate/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzu<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/mlkit_translate/zzhr;

.field private final synthetic zzf:Lcom/google/android/gms/internal/mlkit_translate/zzhx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzhx;Ljava/lang/String;Ljava/util/Date;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zza:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzb:Ljava/util/Date;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzie;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhx;)Lcom/google/android/gms/internal/mlkit_translate/zzhx$zzb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhx;)Lcom/google/android/gms/internal/mlkit_translate/zzhs;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zzb;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhs;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_translate/zzie; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhx;)Lcom/google/android/gms/internal/mlkit_translate/zzhs;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzhx;)Lcom/google/android/gms/internal/mlkit_translate/zzhf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzhc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhc;->zza()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zza:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzu;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzu;

    move-result-object v7

    const/4 v8, 0x0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzu;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzu;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzb:Ljava/util/Date;

    iget-object v12, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    const-string v11, "o:a:mlkit:1.0.0"

    .line 7
    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zza(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhu;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhu;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzhr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhr;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhr;->zza()Lorg/json/JSONObject;

    move-result-object v1

    .line 10
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzb(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_translate/zzu;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzu;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    .line 11
    :catch_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    return v0

    .line 13
    :catch_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_translate/zzhr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhr;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_translate/zzu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzu<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzu;

    return-object v0
.end method
