.class public final Lcom/google/android/gms/internal/mlkit_translate/zzfi;
.super Lcom/google/android/gms/internal/mlkit_translate/zzea;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzea<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzea;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd()V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    if-eq v0, v1, :cond_7

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn()I

    move-result v1

    const-string v8, "year"

    .line 7
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v8, "month"

    .line 8
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    const-string v8, "dayOfMonth"

    .line 9
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    const-string v8, "hourOfDay"

    .line 10
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v1

    goto :goto_0

    :cond_5
    const-string v8, "minute"

    .line 11
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v1

    goto :goto_0

    :cond_6
    const-string v8, "second"

    .line 12
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze()V

    .line 14
    new-instance p1, Ljava/util/GregorianCalendar;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzgd;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zze()Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zzc()Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const-string v0, "year"

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const-string v0, "month"

    .line 20
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const/4 v0, 0x2

    .line 21
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const-string v0, "dayOfMonth"

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const/4 v0, 0x5

    .line 23
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const-string v0, "hourOfDay"

    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const/16 v0, 0xb

    .line 25
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const-string v0, "minute"

    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const/16 v0, 0xc

    .line 27
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const-string v0, "second"

    .line 28
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    const/16 v0, 0xd

    .line 29
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zzd()Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void
.end method
