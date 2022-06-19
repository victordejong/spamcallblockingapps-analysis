.class public final Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/nl/translate/internal/TranslateJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/mlkit/nl/translate/internal/TranslateJni;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/nl/translate/internal/TranslateJni;Le/m/h/b/b/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->d:Lcom/google/mlkit/nl/translate/internal/TranslateJni;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->d:Lcom/google/mlkit/nl/translate/internal/TranslateJni;

    .line 2
    iget-object v0, v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->d:Le/m/h/b/b/e/v;

    .line 3
    iget-object v1, v0, Le/m/h/b/b/e/v;->d:Le/m/h/a/d/n/c;

    .line 4
    invoke-static {p2, p3}, Le/m/h/b/b/e/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Le/m/h/a/d/k;->d:Le/m/h/a/d/k;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v2, v3, v4}, Le/m/h/a/d/n/c;->b(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;

    move-result-object v1

    .line 6
    invoke-static {p2, p3}, Le/m/h/b/b/e/v;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    :try_start_0
    invoke-static {v1}, Le/m/d/y/n;->E1(Ljava/io/File;)V

    .line 8
    iget-object v3, v0, Le/m/h/b/b/e/v;->b:Le/m/h/b/b/e/v$b;

    const-string v5, "nl_translate_rapid_response_nmt_%s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Le/m/h/b/b/e/v$b;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {p2, p3}, Le/m/h/b/b/e/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v3}, Le/m/h/b/b/e/v;->d(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, v0, Le/m/h/b/b/e/v;->b:Le/m/h/b/b/e/v$b;

    const-string v5, "nl_translate_rapid_response_pbmt_%s"

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Le/m/h/b/b/e/v$b;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {p2, p3}, Le/m/h/b/b/e/v;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v1, v5, v3}, Le/m/h/b/b/e/v;->d(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v3, v0, Le/m/h/b/b/e/v;->b:Le/m/h/b/b/e/v$b;

    const-string v5, "nl_translate_rapid_response_stt_%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Le/m/h/b/b/e/v$b;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {p2, p3}, Le/m/h/b/b/e/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Le/m/h/b/b/e/v;->d(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi$zza;

    move-result-object v1

    .line 16
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi$zza;

    move-result-object v1

    .line 17
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi$zza;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;

    .line 19
    iget-object v0, v0, Le/m/h/b/b/e/v;->c:Le/m/h/b/b/e/n$a;

    invoke-virtual {v0, v1}, Le/m/h/b/b/e/n$a;->a(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;)Le/m/h/b/b/e/n;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzt:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v0, v1, v2}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    .line 21
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 22
    invoke-static {p2, p3}, Le/m/h/b/b/e/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/io/File;

    .line 24
    invoke-static {p2, p3}, Le/m/h/b/b/e/v;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v2, Ljava/io/File;

    .line 26
    invoke-static {p2, p3}, Le/m/h/b/b/e/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->a:Ljava/lang/String;

    .line 28
    invoke-static {v1}, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->b:Ljava/lang/String;

    .line 29
    invoke-static {v2}, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$d;->c:Ljava/lang/String;

    return-void
.end method
