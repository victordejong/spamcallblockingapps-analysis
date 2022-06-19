.class public final synthetic Le/m/h/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

.field public final b:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/a/f;->a:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

    iput-object p2, p0, Le/m/h/b/a/f;->b:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    iput-object p3, p0, Le/m/h/b/a/f;->c:Ljava/lang/String;

    iput-boolean p4, p0, Le/m/h/b/a/f;->d:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    iget-object v7, p0, Le/m/h/b/a/f;->a:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

    iget-object v0, p0, Le/m/h/b/a/f;->b:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    iget-object v1, p0, Le/m/h/b/a/f;->c:Ljava/lang/String;

    iget-boolean v8, p0, Le/m/h/b/a/f;->d:Z

    .line 1
    iget-object v2, v7, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->a:Le/m/h/b/a/a;

    .line 2
    iget-object v2, v2, Le/m/h/b/a/a;->a:Ljava/lang/Float;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 4
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x3c23d70a    # 0.01f

    .line 6
    :goto_0
    iget-wide v5, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->g:J

    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 7
    iget-wide v3, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->g:J

    sget-object v5, Lcom/google/android/gms/internal/mlkit_language_id/zzb;->zza:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 9
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->nativeIdentifyPossibleLanguages(J[BF)[Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd$zza;

    move-result-object v0

    .line 12
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzb;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzb$zza;

    move-result-object v3

    .line 14
    iget-object v4, v2, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzb$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzb$zza;

    move-result-object v3

    .line 16
    iget v2, v2, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    .line 17
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzb$zza;->zza(F)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzb$zza;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd$zza;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzb$zza;)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd$zza;

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzg()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;

    const/4 v5, 0x0

    .line 20
    sget-object v6, Lcom/google/android/gms/internal/mlkit_language_id/zzai;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzai;

    move-object v0, v7

    move-wide v1, v9

    move v3, v8

    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->b(JZLcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzc;Lcom/google/android/gms/internal/mlkit_language_id/zzai;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/gms/internal/mlkit_language_id/zzai;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzai;

    move-object v0, v7

    move-wide v1, v9

    move v3, v8

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->b(JZLcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzc;Lcom/google/android/gms/internal/mlkit_language_id/zzai;)V

    .line 24
    throw v11
.end method
