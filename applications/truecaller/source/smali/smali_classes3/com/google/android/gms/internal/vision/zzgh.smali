.class public final Lcom/google/android/gms/internal/vision/zzgh;
.super Lcom/google/android/gms/internal/vision/zzgf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgf<",
        "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgf;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 84
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 85
    iget p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzgd;Lcom/google/android/gms/internal/vision/zzic;I)Ljava/lang/Object;
    .locals 0

    .line 208
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzgd;->zza(Lcom/google/android/gms/internal/vision/zzic;I)Lcom/google/android/gms/internal/vision/zzgs$zzg;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzis;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzgd;Lcom/google/android/gms/internal/vision/zzgi;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzis;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;TUB;",
            "Lcom/google/android/gms/internal/vision/zzjj<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;

    .line 2
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 4
    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwi:Z

    if-eqz v2, :cond_0

    .line 5
    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    if-eqz v2, :cond_0

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/vision/zzgg;->zzrr:[I

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_0

    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 10
    iget-object p2, p2, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x17

    const-string p4, "Type cannot be packed: "

    invoke-static {p3, p4, p2}, Le/d/c/a/a;->Q1(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :pswitch_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzl(Ljava/util/List;)V

    .line 14
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwg:Lcom/google/android/gms/internal/vision/zzgv;

    .line 16
    invoke-static {v1, p3, p1, p5, p6}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzgv;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object p5

    goto/16 :goto_0

    .line 17
    :pswitch_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 19
    :pswitch_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzo(Ljava/util/List;)V

    goto :goto_0

    .line 21
    :pswitch_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzn(Ljava/util/List;)V

    goto :goto_0

    .line 23
    :pswitch_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzm(Ljava/util/List;)V

    goto :goto_0

    .line 25
    :pswitch_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzk(Ljava/util/List;)V

    goto :goto_0

    .line 27
    :pswitch_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzh(Ljava/util/List;)V

    goto :goto_0

    .line 29
    :pswitch_7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzg(Ljava/util/List;)V

    goto :goto_0

    .line 31
    :pswitch_8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzf(Ljava/util/List;)V

    goto :goto_0

    .line 33
    :pswitch_9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zze(Ljava/util/List;)V

    goto :goto_0

    .line 35
    :pswitch_a
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzc(Ljava/util/List;)V

    goto :goto_0

    .line 37
    :pswitch_b
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzd(Ljava/util/List;)V

    goto :goto_0

    .line 39
    :pswitch_c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzb(Ljava/util/List;)V

    goto :goto_0

    .line 41
    :pswitch_d
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Ljava/util/List;)V

    .line 43
    :goto_0
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p1, p3}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x0

    .line 44
    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 45
    sget-object v3, Lcom/google/android/gms/internal/vision/zzka;->zzabz:Lcom/google/android/gms/internal/vision/zzka;

    if-ne v0, v3, :cond_2

    .line 46
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzdy()I

    move-result p1

    .line 47
    iget-object p3, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 48
    iget-object p3, p3, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwg:Lcom/google/android/gms/internal/vision/zzgv;

    .line 49
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/vision/zzgv;->zzg(I)Lcom/google/android/gms/internal/vision/zzgw;

    move-result-object p3

    if-nez p3, :cond_1

    .line 50
    invoke-static {v1, p1, p5, p6}, Lcom/google/android/gms/internal/vision/zzit;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 51
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_1

    .line 52
    :cond_2
    sget-object p6, Lcom/google/android/gms/internal/vision/zzgg;->zzrr:[I

    .line 53
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p6, p6, v0

    packed-switch p6, :pswitch_data_1

    goto/16 :goto_1

    .line 54
    :pswitch_e
    iget-object p6, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxa:Lcom/google/android/gms/internal/vision/zzic;

    .line 55
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 56
    invoke-interface {p1, p6, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 57
    :pswitch_f
    iget-object p6, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxa:Lcom/google/android/gms/internal/vision/zzic;

    .line 58
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 59
    invoke-interface {p1, p6, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 60
    :pswitch_10
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->readString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 61
    :pswitch_11
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v2

    goto/16 :goto_1

    .line 62
    :pswitch_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :pswitch_13
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzej()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_1

    .line 64
    :pswitch_14
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzei()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 65
    :pswitch_15
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzeh()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 66
    :pswitch_16
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzeg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 67
    :pswitch_17
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzee()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 68
    :pswitch_18
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzeb()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 69
    :pswitch_19
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzea()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 70
    :pswitch_1a
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzdz()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 71
    :pswitch_1b
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzdy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 72
    :pswitch_1c
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzdw()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 73
    :pswitch_1d
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzdx()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 74
    :pswitch_1e
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    .line 75
    :pswitch_1f
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 76
    :goto_1
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    iget-boolean p3, p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwi:Z

    if-eqz p3, :cond_3

    .line 77
    invoke-virtual {p4, p1, v2}, Lcom/google/android/gms/internal/vision/zzgi;->zzb(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    goto :goto_3

    .line 78
    :cond_3
    sget-object p3, Lcom/google/android/gms/internal/vision/zzgg;->zzrr:[I

    .line 79
    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/16 p3, 0x11

    if-eq p1, p3, :cond_4

    const/16 p3, 0x12

    if-eq p1, p3, :cond_4

    goto :goto_2

    .line 81
    :cond_4
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 82
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 83
    :cond_5
    :goto_2
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p1, v2}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    :goto_3
    return-object p5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzfh;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzgd;Lcom/google/android/gms/internal/vision/zzgi;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzfh;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;

    .line 214
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxa:Lcom/google/android/gms/internal/vision/zzic;

    .line 215
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzic;->zzgj()Lcom/google/android/gms/internal/vision/zzib;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzib;->zzgb()Lcom/google/android/gms/internal/vision/zzic;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzfh;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 217
    sget-object p1, Lcom/google/android/gms/internal/vision/zzgt;->zzxc:[B

    goto :goto_0

    .line 218
    :cond_0
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p1, v2, v3, v3, v1}, Lcom/google/android/gms/internal/vision/zzfh;->zza([BIII)V

    move-object p1, v2

    .line 220
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    new-instance v1, Lcom/google/android/gms/internal/vision/zzfg;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/vision/zzfg;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 223
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    .line 224
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzin;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p1

    invoke-interface {p1, v0, v1, p3}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;Lcom/google/android/gms/internal/vision/zzgd;)V

    .line 225
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p1, v0}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    .line 226
    invoke-interface {v1}, Lcom/google/android/gms/internal/vision/zzis;->zzdu()I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_1

    return-void

    .line 227
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgq()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1

    .line 228
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Direct buffers not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzis;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzgd;Lcom/google/android/gms/internal/vision/zzgi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzis;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;

    .line 210
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxa:Lcom/google/android/gms/internal/vision/zzic;

    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object p1

    .line 212
    iget-object p2, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p2, p1}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzkg;Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzkg;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 87
    iget-boolean v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwi:Z

    if-eqz v1, :cond_2

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/vision/zzgg;->zzrr:[I

    .line 89
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 91
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 92
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 94
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 95
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    .line 96
    invoke-static {v0, p2, p1, v1}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_0

    .line 97
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 100
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    .line 102
    invoke-static {v0, p2, p1, v1}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Lcom/google/android/gms/internal/vision/zzir;)V

    :cond_0
    return-void

    .line 103
    :pswitch_2
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 104
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 105
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void

    .line 106
    :pswitch_3
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 107
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 108
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void

    .line 109
    :pswitch_4
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 110
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 111
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 112
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 113
    :pswitch_5
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 114
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 115
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 116
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 117
    :pswitch_6
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 118
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 119
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 120
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 121
    :pswitch_7
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 122
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 123
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 124
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 125
    :pswitch_8
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 126
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 127
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 128
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 129
    :pswitch_9
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 130
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 131
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 132
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 133
    :pswitch_a
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 134
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 135
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 136
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 137
    :pswitch_b
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 138
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 139
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 140
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 141
    :pswitch_c
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 142
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 143
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 144
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 145
    :pswitch_d
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 146
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 147
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 148
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 149
    :pswitch_e
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 150
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 151
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 152
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 153
    :pswitch_f
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 154
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 155
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 156
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 157
    :pswitch_10
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 158
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 159
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 160
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 161
    :pswitch_11
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 162
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 163
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    .line 164
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/vision/zzgg;->zzrr:[I

    .line 166
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 167
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 168
    :pswitch_12
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 169
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p2

    .line 171
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_1

    .line 172
    :pswitch_13
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 173
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 174
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p2

    .line 175
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    return-void

    .line 176
    :pswitch_14
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 177
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/String;)V

    return-void

    .line 178
    :pswitch_15
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 179
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/vision/zzfh;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILcom/google/android/gms/internal/vision/zzfh;)V

    return-void

    .line 180
    :pswitch_16
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 181
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzh(II)V

    return-void

    .line 182
    :pswitch_17
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 183
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(IJ)V

    return-void

    .line 184
    :pswitch_18
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 185
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(II)V

    return-void

    .line 186
    :pswitch_19
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 187
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(IJ)V

    return-void

    .line 188
    :pswitch_1a
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 189
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzr(II)V

    return-void

    .line 190
    :pswitch_1b
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 191
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(II)V

    return-void

    .line 192
    :pswitch_1c
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 193
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IZ)V

    return-void

    .line 194
    :pswitch_1d
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 195
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzk(II)V

    return-void

    .line 196
    :pswitch_1e
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 197
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zzc(IJ)V

    return-void

    .line 198
    :pswitch_1f
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 199
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzh(II)V

    return-void

    .line 200
    :pswitch_20
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 201
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IJ)V

    return-void

    .line 202
    :pswitch_21
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 203
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(IJ)V

    return-void

    .line 204
    :pswitch_22
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 205
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IF)V

    return-void

    .line 206
    :pswitch_23
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 207
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ID)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zze;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/vision/zzic;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zze;

    return p1
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzgk()Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzgh;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzgi;->zzdp()V

    return-void
.end method
