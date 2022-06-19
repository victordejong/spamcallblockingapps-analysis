.class public final synthetic Le/m/h/b/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final a:Lcom/google/mlkit/nl/translate/TranslatorImpl;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/google/mlkit/nl/translate/TranslatorImpl;Ljava/lang/String;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/w;->a:Lcom/google/mlkit/nl/translate/TranslatorImpl;

    iput-object p2, p0, Le/m/h/b/b/w;->b:Ljava/lang/String;

    iput-boolean p3, p0, Le/m/h/b/b/w;->c:Z

    iput-wide p4, p0, Le/m/h/b/b/w;->d:J

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    iget-object v0, p0, Le/m/h/b/b/w;->a:Lcom/google/mlkit/nl/translate/TranslatorImpl;

    iget-object v1, p0, Le/m/h/b/b/w;->b:Ljava/lang/String;

    iget-boolean v2, p0, Le/m/h/b/b/w;->c:Z

    iget-wide v3, p0, Le/m/h/b/b/w;->d:J

    .line 1
    iget-object v0, v0, Lcom/google/mlkit/nl/translate/TranslatorImpl;->c:Le/m/h/b/b/e/n;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;->zza(Z)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbt;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzbt;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbt;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbt;

    .line 8
    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbt;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    .line 10
    invoke-virtual {v0, v2}, Le/m/h/b/b/e/n;->a(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object v2

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;->zza(I)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;->zzb(I)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;

    .line 16
    iget p1, p1, Lcom/google/mlkit/nl/translate/internal/TranslateJni$c;->a:I

    .line 17
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;->zzc(I)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/mlkit/nl/translate/internal/TranslateJni$b;

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/nl/translate/internal/TranslateJni$b;

    .line 20
    iget p1, p1, Lcom/google/mlkit/nl/translate/internal/TranslateJni$b;->a:I

    .line 21
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;->zzd(I)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    .line 22
    :cond_3
    :goto_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v0, v1, p1}, Le/m/h/b/b/e/n;->c(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    return-void
.end method
