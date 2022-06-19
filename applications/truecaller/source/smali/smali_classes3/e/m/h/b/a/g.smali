.class public final synthetic Le/m/h/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzcv$zza;


# instance fields
.field public final a:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

.field public final b:J

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/mlkit_language_id/zzai;

.field public final e:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;

.field public final f:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzc;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;JZLcom/google/android/gms/internal/mlkit_language_id/zzai;Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/a/g;->a:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

    iput-wide p2, p0, Le/m/h/b/a/g;->b:J

    iput-boolean p4, p0, Le/m/h/b/a/g;->c:Z

    iput-object p5, p0, Le/m/h/b/a/g;->d:Lcom/google/android/gms/internal/mlkit_language_id/zzai;

    iput-object p6, p0, Le/m/h/b/a/g;->e:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;

    iput-object p7, p0, Le/m/h/b/a/g;->f:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;
    .locals 8

    iget-object v0, p0, Le/m/h/b/a/g;->a:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

    iget-wide v1, p0, Le/m/h/b/a/g;->b:J

    iget-boolean v3, p0, Le/m/h/b/a/g;->c:Z

    iget-object v4, p0, Le/m/h/b/a/g;->d:Lcom/google/android/gms/internal/mlkit_language_id/zzai;

    iget-object v5, p0, Le/m/h/b/a/g;->e:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;

    iget-object v6, p0, Le/m/h/b/a/g;->f:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzc;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;

    move-result-object v7

    iget-object v0, v0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->a:Le/m/h/b/a/a;

    .line 3
    invoke-virtual {v0}, Le/m/h/b/a/a;->a()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzaf;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzaf$zza;

    move-result-object v7

    .line 5
    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzaf$zza;->zza(J)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzaf$zza;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzaf$zza;->zza(Z)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzaf$zza;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzaf$zza;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzai;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzaf$zza;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzaf$zza;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;

    move-result-object v0

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;

    :cond_0
    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzc;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

    move-result-object v1

    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;->zza(Z)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zza;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzad$zza;

    move-result-object v0

    return-object v0
.end method
