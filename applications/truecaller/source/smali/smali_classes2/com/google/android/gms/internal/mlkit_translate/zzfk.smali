.class public final Lcom/google/android/gms/internal/mlkit_translate/zzfk;
.super Lcom/google/android/gms/internal/mlkit_translate/zzea;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzea<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzds;",
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

.method private final zza(Lcom/google/android/gms/internal/mlkit_translate/zzgd;Lcom/google/android/gms/internal/mlkit_translate/zzds;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_a

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_translate/zzdu;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    .line 3
    check-cast p2, Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zzh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zzd()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zzb()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zzb(Z)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;->zze()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a JSON Primitive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_translate/zzdt;

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    if-eqz v0, :cond_6

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/mlkit_translate/zzdt;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdt;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzds;

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzgd;Lcom/google/android/gms/internal/mlkit_translate/zzds;)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a JSON Array: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_7
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zzc()Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzds;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zzg()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzds;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzgd;Lcom/google/android/gms/internal/mlkit_translate/zzds;)V

    goto :goto_1

    .line 22
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zzd()Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void

    .line 23
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zze()Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzft;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 27
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd()V

    .line 29
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_translate/zzds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzdx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_translate/zzds;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze()V

    return-object v0

    .line 32
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdt;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb()V

    .line 34
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_translate/zzds;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzdt;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzds;)V

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzc()V

    return-object v0

    .line 37
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk()V

    .line 38
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzdu;

    return-object p1

    .line 39
    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 40
    :pswitch_4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzj()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 41
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi()Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdy;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_translate/zzee;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzee;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzdy;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzgd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    check-cast p2, Lcom/google/android/gms/internal/mlkit_translate/zzds;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzfk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzgd;Lcom/google/android/gms/internal/mlkit_translate/zzds;)V

    return-void
.end method
