.class public final Le/m/h/b/b/e/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I


# instance fields
.field public final a:Le/m/h/b/b/e/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/mlkit/nl/translate/R$raw;->translate_models_metadata:I

    sput v0, Le/m/h/b/b/e/o;->b:I

    return-void
.end method

.method public constructor <init>(Le/m/h/b/b/e/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdz;-><init>()V

    .line 3
    iput-object p1, p0, Le/m/h/b/b/e/o;->a:Le/m/h/b/b/e/n;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/m/h/a/d/i;
    .locals 5

    .line 1
    invoke-static {p0}, Le/m/h/b/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Le/m/h/a/d/i;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "v5"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "r24"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    .line 3
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    sget-object p2, Le/m/h/a/d/k;->d:Le/m/h/a/d/k;

    invoke-direct {v1, v0, p0, p1, p2}, Le/m/h/a/d/i;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Le/m/h/a/d/k;)V

    return-object v1
.end method


# virtual methods
.method public final b(Landroid/content/Context;Le/m/h/b/b/b;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/m/h/b/b/b;",
            ")",
            "Ljava/util/List<",
            "Le/m/h/a/d/i;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/m/h/b/b/b;->a()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xd

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Le/m/h/b/b/e/o;->b:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 3
    :try_start_1
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5
    :cond_0
    :try_start_3
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzdz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzds;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    move-result-object p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/mlkit_translate/zzeb; {:try_start_3 .. :try_end_3} :catch_3

    const-string v1, "PKG_HIGH"

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    move-result-object v1

    const-string v2, "PKG_LOW"

    .line 7
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Le/m/h/b/b/e/o;->a:Le/m/h/b/b/e/n;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p1, p2, v1}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    .line 12
    new-instance p1, Le/m/h/a/a;

    const-string p2, "Could not locate the model metadata."

    invoke-direct {p1, p2, v0}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 13
    :cond_2
    :goto_0
    :try_start_4
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzds;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzds;

    move-result-object p1

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzds;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    move-result-object p1

    const-string v1, "HASH"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "https://redirector.gvt1.com/edgedl/translate/offline/%s/high/%s/%s.zip"

    .line 16
    invoke-static {p2, p1, v1}, Le/m/h/b/b/e/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/m/h/a/d/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "https://dl.google.com/translate/offline/%s/high/%s/%s.zip"

    .line 17
    invoke-static {p2, p1, v1}, Le/m/h/b/b/e/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/m/h/a/d/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 18
    :goto_2
    iget-object p2, p0, Le/m/h/b/b/e/o;->a:Le/m/h/b/b/e/n;

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p2, v1, v2}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    .line 21
    new-instance p2, Le/m/h/a/a;

    const-string v1, "Could not locate model\'s hash."

    invoke-direct {p2, v1, v0, p1}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 22
    iget-object p2, p0, Le/m/h/b/b/e/o;->a:Le/m/h/b/b/e/n;

    .line 23
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p2, v1, v2}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    .line 25
    new-instance p2, Le/m/h/a/a;

    const-string v1, "Translate metadata could not be parsed."

    invoke-direct {p2, v1, v0, p1}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_4

    .line 26
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbb;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p2
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception p1

    goto :goto_4

    :catch_5
    move-exception p1

    .line 27
    :goto_4
    iget-object p2, p0, Le/m/h/b/b/e/o;->a:Le/m/h/b/b/e/n;

    .line 28
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {p2, v1, v2}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    .line 30
    new-instance p2, Le/m/h/a/a;

    const-string v1, "Translate metadata could not be located."

    invoke-direct {p2, v1, v0, p1}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method
