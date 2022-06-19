.class public final Lcom/google/android/gms/internal/vision/zzig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/zzir<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzys:[I

.field private static final zzyt:Lsun/misc/Unsafe;


# instance fields
.field private final zzyu:[I

.field private final zzyv:[Ljava/lang/Object;

.field private final zzyw:I

.field private final zzyx:I

.field private final zzyy:Lcom/google/android/gms/internal/vision/zzic;

.field private final zzyz:Z

.field private final zzza:Z

.field private final zzzb:Z

.field private final zzzc:Z

.field private final zzzd:[I

.field private final zzze:I

.field private final zzzf:I

.field private final zzzg:Lcom/google/android/gms/internal/vision/zzik;

.field private final zzzh:Lcom/google/android/gms/internal/vision/zzhm;

.field private final zzzi:Lcom/google/android/gms/internal/vision/zzjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzjj<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzzj:Lcom/google/android/gms/internal/vision/zzgf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgf<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzzk:Lcom/google/android/gms/internal/vision/zzhv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/vision/zzig;->zzys:[I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjp;->zzil()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/zzic;ZZ[IIILcom/google/android/gms/internal/vision/zzik;Lcom/google/android/gms/internal/vision/zzhm;Lcom/google/android/gms/internal/vision/zzjj;Lcom/google/android/gms/internal/vision/zzgf;Lcom/google/android/gms/internal/vision/zzhv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/vision/zzic;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/vision/zzik;",
            "Lcom/google/android/gms/internal/vision/zzhm;",
            "Lcom/google/android/gms/internal/vision/zzjj<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/zzgf<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzhv;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyv:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyw:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyx:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/vision/zzgs;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzza:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzb:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/vision/zzgf;->zze(Lcom/google/android/gms/internal/vision/zzic;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzze:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzf:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzg:Lcom/google/android/gms/internal/vision/zzik;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyy:Lcom/google/android/gms/internal/vision/zzic;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzjj<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzjj;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzjj;->zzr(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 973
    sget-object v12, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    .line 974
    iget-object v7, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 975
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 976
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 977
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 978
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 979
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 980
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    .line 981
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 982
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    if-nez v5, :cond_a

    .line 983
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 984
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    if-nez v5, :cond_a

    .line 985
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 986
    iget v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    if-nez v5, :cond_a

    .line 987
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v3

    .line 988
    iget v4, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    .line 989
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzbo(I)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 990
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/vision/zzgy;->zzf(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 991
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzig;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    .line 992
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_9

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 993
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzez;->zze([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 994
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 995
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v2

    move/from16 v5, p4

    .line 996
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 997
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 998
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    .line 999
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 1000
    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    .line 1001
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1002
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1003
    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 1004
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1005
    iget v4, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 1006
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 1007
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/vision/zzjs;->zzf([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 1008
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgt()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    .line 1009
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/vision/zzgt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1010
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 1011
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_7
    if-nez v5, :cond_a

    .line 1012
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1013
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 1014
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 1015
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_a
    if-nez v5, :cond_a

    .line 1016
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1017
    iget v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_b
    if-nez v5, :cond_a

    .line 1018
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1019
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 1020
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    add-int/lit8 v2, v4, 0x4

    goto :goto_9

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 1021
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v2, v4, 0x8

    .line 1022
    :goto_9
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v4

    :goto_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzfb;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 816
    sget-object v11, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/vision/zzgz;

    .line 817
    invoke-interface {v12}, Lcom/google/android/gms/internal/vision/zzgz;->zzdo()Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_1

    .line 818
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v13, v14

    .line 819
    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/vision/zzgz;->zzag(I)Lcom/google/android/gms/internal/vision/zzgz;

    move-result-object v12

    .line 820
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_21

    .line 821
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 822
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 823
    iget-object v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_21

    .line 824
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v8

    .line 825
    iget v9, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v9, :cond_21

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 826
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 827
    iget-object v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-ne v6, v13, :cond_2

    .line 828
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzi([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto/16 :goto_14

    :cond_2
    if-nez v6, :cond_21

    .line 829
    check-cast v12, Lcom/google/android/gms/internal/vision/zzhq;

    .line 830
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 831
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    :goto_2
    if-ge v1, v5, :cond_22

    .line 832
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 833
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v6, :cond_22

    .line 834
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 835
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    goto :goto_2

    :pswitch_2
    if-ne v6, v13, :cond_3

    .line 836
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzh([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto/16 :goto_14

    :cond_3
    if-nez v6, :cond_21

    .line 837
    check-cast v12, Lcom/google/android/gms/internal/vision/zzgu;

    .line 838
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 839
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    :goto_3
    if-ge v1, v5, :cond_22

    .line 840
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 841
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v6, :cond_22

    .line 842
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 843
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_3

    :pswitch_3
    if-ne v6, v13, :cond_4

    .line 844
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    goto :goto_4

    :cond_4
    if-nez v6, :cond_21

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    .line 845
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BIILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 846
    :goto_4
    check-cast v1, Lcom/google/android/gms/internal/vision/zzgs;

    iget-object v3, v1, Lcom/google/android/gms/internal/vision/zzgs;->zzwd:Lcom/google/android/gms/internal/vision/zzjm;

    .line 847
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzig()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    .line 848
    :cond_5
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzig;->zzbo(I)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    move/from16 v6, p6

    .line 849
    invoke-static {v6, v12, v4, v3, v5}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzgy;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzjm;

    if-eqz v3, :cond_6

    .line 850
    iput-object v3, v1, Lcom/google/android/gms/internal/vision/zzgs;->zzwd:Lcom/google/android/gms/internal/vision/zzjm;

    :cond_6
    move v1, v2

    goto/16 :goto_14

    :pswitch_4
    if-ne v6, v13, :cond_21

    .line 851
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 852
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz v4, :cond_c

    .line 853
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_b

    if-nez v4, :cond_7

    .line 854
    sget-object v4, Lcom/google/android/gms/internal/vision/zzfh;->zzrx:Lcom/google/android/gms/internal/vision/zzfh;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 855
    :cond_7
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/zzfh;->zza([BII)Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/2addr v1, v4

    :goto_6
    if-ge v1, v5, :cond_22

    .line 856
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 857
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v6, :cond_22

    .line 858
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 859
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz v4, :cond_a

    .line 860
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_9

    if-nez v4, :cond_8

    .line 861
    sget-object v4, Lcom/google/android/gms/internal/vision/zzfh;->zzrx:Lcom/google/android/gms/internal/vision/zzfh;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 862
    :cond_8
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/zzfh;->zza([BII)Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 863
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    .line 864
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgn()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    .line 865
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    .line 866
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgn()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v13, :cond_21

    .line 867
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    .line 868
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;I[BIILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_6
    if-ne v6, v13, :cond_21

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    cmp-long v1, v8, v10

    const-string v6, ""

    if-nez v1, :cond_11

    .line 869
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 870
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz v4, :cond_10

    if-nez v4, :cond_d

    .line 871
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 872
    :cond_d
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzgt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 873
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v1, v4

    :goto_8
    if-ge v1, v5, :cond_22

    .line 874
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 875
    iget v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v8, :cond_22

    .line 876
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 877
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz v4, :cond_f

    if-nez v4, :cond_e

    .line 878
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 879
    :cond_e
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzgt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 880
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 881
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgn()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    .line 882
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgn()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    .line 883
    :cond_11
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 884
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz v4, :cond_17

    if-nez v4, :cond_12

    .line 885
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    add-int v8, v1, v4

    .line 886
    invoke-static {v3, v1, v8}, Lcom/google/android/gms/internal/vision/zzjs;->zzf([BII)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 887
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/vision/zzgt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 888
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move v1, v8

    :goto_a
    if-ge v1, v5, :cond_22

    .line 889
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 890
    iget v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v8, :cond_22

    .line 891
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 892
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz v4, :cond_15

    if-nez v4, :cond_13

    .line 893
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    add-int v8, v1, v4

    .line 894
    invoke-static {v3, v1, v8}, Lcom/google/android/gms/internal/vision/zzjs;->zzf([BII)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 895
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/vision/zzgt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 896
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 897
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgt()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    .line 898
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgn()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    .line 899
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgt()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    .line 900
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgn()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v1

    throw v1

    :pswitch_7
    if-ne v6, v13, :cond_18

    .line 901
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzg([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto/16 :goto_14

    :cond_18
    if-nez v6, :cond_21

    .line 902
    check-cast v12, Lcom/google/android/gms/internal/vision/zzff;

    .line 903
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 904
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    cmp-long v4, v8, v10

    const/4 v6, 0x0

    if-eqz v4, :cond_19

    move v4, v14

    goto :goto_b

    :cond_19
    move v4, v6

    :goto_b
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/zzff;->addBoolean(Z)V

    :goto_c
    if-ge v1, v5, :cond_22

    .line 905
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 906
    iget v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v8, :cond_22

    .line 907
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 908
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    cmp-long v4, v8, v10

    if-eqz v4, :cond_1a

    move v4, v14

    goto :goto_d

    :cond_1a
    move v4, v6

    :goto_d
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/zzff;->addBoolean(Z)V

    goto :goto_c

    :pswitch_8
    if-ne v6, v13, :cond_1b

    .line 909
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto/16 :goto_14

    :cond_1b
    if-ne v6, v9, :cond_21

    .line 910
    check-cast v12, Lcom/google/android/gms/internal/vision/zzgu;

    .line 911
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    :goto_e
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_22

    .line 912
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 913
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v6, :cond_22

    .line 914
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzez;->zza([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_e

    :pswitch_9
    if-ne v6, v13, :cond_1c

    .line 915
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto/16 :goto_14

    :cond_1c
    if-ne v6, v14, :cond_21

    .line 916
    check-cast v12, Lcom/google/android/gms/internal/vision/zzhq;

    .line 917
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    :goto_f
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_22

    .line 918
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 919
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v6, :cond_22

    .line 920
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    goto :goto_f

    :pswitch_a
    if-ne v6, v13, :cond_1d

    .line 921
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto/16 :goto_14

    :cond_1d
    if-nez v6, :cond_21

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    .line 922
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BIILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_b
    if-ne v6, v13, :cond_1e

    .line 923
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto/16 :goto_14

    :cond_1e
    if-nez v6, :cond_21

    .line 924
    check-cast v12, Lcom/google/android/gms/internal/vision/zzhq;

    .line 925
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 926
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    :goto_10
    if-ge v1, v5, :cond_22

    .line 927
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 928
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v6, :cond_22

    .line 929
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 930
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    goto :goto_10

    :pswitch_c
    if-ne v6, v13, :cond_1f

    .line 931
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/zzez;->zze([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto :goto_14

    :cond_1f
    if-ne v6, v9, :cond_21

    .line 932
    check-cast v12, Lcom/google/android/gms/internal/vision/zzgo;

    .line 933
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/vision/zzgo;->zzu(F)V

    :goto_11
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_22

    .line 934
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 935
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v6, :cond_22

    .line 936
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/vision/zzgo;->zzu(F)V

    goto :goto_11

    :pswitch_d
    if-ne v6, v13, :cond_20

    .line 937
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzf([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto :goto_14

    :cond_20
    if-ne v6, v14, :cond_21

    .line 938
    check-cast v12, Lcom/google/android/gms/internal/vision/zzgb;

    .line 939
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/zzgb;->zzc(D)V

    :goto_12
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_22

    .line 940
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v4

    .line 941
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne v2, v6, :cond_22

    .line 942
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/zzgb;->zzc(D)V

    goto :goto_12

    :cond_21
    :goto_13
    move v1, v4

    :cond_22
    :goto_14
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzfb;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    sget-object v0, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    .line 944
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/vision/zzig;->zzbn(I)Ljava/lang/Object;

    move-result-object p5

    .line 945
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 946
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzm(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 947
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/vision/zzhv;->zzo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 948
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 950
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    .line 951
    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/vision/zzhv;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    .line 952
    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzk(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 953
    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p3

    .line 954
    iget p6, p8, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz p6, :cond_7

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_7

    add-int/2addr p6, p3

    .line 955
    iget-object p7, p1, Lcom/google/android/gms/internal/vision/zzht;->zzyn:Ljava/lang/Object;

    .line 956
    iget-object v0, p1, Lcom/google/android/gms/internal/vision/zzht;->zzgc:Ljava/lang/Object;

    :goto_0
    if-ge p3, p6, :cond_5

    add-int/lit8 v1, p3, 0x1

    .line 957
    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    .line 958
    invoke-static {p3, p2, v1, p8}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 959
    iget p3, p8, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    :cond_1
    move v2, v1

    ushr-int/lit8 v1, p3, 0x3

    and-int/lit8 v3, p3, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_1

    .line 960
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzht;->zzyo:Lcom/google/android/gms/internal/vision/zzka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzka;->zziq()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 961
    iget-object v4, p1, Lcom/google/android/gms/internal/vision/zzht;->zzyo:Lcom/google/android/gms/internal/vision/zzka;

    iget-object p3, p1, Lcom/google/android/gms/internal/vision/zzht;->zzgc:Ljava/lang/Object;

    .line 962
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 963
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/vision/zzig;->zza([BIILcom/google/android/gms/internal/vision/zzka;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result p3

    .line 964
    iget-object v0, p8, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    goto :goto_0

    .line 965
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzht;->zzym:Lcom/google/android/gms/internal/vision/zzka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzka;->zziq()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 966
    iget-object v4, p1, Lcom/google/android/gms/internal/vision/zzht;->zzym:Lcom/google/android/gms/internal/vision/zzka;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 967
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/vision/zzig;->zza([BIILcom/google/android/gms/internal/vision/zzka;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result p3

    .line 968
    iget-object p7, p8, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    goto :goto_0

    .line 969
    :cond_4
    :goto_1
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p3

    goto :goto_0

    :cond_5
    if-ne p3, p6, :cond_6

    .line 970
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    .line 971
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1

    .line 972
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1
.end method

.method private static zza([BIILcom/google/android/gms/internal/vision/zzka;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/vision/zzka;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    sget-object v0, Lcom/google/android/gms/internal/vision/zzif;->zzrr:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 797
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 798
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    goto/16 :goto_3

    .line 799
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    .line 800
    iget-wide p1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    goto/16 :goto_3

    .line 801
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    .line 802
    iget p1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    goto/16 :goto_3

    .line 803
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p3

    .line 804
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    goto :goto_3

    .line 805
    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    .line 806
    iget-wide p1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    goto :goto_3

    .line 807
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    .line 808
    iget p1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    goto :goto_3

    .line 809
    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    goto :goto_0

    .line 810
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    goto :goto_1

    .line 811
    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzez;->zza([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    :goto_0
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    .line 812
    :pswitch_9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x8

    goto :goto_3

    .line 813
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzez;->zze([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    goto :goto_3

    .line 814
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    .line 815
    iget-wide p1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzia;Lcom/google/android/gms/internal/vision/zzik;Lcom/google/android/gms/internal/vision/zzhm;Lcom/google/android/gms/internal/vision/zzjj;Lcom/google/android/gms/internal/vision/zzgf;Lcom/google/android/gms/internal/vision/zzhv;)Lcom/google/android/gms/internal/vision/zzig;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzia;",
            "Lcom/google/android/gms/internal/vision/zzik;",
            "Lcom/google/android/gms/internal/vision/zzhm;",
            "Lcom/google/android/gms/internal/vision/zzjj<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/zzgf<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzhv;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzig<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/vision/zzip;

    if-eqz v1, :cond_35

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/vision/zzip;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzip;->zzhi()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwu:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v3

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzip;->zzhp()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    const/4 v8, 0x1

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v8, 0x1

    .line 7
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_1

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_1

    :cond_1
    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v8, v10, 0x1

    .line 8
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v12, v8, 0x1

    .line 9
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_3

    :cond_3
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    move v8, v12

    :cond_4
    if-nez v9, :cond_5

    .line 10
    sget-object v9, Lcom/google/android/gms/internal/vision/zzig;->zzys:[I

    move v6, v3

    move v10, v6

    move v12, v10

    move v13, v12

    move v15, v13

    move-object v14, v9

    move v9, v15

    goto/16 :goto_d

    :cond_5
    add-int/lit8 v9, v8, 0x1

    .line 11
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_6

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_6
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v9, v12

    :cond_7
    add-int/lit8 v10, v9, 0x1

    .line 13
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_8

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_8
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_9
    add-int/lit8 v12, v10, 0x1

    .line 15
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_a

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_a
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_b
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_c

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_c
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_d
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_e

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_e
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_f
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_10
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_11
    add-int/lit8 v16, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_12

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_12
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v3, v17

    goto :goto_b

    :cond_13
    move/from16 v3, v16

    :goto_b
    add-int/lit8 v16, v3, 0x1

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v6, v16

    const/16 v16, 0xd

    :goto_c
    add-int/lit8 v17, v6, 0x1

    .line 26
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_14

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v16

    or-int/2addr v3, v6

    add-int/lit8 v16, v16, 0xd

    move/from16 v6, v17

    goto :goto_c

    :cond_14
    shl-int v6, v6, v16

    or-int/2addr v3, v6

    move/from16 v16, v17

    :cond_15
    add-int v6, v3, v14

    add-int/2addr v6, v15

    .line 27
    new-array v6, v6, [I

    shl-int/lit8 v15, v8, 0x1

    add-int/2addr v15, v9

    move v9, v12

    move v12, v15

    move v15, v3

    move v3, v8

    move/from16 v8, v16

    move/from16 v35, v14

    move-object v14, v6

    move/from16 v6, v35

    .line 28
    :goto_d
    sget-object v7, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzip;->zzhq()[Ljava/lang/Object;

    move-result-object v17

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzip;->zzhk()Lcom/google/android/gms/internal/vision/zzic;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move/from16 v18, v8

    mul-int/lit8 v8, v13, 0x3

    .line 31
    new-array v8, v8, [I

    const/16 v19, 0x1

    shl-int/lit8 v13, v13, 0x1

    .line 32
    new-array v13, v13, [Ljava/lang/Object;

    add-int v20, v15, v6

    move/from16 v22, v15

    move/from16 v6, v18

    move/from16 v23, v20

    const/16 v18, 0x0

    const/16 v21, 0x0

    :goto_e
    if-ge v6, v2, :cond_34

    add-int/lit8 v24, v6, 0x1

    .line 33
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v2, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v26, v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v6, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v2, v26

    move/from16 v15, v27

    goto :goto_f

    :cond_16
    shl-int v2, v2, v24

    or-int/2addr v6, v2

    move/from16 v2, v26

    goto :goto_10

    :cond_17
    move/from16 v27, v15

    move/from16 v2, v24

    :goto_10
    add-int/lit8 v15, v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_11
    add-int/lit8 v26, v15, 0x1

    .line 36
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v11

    const v11, 0xd800

    if-lt v15, v11, :cond_18

    and-int/lit16 v11, v15, 0x1fff

    shl-int v11, v11, v24

    or-int/2addr v2, v11

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v11, v28

    goto :goto_11

    :cond_18
    shl-int v11, v15, v24

    or-int/2addr v2, v11

    move/from16 v15, v26

    goto :goto_12

    :cond_19
    move/from16 v28, v11

    move/from16 v15, v24

    :goto_12
    and-int/lit16 v11, v2, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v18, 0x1

    .line 37
    aput v21, v14, v18

    move/from16 v18, v9

    :cond_1a
    const/16 v9, 0x33

    move/from16 v30, v10

    if-lt v11, v9, :cond_22

    add-int/lit8 v9, v15, 0x1

    .line 38
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v10, 0xd800

    if-lt v15, v10, :cond_1c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    :goto_13
    add-int/lit8 v33, v9, 0x1

    .line 39
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_1b

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v32

    or-int/2addr v15, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v9, v33

    const v10, 0xd800

    goto :goto_13

    :cond_1b
    shl-int v9, v9, v32

    or-int/2addr v15, v9

    move/from16 v9, v33

    :cond_1c
    add-int/lit8 v10, v11, -0x33

    move/from16 v32, v9

    const/16 v9, 0x9

    if-eq v10, v9, :cond_1f

    const/16 v9, 0x11

    if-ne v10, v9, :cond_1d

    goto :goto_14

    :cond_1d
    const/16 v9, 0xc

    if-ne v10, v9, :cond_1e

    and-int/lit8 v9, v5, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1e

    .line 40
    div-int/lit8 v9, v21, 0x3

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v12, 0x1

    aget-object v12, v17, v12

    aput-object v12, v13, v9

    move v12, v10

    :cond_1e
    const/4 v10, 0x1

    goto :goto_15

    .line 41
    :cond_1f
    :goto_14
    div-int/lit8 v9, v21, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v19, v12, 0x1

    aget-object v12, v17, v12

    aput-object v12, v13, v9

    move/from16 v12, v19

    :goto_15
    shl-int/lit8 v9, v15, 0x1

    .line 42
    aget-object v10, v17, v9

    .line 43
    instance-of v15, v10, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_20

    .line 44
    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 45
    :cond_20
    check-cast v10, Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 46
    aput-object v10, v17, v9

    :goto_16
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    .line 47
    invoke-virtual {v7, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v9, v9, 0x1

    .line 48
    aget-object v1, v17, v9

    .line 49
    instance-of v10, v1, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    .line 50
    check-cast v1, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 51
    :cond_21
    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 52
    aput-object v1, v17, v9

    .line 53
    :goto_17
    invoke-virtual {v7, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v1, v9

    move-object/from16 v29, v4

    move/from16 v31, v12

    move/from16 v15, v32

    move-object/from16 v10, v34

    const/4 v12, 0x0

    const/16 v16, 0x1

    move v4, v1

    move v1, v0

    move v0, v3

    const v3, 0xd800

    goto/16 :goto_21

    :cond_22
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    add-int/lit8 v0, v12, 0x1

    .line 54
    aget-object v1, v17, v12

    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/16 v9, 0x31

    const/16 v10, 0x9

    if-eq v11, v10, :cond_2a

    const/16 v10, 0x11

    if-ne v11, v10, :cond_23

    goto :goto_1b

    :cond_23
    const/16 v10, 0x1b

    if-eq v11, v10, :cond_29

    if-ne v11, v9, :cond_24

    goto :goto_19

    :cond_24
    const/16 v10, 0xc

    if-eq v11, v10, :cond_28

    const/16 v10, 0x1e

    if-eq v11, v10, :cond_28

    const/16 v10, 0x2c

    if-ne v11, v10, :cond_25

    goto :goto_18

    :cond_25
    const/16 v10, 0x32

    if-ne v11, v10, :cond_26

    add-int/lit8 v10, v22, 0x1

    .line 55
    aput v21, v14, v22

    .line 56
    div-int/lit8 v12, v21, 0x3

    const/16 v19, 0x1

    shl-int/lit8 v12, v12, 0x1

    add-int/lit8 v22, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v12

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_27

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v0, v22, 0x1

    .line 57
    aget-object v22, v17, v22

    aput-object v22, v13, v12

    move/from16 v22, v10

    :cond_26
    const/4 v12, 0x1

    goto :goto_1c

    :cond_27
    move/from16 v0, v22

    const/4 v12, 0x1

    move/from16 v22, v10

    goto :goto_1c

    :cond_28
    :goto_18
    and-int/lit8 v10, v5, 0x1

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2b

    .line 58
    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    add-int/lit8 v19, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v10

    goto :goto_1a

    :cond_29
    :goto_19
    const/4 v12, 0x1

    .line 59
    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    add-int/lit8 v19, v0, 0x1

    aget-object v0, v17, v0

    aput-object v0, v13, v10

    :goto_1a
    move/from16 v0, v19

    goto :goto_1c

    :cond_2a
    :goto_1b
    const/4 v12, 0x1

    .line 60
    div-int/lit8 v10, v21, 0x3

    shl-int/2addr v10, v12

    add-int/2addr v10, v12

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    aput-object v19, v13, v10

    .line 61
    :cond_2b
    :goto_1c
    invoke-virtual {v7, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v1, v9

    and-int/lit8 v9, v5, 0x1

    if-ne v9, v12, :cond_30

    const/16 v9, 0x11

    if-gt v11, v9, :cond_2f

    add-int/lit8 v9, v15, 0x1

    move-object/from16 v10, v34

    .line 62
    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v15, 0xd800

    if-lt v12, v15, :cond_2d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v16, 0xd

    :goto_1d
    add-int/lit8 v29, v9, 0x1

    .line 63
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v15, :cond_2c

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v16

    or-int/2addr v12, v9

    add-int/lit8 v16, v16, 0xd

    move/from16 v9, v29

    goto :goto_1d

    :cond_2c
    shl-int v9, v9, v16

    or-int/2addr v12, v9

    move/from16 v9, v29

    :cond_2d
    const/16 v16, 0x1

    shl-int/lit8 v19, v3, 0x1

    .line 64
    div-int/lit8 v29, v12, 0x20

    add-int v29, v29, v19

    .line 65
    aget-object v15, v17, v29

    move/from16 v31, v0

    .line 66
    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2e

    .line 67
    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_1e

    .line 68
    :cond_2e
    check-cast v15, Ljava/lang/String;

    invoke-static {v4, v15}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 69
    aput-object v15, v17, v29

    :goto_1e
    move v0, v3

    move-object/from16 v29, v4

    .line 70
    invoke-virtual {v7, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 71
    rem-int/lit8 v12, v12, 0x20

    move v4, v3

    move v15, v9

    const v3, 0xd800

    goto :goto_20

    :cond_2f
    move/from16 v31, v0

    move v0, v3

    move-object/from16 v29, v4

    move-object/from16 v10, v34

    const v3, 0xd800

    const/16 v16, 0x1

    goto :goto_1f

    :cond_30
    move/from16 v31, v0

    move v0, v3

    move-object/from16 v29, v4

    move/from16 v16, v12

    move-object/from16 v10, v34

    const v3, 0xd800

    :goto_1f
    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_20
    const/16 v9, 0x12

    if-lt v11, v9, :cond_31

    const/16 v9, 0x31

    if-gt v11, v9, :cond_31

    add-int/lit8 v9, v23, 0x1

    .line 72
    aput v1, v14, v23

    move/from16 v23, v9

    :cond_31
    :goto_21
    add-int/lit8 v9, v21, 0x1

    .line 73
    aput v6, v8, v21

    add-int/lit8 v6, v9, 0x1

    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_32

    const/high16 v3, 0x20000000

    goto :goto_22

    :cond_32
    const/4 v3, 0x0

    :goto_22
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_33

    const/high16 v2, 0x10000000

    goto :goto_23

    :cond_33
    const/4 v2, 0x0

    :goto_23
    or-int/2addr v2, v3

    shl-int/lit8 v3, v11, 0x14

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 74
    aput v1, v8, v9

    add-int/lit8 v21, v6, 0x1

    shl-int/lit8 v1, v12, 0x14

    or-int/2addr v1, v4

    .line 75
    aput v1, v8, v6

    move v3, v0

    move-object v1, v10

    move v6, v15

    move/from16 v9, v24

    move/from16 v2, v25

    move/from16 v15, v27

    move/from16 v11, v28

    move-object/from16 v4, v29

    move/from16 v10, v30

    move/from16 v12, v31

    move-object/from16 v0, v33

    goto/16 :goto_e

    :cond_34
    move-object/from16 v33, v0

    move/from16 v24, v9

    move/from16 v30, v10

    move/from16 v28, v11

    move/from16 v27, v15

    .line 76
    new-instance v0, Lcom/google/android/gms/internal/vision/zzig;

    .line 77
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/internal/vision/zzip;->zzhk()Lcom/google/android/gms/internal/vision/zzic;

    move-result-object v10

    const/4 v12, 0x0

    move-object v5, v0

    move-object v6, v8

    move-object v7, v13

    move/from16 v8, v30

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v20

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/vision/zzig;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/zzic;ZZ[IIILcom/google/android/gms/internal/vision/zzik;Lcom/google/android/gms/internal/vision/zzhm;Lcom/google/android/gms/internal/vision/zzjj;Lcom/google/android/gms/internal/vision/zzgf;Lcom/google/android/gms/internal/vision/zzhv;)V

    return-object v0

    .line 78
    :cond_35
    check-cast v0, Lcom/google/android/gms/internal/vision/zzjg;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzjg;->zzhi()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwu:I

    .line 80
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/vision/zzgy;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/vision/zzgy;",
            "TUB;",
            "Lcom/google/android/gms/internal/vision/zzjj<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    .line 1251
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzig;->zzbn(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzhv;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p1

    .line 1252
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1253
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/vision/zzgy;->zzf(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    .line 1255
    invoke-virtual {p6}, Lcom/google/android/gms/internal/vision/zzjj;->zzif()Ljava/lang/Object;

    move-result-object p5

    .line 1256
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhu;->zza(Lcom/google/android/gms/internal/vision/zzht;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1257
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzfh;->zzap(I)Lcom/google/android/gms/internal/vision/zzfp;

    move-result-object v1

    .line 1258
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzfp;->zzew()Lcom/google/android/gms/internal/vision/zzga;

    move-result-object v2

    .line 1259
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/vision/zzhu;->zza(Lcom/google/android/gms/internal/vision/zzga;Lcom/google/android/gms/internal/vision/zzht;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzfp;->zzev()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/vision/zzjj;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzfh;)V

    .line 1261
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1262
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private final zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/vision/zzjj<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v3, v0, p2

    .line 1245
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 1246
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 1247
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzbo(I)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzhv;->zzk(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 1249
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/vision/zzgy;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 81
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 82
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 83
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 84
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {p1, v2}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Field "

    const-string v4, " for "

    invoke-static {v2, v3, p1, v4, p0}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not found. Known fields are "

    invoke-static {p0, p1, v0}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1265
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1266
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/String;)V

    return-void

    .line 1267
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/vision/zzfh;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILcom/google/android/gms/internal/vision/zzfh;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzjj<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/vision/zzkg;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzjj;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzjj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzkg;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzkg;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 516
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    .line 517
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/vision/zzig;->zzbn(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/vision/zzhv;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    .line 518
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zzl(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 519
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILcom/google/android/gms/internal/vision/zzht;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzis;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1268
    invoke-static {p2}, Lcom/google/android/gms/internal/vision/zzig;->zzbr(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 1269
    invoke-interface {p3}, Lcom/google/android/gms/internal/vision/zzis;->zzec()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 1270
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzza:Z

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 1271
    invoke-interface {p3}, Lcom/google/android/gms/internal/vision/zzis;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 1272
    invoke-interface {p3}, Lcom/google/android/gms/internal/vision/zzis;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 89
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 91
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 92
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 93
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 94
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 95
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 96
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1275
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzb:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 1276
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1277
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1278
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 1279
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v2

    .line 1280
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 1281
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v2

    .line 1282
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 1283
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 1284
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 1285
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/vision/zzfh;->zzrx:Lcom/google/android/gms/internal/vision/zzfh;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/zzfh;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 1286
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 1287
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1288
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 1289
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 1290
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/vision/zzfh;

    if-eqz p2, :cond_c

    .line 1291
    sget-object p2, Lcom/google/android/gms/internal/vision/zzfh;->zzrx:Lcom/google/android/gms/internal/vision/zzfh;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/zzfh;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 1292
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1293
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzm(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 1294
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    .line 1295
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_e

    return v3

    :cond_e
    return v2

    .line 1296
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    .line 1297
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_10

    return v3

    :cond_10
    return v2

    .line 1298
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_11

    return v3

    :cond_11
    return v2

    .line 1299
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzn(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    .line 1300
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzo(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_13

    return v3

    :cond_13
    return v2

    .line 1301
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzbq(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 1302
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method private final zza(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1303
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzig;->zzbq(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 1304
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 1273
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzb:Z

    if-eqz v0, :cond_0

    .line 1274
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzir;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1263
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 1264
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/vision/zzir;->zzt(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzb:Z

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzbq(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 191
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 192
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzig;->zzbq(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 194
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/zzkg;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 11
    iget-boolean v3, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-eqz v3, :cond_0

    .line 12
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/zzgf;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object v3

    .line 13
    iget-object v5, v3, Lcom/google/android/gms/internal/vision/zzgi;->zztb:Lcom/google/android/gms/internal/vision/zziw;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zzgi;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    .line 16
    iget-object v7, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    array-length v7, v7

    .line 17
    sget-object v8, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v7, :cond_7

    .line 18
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v12

    .line 19
    iget-object v13, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v14, v13, v10

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    .line 20
    iget-boolean v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzb:Z

    const v16, 0xfffff

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    add-int/lit8 v4, v10, 0x2

    .line 21
    aget v4, v13, v4

    and-int v13, v4, v16

    move/from16 v17, v10

    if-eq v13, v6, :cond_1

    int-to-long v9, v13

    .line 22
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v13

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    :cond_2
    move/from16 v17, v10

    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 23
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    .line 24
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Lcom/google/android/gms/internal/vision/zzkg;Ljava/util/Map$Entry;)V

    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    and-int v9, v12, v16

    int-to-long v9, v9

    move/from16 v12, v17

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 26
    :pswitch_0
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 27
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v9

    .line 28
    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto :goto_3

    .line 29
    :pswitch_1
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 30
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(IJ)V

    goto :goto_3

    .line 31
    :pswitch_2
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 32
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(II)V

    goto :goto_3

    .line 33
    :pswitch_3
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 34
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(IJ)V

    goto :goto_3

    .line 35
    :pswitch_4
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzr(II)V

    goto :goto_3

    .line 37
    :pswitch_5
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 38
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzs(II)V

    goto :goto_3

    .line 39
    :pswitch_6
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(II)V

    goto :goto_3

    .line 41
    :pswitch_7
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 42
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzfh;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILcom/google/android/gms/internal/vision/zzfh;)V

    goto :goto_3

    .line 43
    :pswitch_8
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 44
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 45
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_3

    .line 46
    :pswitch_9
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 47
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/vision/zzig;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_3

    .line 48
    :pswitch_a
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 49
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzj(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IZ)V

    goto/16 :goto_3

    .line 50
    :pswitch_b
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 51
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzk(II)V

    goto/16 :goto_3

    .line 52
    :pswitch_c
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 53
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zzc(IJ)V

    goto/16 :goto_3

    .line 54
    :pswitch_d
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 55
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzh(II)V

    goto/16 :goto_3

    .line 56
    :pswitch_e
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 57
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IJ)V

    goto/16 :goto_3

    .line 58
    :pswitch_f
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 59
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(IJ)V

    goto/16 :goto_3

    .line 60
    :pswitch_10
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 61
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzg(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IF)V

    goto/16 :goto_3

    .line 62
    :pswitch_11
    invoke-direct {v0, v1, v14, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 63
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzf(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ID)V

    goto/16 :goto_3

    .line 64
    :pswitch_12
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v12}, Lcom/google/android/gms/internal/vision/zzig;->zza(Lcom/google/android/gms/internal/vision/zzkg;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 65
    :pswitch_13
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 66
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 67
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v10

    .line 68
    invoke-static {v4, v9, v2, v10}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_3

    .line 69
    :pswitch_14
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 70
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x1

    .line 71
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v13, 0x1

    .line 72
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 73
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 74
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v13, 0x1

    .line 75
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 76
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 77
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v13, 0x1

    .line 78
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 79
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 80
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v13, 0x1

    .line 81
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 82
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 83
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v13, 0x1

    .line 84
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 85
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 86
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v13, 0x1

    .line 87
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 88
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 89
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v13, 0x1

    .line 90
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 91
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 92
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v13, 0x1

    .line 93
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 94
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 95
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v13, 0x1

    .line 96
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 97
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 98
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v13, 0x1

    .line 99
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 100
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 101
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v13, 0x1

    .line 102
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 103
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 104
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v13, 0x1

    .line 105
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 106
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 107
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v13, 0x1

    .line 108
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 109
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 110
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 111
    :pswitch_22
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 112
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    .line 113
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v13, 0x0

    .line 114
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 115
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 116
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v13, 0x0

    .line 117
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 118
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 119
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v13, 0x0

    .line 120
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 121
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 122
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v13, 0x0

    .line 123
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 124
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 125
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v13, 0x0

    .line 126
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 127
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 128
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    .line 129
    :pswitch_28
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 130
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 131
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_3

    .line 132
    :pswitch_29
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 133
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 134
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v10

    .line 135
    invoke-static {v4, v9, v2, v10}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_3

    .line 136
    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 137
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 138
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_3

    .line 139
    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 140
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    .line 141
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    .line 142
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 143
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 144
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    .line 145
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 146
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 147
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    .line 148
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 149
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 150
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    .line 151
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 152
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 153
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    .line 154
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 155
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 156
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    .line 157
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 158
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 159
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    .line 160
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v12

    .line 161
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 162
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 163
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v9

    .line 164
    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 165
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 166
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 167
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 168
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzr(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 169
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzs(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 170
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 171
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzfh;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILcom/google/android/gms/internal/vision/zzfh;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 172
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 173
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 174
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/vision/zzig;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 175
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzjp;->zzm(Ljava/lang/Object;J)Z

    move-result v4

    .line 176
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 177
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzk(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 178
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zzc(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 179
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zzh(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 180
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 181
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 182
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzjp;->zzn(Ljava/lang/Object;J)F

    move-result v4

    .line 183
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 184
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzjp;->zzo(Ljava/lang/Object;J)D

    move-result-wide v9

    .line 185
    invoke-interface {v2, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v12, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 186
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Lcom/google/android/gms/internal/vision/zzkg;Ljava/util/Map$Entry;)V

    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 188
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 3
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private final zzbm(I)Lcom/google/android/gms/internal/vision/zzir;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyv:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzir;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyv:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyv:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzbn(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyv:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzbo(I)Lcom/google/android/gms/internal/vision/zzgy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyv:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzgy;

    return-object p1
.end method

.method private final zzbp(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzbq(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzbr(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzbs(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyw:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyx:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzu(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zze(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zzf(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzg(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzh(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzi(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzj(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzjm;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/vision/zzgs;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzwd:Lcom/google/android/gms/internal/vision/zzjm;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzig()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzih()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs;->zzwd:Lcom/google/android/gms/internal/vision/zzjm;

    :cond_0
    return-object v0
.end method

.method private final zzt(II)I
    .locals 1

    .line 30
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyw:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyx:I

    if-gt p1, v0, :cond_0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzu(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzu(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 2
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbq(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 5
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 6
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzit;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 8
    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzit;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 10
    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzit;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 12
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 14
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzit;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 15
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 17
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 19
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 21
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 23
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 25
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 27
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 29
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzit;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 30
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 32
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzit;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 33
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 35
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzit;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 36
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzm(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzm(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 38
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 40
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    .line 42
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 44
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    .line 46
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    .line 48
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzn(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 50
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzn(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 51
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 53
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzo(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    move v3, v1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzjj;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/zzjj;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 57
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgf;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/zzgf;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzgi;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto/16 :goto_3

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto/16 :goto_3

    .line 13
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    .line 15
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    .line 17
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    .line 19
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 21
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzj(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzgt;->zzm(Z)I

    move-result v3

    goto/16 :goto_3

    .line 28
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    .line 30
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto/16 :goto_3

    .line 32
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto/16 :goto_4

    .line 34
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto/16 :goto_3

    .line 36
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto/16 :goto_3

    .line 38
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzg(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_3

    .line 40
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzig;->zzf(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 44
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_2

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 53
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzm(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzgt;->zzm(Z)I

    move-result v3

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto :goto_3

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto :goto_3

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    goto :goto_3

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzn(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zzo(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 64
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzab(J)I

    move-result v3

    :goto_3
    add-int/2addr v3, v2

    move v2, v3

    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzjj;->zzv(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 66
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x35

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/vision/zzgf;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzgi;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzg:Lcom/google/android/gms/internal/vision/zzik;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyy:Lcom/google/android/gms/internal/vision/zzic;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzik;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p6

    .line 1023
    sget-object v9, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v0, -0x1

    const/4 v1, -0x1

    move/from16 v2, p5

    move v10, v1

    move/from16 v3, v16

    move v4, v3

    move v8, v4

    move v1, v0

    move/from16 v0, p3

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_29

    add-int/lit8 v4, v0, 0x1

    .line 1024
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1025
    invoke-static {v0, v12, v4, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1026
    iget v4, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    move v7, v0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v0

    move v7, v4

    :goto_1
    ushr-int/lit8 v5, v6, 0x3

    and-int/lit8 v4, v6, 0x7

    if-le v5, v1, :cond_1

    .line 1027
    div-int/lit8 v3, v3, 0x3

    invoke-direct {v15, v5, v3}, Lcom/google/android/gms/internal/vision/zzig;->zzt(II)I

    move-result v0

    goto :goto_2

    .line 1028
    :cond_1
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/vision/zzig;->zzbs(I)I

    move-result v0

    :goto_2
    move v3, v0

    const-wide/16 v18, 0x0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    const/4 v0, 0x1

    move/from16 v21, v5

    move-object/from16 v28, v9

    move/from16 v12, v16

    move/from16 v30, v6

    move v6, v2

    move v2, v7

    move/from16 v7, v30

    goto/16 :goto_1a

    .line 1029
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    add-int/lit8 v1, v3, 0x1

    aget v2, v0, v1

    const/high16 v1, 0xff00000

    and-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x14

    const v20, 0xfffff

    and-int v13, v2, v20

    int-to-long v12, v13

    move/from16 p3, v2

    const/16 v2, 0x11

    if-gt v1, v2, :cond_10

    add-int/lit8 v2, v3, 0x2

    .line 1030
    aget v0, v0, v2

    ushr-int/lit8 v2, v0, 0x14

    const/16 v21, 0x1

    shl-int v21, v21, v2

    and-int v0, v0, v20

    if-eq v0, v10, :cond_4

    const/4 v2, -0x1

    move-wide/from16 v22, v12

    if-eq v10, v2, :cond_3

    int-to-long v12, v10

    .line 1031
    invoke-virtual {v9, v14, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v12, v0

    .line 1032
    invoke-virtual {v9, v14, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v10, v0

    goto :goto_3

    :cond_4
    move-wide/from16 v22, v12

    :goto_3
    const/4 v0, 0x5

    packed-switch v1, :pswitch_data_0

    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-object/from16 v10, p2

    goto/16 :goto_10

    :pswitch_0
    const/4 v0, 0x3

    if-ne v4, v0, :cond_6

    shl-int/lit8 v0, v5, 0x3

    or-int/lit8 v4, v0, 0x4

    .line 1033
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    move-object/from16 v1, p2

    move v2, v7

    move v12, v3

    move/from16 v3, p4

    move v13, v5

    move-object/from16 v5, p6

    .line 1034
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    and-int v1, v8, v21

    if-nez v1, :cond_5

    .line 1035
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    move-wide/from16 v2, v22

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    move-wide/from16 v2, v22

    .line 1036
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    .line 1037
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1038
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v1, v8, v21

    move v8, v1

    move v7, v6

    move/from16 v20, v10

    move-object/from16 v10, p2

    goto/16 :goto_13

    :cond_6
    move v12, v3

    move v13, v5

    goto :goto_5

    :pswitch_1
    move v12, v3

    move v13, v5

    move-wide/from16 v2, v22

    if-nez v4, :cond_7

    move-object/from16 v4, p2

    .line 1039
    invoke-static {v4, v7, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v7

    .line 1040
    iget-wide v0, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    .line 1041
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide v17

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v20, v10

    move-object v10, v4

    move-wide/from16 v4, v17

    .line 1042
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_e

    :cond_7
    :goto_5
    move/from16 v20, v10

    move-object/from16 v10, p2

    goto/16 :goto_8

    :pswitch_2
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    if-nez v4, :cond_a

    .line 1043
    invoke-static {v10, v7, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1044
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    .line 1045
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result v1

    .line 1046
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_3
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    if-nez v4, :cond_a

    .line 1047
    invoke-static {v10, v7, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1048
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    .line 1049
    invoke-direct {v15, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzbo(I)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1050
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/vision/zzgy;->zzf(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    .line 1051
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzig;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    goto/16 :goto_f

    .line 1052
    :cond_9
    :goto_6
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_4
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    const/4 v0, 0x2

    if-ne v4, v0, :cond_a

    .line 1053
    invoke-static {v10, v7, v11}, Lcom/google/android/gms/internal/vision/zzez;->zze([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1054
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    move/from16 v5, p4

    goto/16 :goto_d

    :cond_a
    :goto_8
    move/from16 v5, p4

    goto/16 :goto_10

    :pswitch_5
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    const/4 v0, 0x2

    if-ne v4, v0, :cond_a

    .line 1055
    invoke-direct {v15, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    move/from16 v5, p4

    .line 1056
    invoke-static {v0, v10, v7, v5, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    and-int v1, v8, v21

    if-nez v1, :cond_b

    .line 1057
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    .line 1058
    :cond_b
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    .line 1059
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1060
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9
    or-int v8, v8, v21

    move/from16 v2, p5

    move v4, v6

    move v3, v12

    move v1, v13

    move v13, v5

    goto/16 :goto_15

    :pswitch_6
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    move/from16 v5, p4

    const/4 v0, 0x2

    if-ne v4, v0, :cond_e

    const/high16 v0, 0x20000000

    and-int v0, p3, v0

    if-nez v0, :cond_c

    .line 1061
    invoke-static {v10, v7, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    goto :goto_a

    .line 1062
    :cond_c
    invoke-static {v10, v7, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1063
    :goto_a
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_7
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    move/from16 v5, p4

    if-nez v4, :cond_e

    .line 1064
    invoke-static {v10, v7, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    move/from16 p3, v0

    .line 1065
    iget-wide v0, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    cmp-long v0, v0, v18

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_b

    :cond_d
    move/from16 v0, v16

    :goto_b
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JZ)V

    move/from16 v0, p3

    goto :goto_d

    :pswitch_8
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    move/from16 v5, p4

    if-ne v4, v0, :cond_e

    .line 1066
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/vision/zzez;->zza([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c
    add-int/lit8 v7, v7, 0x4

    goto :goto_e

    :pswitch_9
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    move/from16 v5, p4

    const/4 v0, 0x1

    if-ne v4, v0, :cond_f

    .line 1067
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BI)J

    move-result-wide v17

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v7, v7, 0x8

    move v0, v7

    goto :goto_d

    :pswitch_a
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    if-nez v4, :cond_e

    .line 1068
    invoke-static {v10, v7, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1069
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_d
    or-int v8, v8, v21

    goto :goto_f

    :pswitch_b
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    if-nez v4, :cond_e

    .line 1070
    invoke-static {v10, v7, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v7

    .line 1071
    iget-wide v4, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_e
    or-int v0, v8, v21

    move v8, v0

    move v0, v7

    :goto_f
    move/from16 v2, p5

    move v4, v6

    goto/16 :goto_14

    :pswitch_c
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    if-ne v4, v0, :cond_e

    .line 1072
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JF)V

    goto :goto_c

    :cond_e
    :goto_10
    const/4 v0, 0x1

    goto :goto_11

    :pswitch_d
    move v12, v3

    move v13, v5

    move/from16 v20, v10

    move-wide/from16 v2, v22

    move-object/from16 v10, p2

    const/4 v0, 0x1

    if-ne v4, v0, :cond_f

    .line 1073
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v7, v7, 0x8

    goto :goto_e

    :cond_f
    :goto_11
    move v2, v7

    move-object/from16 v28, v9

    move/from16 v21, v13

    move/from16 v10, v20

    move v7, v6

    move/from16 v6, p5

    goto/16 :goto_1a

    :cond_10
    move/from16 v20, v10

    move-object/from16 v10, p2

    move-wide/from16 v30, v12

    move v12, v3

    move v13, v5

    move-wide/from16 v2, v30

    const/16 v0, 0x1b

    if-ne v1, v0, :cond_14

    const/4 v0, 0x2

    if-ne v4, v0, :cond_13

    .line 1074
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgz;

    .line 1075
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzgz;->zzdo()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1076
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_12

    :cond_11
    shl-int/lit8 v1, v1, 0x1

    .line 1077
    :goto_12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzgz;->zzag(I)Lcom/google/android/gms/internal/vision/zzgz;

    move-result-object v0

    .line 1078
    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_12
    move-object v5, v0

    .line 1079
    invoke-direct {v15, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    move v1, v6

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v7, v6

    move-object/from16 v6, p6

    .line 1080
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;I[BIILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    :goto_13
    move/from16 v2, p5

    move v4, v7

    :goto_14
    move v3, v12

    move v1, v13

    move/from16 v13, p4

    :goto_15
    move-object v12, v10

    move/from16 v10, v20

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x1

    move/from16 v26, v6

    move v15, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move/from16 v29, v12

    move/from16 v21, v13

    goto/16 :goto_16

    :cond_14
    const/16 v0, 0x31

    if-gt v1, v0, :cond_15

    move/from16 v5, p3

    move-object/from16 v21, v9

    int-to-long v9, v5

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move v5, v1

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-object/from16 v2, p2

    move v3, v7

    move/from16 p3, v4

    move/from16 v4, p4

    move/from16 v25, v5

    move v5, v6

    move/from16 v26, v6

    move v6, v13

    move v15, v7

    move/from16 v7, p3

    move/from16 v27, v8

    move v8, v12

    move-object/from16 v28, v21

    move/from16 v11, v25

    move/from16 v29, v12

    move/from16 v21, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 1081
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    if-ne v0, v15, :cond_16

    move v7, v0

    goto/16 :goto_18

    :cond_15
    move/from16 v5, p3

    move/from16 v25, v1

    move-wide/from16 v23, v2

    move/from16 p3, v4

    move/from16 v26, v6

    move v15, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move/from16 v29, v12

    move/from16 v21, v13

    const/4 v14, 0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_18

    const/4 v0, 0x2

    move/from16 v7, p3

    if-ne v7, v0, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v29

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 1082
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    if-ne v0, v15, :cond_16

    goto :goto_17

    :cond_16
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v2, p5

    move-object/from16 v11, p6

    move/from16 v10, v20

    move/from16 v1, v21

    move/from16 v4, v26

    move/from16 v8, v27

    move-object/from16 v9, v28

    move/from16 v3, v29

    goto/16 :goto_0

    :cond_17
    move v0, v14

    :goto_16
    move v7, v15

    goto :goto_19

    :cond_18
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v8, v5

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v26

    move/from16 v6, v21

    move-wide/from16 v10, v23

    move/from16 v12, v29

    move-object/from16 v13, p6

    .line 1083
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    if-ne v0, v15, :cond_28

    :goto_17
    move v7, v0

    move/from16 v22, v14

    :goto_18
    move/from16 v0, v22

    :goto_19
    move/from16 v6, p5

    move v2, v7

    move/from16 v10, v20

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v12, v29

    :goto_1a
    if-ne v7, v6, :cond_1a

    if-nez v6, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, -0x1

    move-object/from16 v9, p0

    move-object/from16 v15, p1

    move v4, v7

    move v1, v8

    move/from16 v8, p4

    goto/16 :goto_2a

    :cond_1a
    :goto_1b
    move-object/from16 v9, p0

    .line 1084
    iget-boolean v1, v9, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-eqz v1, :cond_27

    move-object/from16 v11, p6

    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzcm:Lcom/google/android/gms/internal/vision/zzgd;

    .line 1085
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgd;->zzfl()Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v3

    if-eq v1, v3, :cond_26

    .line 1086
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzig;->zzyy:Lcom/google/android/gms/internal/vision/zzic;

    iget-object v3, v9, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    .line 1087
    iget-object v4, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzcm:Lcom/google/android/gms/internal/vision/zzgd;

    move/from16 v13, v21

    .line 1088
    invoke-virtual {v4, v1, v13}, Lcom/google/android/gms/internal/vision/zzgd;->zza(Lcom/google/android/gms/internal/vision/zzic;I)Lcom/google/android/gms/internal/vision/zzgs$zzg;

    move-result-object v14

    if-nez v14, :cond_1b

    .line 1089
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzig;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 1090
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BIILcom/google/android/gms/internal/vision/zzjm;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    move-object/from16 v15, p1

    move/from16 v20, v6

    move/from16 v21, v8

    move/from16 v22, v10

    move-object/from16 v6, p2

    move/from16 v8, p4

    goto/16 :goto_29

    :cond_1b
    move-object/from16 v15, p1

    .line 1091
    move-object v1, v15

    check-cast v1, Lcom/google/android/gms/internal/vision/zzgs$zze;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzgk()Lcom/google/android/gms/internal/vision/zzgi;

    .line 1092
    iget-object v5, v1, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    .line 1093
    iget-object v4, v14, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    move/from16 p3, v0

    .line 1094
    iget-boolean v0, v4, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwi:Z

    if-eqz v0, :cond_1e

    .line 1095
    iget-boolean v0, v4, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    if-eqz v0, :cond_1e

    .line 1096
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfc;->zzrr:[I

    .line 1097
    iget-object v4, v4, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 1098
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    .line 1099
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v14, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 1100
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 1101
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    const-string v3, "Type cannot be packed: "

    invoke-static {v2, v3, v1}, Le/d/c/a/a;->Q1(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :pswitch_e
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzgu;-><init>()V

    move-object/from16 v4, p2

    .line 1103
    invoke-static {v4, v2, v0, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    move/from16 p3, v2

    .line 1104
    iget-object v2, v1, Lcom/google/android/gms/internal/vision/zzgs;->zzwd:Lcom/google/android/gms/internal/vision/zzjm;

    move/from16 v20, v6

    .line 1105
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzig()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v6

    if-ne v2, v6, :cond_1c

    move-object/from16 v2, v17

    .line 1106
    :cond_1c
    iget-object v6, v14, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 1107
    iget-object v6, v6, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwg:Lcom/google/android/gms/internal/vision/zzgv;

    .line 1108
    invoke-static {v13, v0, v6, v2, v3}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzgv;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vision/zzjm;

    if-eqz v2, :cond_1d

    .line 1109
    iput-object v2, v1, Lcom/google/android/gms/internal/vision/zzgs;->zzwd:Lcom/google/android/gms/internal/vision/zzjm;

    .line 1110
    :cond_1d
    iget-object v1, v14, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {v5, v1, v0}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    move/from16 v2, p3

    move-object v6, v4

    goto/16 :goto_1d

    :pswitch_f
    move-object/from16 v4, p2

    move/from16 v20, v6

    .line 1111
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzhq;-><init>()V

    .line 1112
    invoke-static {v4, v2, v0, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzi([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_10
    move-object/from16 v4, p2

    move/from16 v20, v6

    .line 1113
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzgu;-><init>()V

    .line 1114
    invoke-static {v4, v2, v0, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzh([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto :goto_1c

    :pswitch_11
    move-object/from16 v4, p2

    move/from16 v20, v6

    .line 1115
    new-instance v0, Lcom/google/android/gms/internal/vision/zzff;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzff;-><init>()V

    .line 1116
    invoke-static {v4, v2, v0, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzg([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto :goto_1c

    :pswitch_12
    move-object/from16 v4, p2

    move/from16 v20, v6

    .line 1117
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzgu;-><init>()V

    .line 1118
    invoke-static {v4, v2, v0, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto :goto_1c

    :pswitch_13
    move-object/from16 v4, p2

    move/from16 v20, v6

    .line 1119
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzhq;-><init>()V

    .line 1120
    invoke-static {v4, v2, v0, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto :goto_1c

    :pswitch_14
    move-object/from16 v4, p2

    move/from16 v20, v6

    .line 1121
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzgu;-><init>()V

    .line 1122
    invoke-static {v4, v2, v0, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto :goto_1c

    :pswitch_15
    move-object/from16 v4, p2

    move/from16 v20, v6

    .line 1123
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzhq;-><init>()V

    .line 1124
    invoke-static {v4, v2, v0, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto :goto_1c

    :pswitch_16
    move-object/from16 v4, p2

    move/from16 v20, v6

    .line 1125
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzgo;-><init>()V

    .line 1126
    invoke-static {v4, v2, v0, v11}, Lcom/google/android/gms/internal/vision/zzez;->zze([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    goto :goto_1c

    :pswitch_17
    move-object/from16 v4, p2

    move/from16 v20, v6

    .line 1127
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzgb;-><init>()V

    .line 1128
    invoke-static {v4, v2, v0, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzf([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    :goto_1c
    move-object v6, v4

    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    goto/16 :goto_26

    :cond_1e
    move/from16 v20, v6

    move-object/from16 v6, p2

    .line 1129
    iget-object v0, v4, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 1130
    sget-object v4, Lcom/google/android/gms/internal/vision/zzka;->zzabz:Lcom/google/android/gms/internal/vision/zzka;

    if-ne v0, v4, :cond_21

    .line 1131
    invoke-static {v6, v2, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1132
    iget-object v0, v14, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 1133
    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwg:Lcom/google/android/gms/internal/vision/zzgv;

    .line 1134
    iget v4, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/vision/zzgv;->zzg(I)Lcom/google/android/gms/internal/vision/zzgw;

    move-result-object v0

    if-nez v0, :cond_20

    .line 1135
    iget-object v0, v1, Lcom/google/android/gms/internal/vision/zzgs;->zzwd:Lcom/google/android/gms/internal/vision/zzjm;

    .line 1136
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzig()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v4

    if-ne v0, v4, :cond_1f

    .line 1137
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzih()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v0

    .line 1138
    iput-object v0, v1, Lcom/google/android/gms/internal/vision/zzgs;->zzwd:Lcom/google/android/gms/internal/vision/zzjm;

    .line 1139
    :cond_1f
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {v13, v1, v0, v3}, Lcom/google/android/gms/internal/vision/zzit;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    :goto_1d
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    goto/16 :goto_27

    .line 1140
    :cond_20
    iget v0, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v4, p4

    goto :goto_1e

    .line 1141
    :cond_21
    sget-object v1, Lcom/google/android/gms/internal/vision/zzfc;->zzrr:[I

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    goto/16 :goto_23

    .line 1143
    :pswitch_18
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    .line 1144
    iget-object v1, v14, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxa:Lcom/google/android/gms/internal/vision/zzic;

    .line 1145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    move/from16 v4, p4

    .line 1146
    invoke-static {v0, v6, v2, v4, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1147
    iget-object v0, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    :goto_1e
    move v1, v2

    move/from16 v21, v8

    move/from16 v22, v10

    move v8, v4

    move-object v10, v5

    goto/16 :goto_24

    :pswitch_19
    move/from16 v4, p4

    shl-int/lit8 v0, v13, 0x3

    or-int/lit8 v17, v0, 0x4

    .line 1148
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    .line 1149
    iget-object v1, v14, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxa:Lcom/google/android/gms/internal/vision/zzic;

    .line 1150
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v21, v8

    move v8, v4

    move/from16 v4, v17

    move/from16 v22, v10

    move-object v10, v5

    move-object/from16 v5, p6

    .line 1151
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1152
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    goto :goto_1f

    :pswitch_1a
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1153
    invoke-static {v6, v2, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1154
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    goto :goto_1f

    :pswitch_1b
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1155
    invoke-static {v6, v2, v11}, Lcom/google/android/gms/internal/vision/zzez;->zze([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1156
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    :goto_1f
    move-object/from16 v30, v1

    move v1, v0

    move-object/from16 v0, v30

    goto/16 :goto_24

    .line 1157
    :pswitch_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1158
    invoke-static {v6, v2, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1159
    iget-wide v0, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_23

    :pswitch_1e
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1160
    invoke-static {v6, v2, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1161
    iget v0, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_23

    :pswitch_1f
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1162
    invoke-static {v6, v2, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1163
    iget-wide v0, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    cmp-long v0, v0, v18

    if-eqz v0, :cond_22

    move/from16 v0, p3

    goto :goto_20

    :cond_22
    move/from16 v0, v16

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_23

    :pswitch_20
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1164
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/vision/zzez;->zza([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_21

    :pswitch_21
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1165
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_22

    :pswitch_22
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1166
    invoke-static {v6, v2, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1167
    iget v0, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_23

    :pswitch_23
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1168
    invoke-static {v6, v2, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 1169
    iget-wide v0, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_23

    :pswitch_24
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1170
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_21
    move-object/from16 v17, v0

    add-int/lit8 v2, v2, 0x4

    goto :goto_23

    :pswitch_25
    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v8, p4

    move-object v10, v5

    .line 1171
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_22
    move-object/from16 v17, v0

    add-int/lit8 v2, v2, 0x8

    :goto_23
    move v1, v2

    move-object/from16 v0, v17

    .line 1172
    :goto_24
    iget-object v2, v14, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    iget-boolean v3, v2, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwi:Z

    if-eqz v3, :cond_23

    .line 1173
    invoke-virtual {v10, v2, v0}, Lcom/google/android/gms/internal/vision/zzgi;->zzb(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    :goto_25
    move v2, v1

    goto :goto_27

    .line 1174
    :cond_23
    sget-object v3, Lcom/google/android/gms/internal/vision/zzfc;->zzrr:[I

    .line 1175
    iget-object v2, v2, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    .line 1176
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_24

    const/16 v3, 0x12

    if-eq v2, v3, :cond_24

    goto :goto_26

    .line 1177
    :cond_24
    iget-object v2, v14, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1178
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1179
    :cond_25
    :goto_26
    iget-object v2, v14, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {v10, v2, v0}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    goto :goto_25

    :goto_27
    move v0, v2

    goto :goto_29

    :cond_26
    move-object/from16 v15, p1

    goto :goto_28

    :cond_27
    move-object/from16 v15, p1

    move-object/from16 v11, p6

    :goto_28
    move/from16 v20, v6

    move/from16 v22, v10

    move/from16 v13, v21

    move-object/from16 v6, p2

    move/from16 v21, v8

    move/from16 v8, p4

    .line 1180
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzig;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 1181
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BIILcom/google/android/gms/internal/vision/zzjm;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    :goto_29
    move v4, v7

    move v3, v12

    move v1, v13

    move-object v14, v15

    move/from16 v2, v20

    move/from16 v10, v22

    move-object v12, v6

    move v13, v8

    move-object v15, v9

    move/from16 v8, v21

    move-object/from16 v9, v28

    goto/16 :goto_0

    :cond_28
    move/from16 v13, v21

    move/from16 v7, v26

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v2, p5

    move-object/from16 v11, p6

    move v4, v7

    move v1, v13

    move/from16 v10, v20

    move/from16 v8, v27

    move-object/from16 v9, v28

    move/from16 v3, v29

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_29
    move/from16 v27, v8

    move-object/from16 v28, v9

    move/from16 v20, v10

    move v8, v13

    move-object v9, v15

    move-object v15, v14

    const/4 v1, -0x1

    move v6, v2

    move v2, v0

    move v0, v1

    move/from16 v1, v27

    :goto_2a
    if-eq v10, v0, :cond_2a

    int-to-long v10, v10

    move-object/from16 v0, v28

    .line 1182
    invoke-virtual {v0, v15, v10, v11, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1183
    :cond_2a
    iget v0, v9, Lcom/google/android/gms/internal/vision/zzig;->zzze:I

    move-object/from16 v1, v17

    :goto_2b
    iget v3, v9, Lcom/google/android/gms/internal/vision/zzig;->zzzf:I

    if-ge v0, v3, :cond_2b

    .line 1184
    iget-object v3, v9, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    aget v3, v3, v0

    iget-object v5, v9, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    .line 1185
    invoke-direct {v9, v15, v3, v1, v5}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/zzjm;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_2b
    if-eqz v1, :cond_2c

    .line 1186
    iget-object v0, v9, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    .line 1187
    invoke-virtual {v0, v15, v1}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    if-nez v6, :cond_2e

    if-ne v2, v8, :cond_2d

    goto :goto_2c

    .line 1188
    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0

    :cond_2e
    if-gt v2, v8, :cond_2f

    if-ne v4, v6, :cond_2f

    :goto_2c
    return v2

    .line 1189
    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;Lcom/google/android/gms/internal/vision/zzgd;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/zzis;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    iget-object v8, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    const/4 v9, 0x0

    move-object v0, v9

    move-object v10, v0

    .line 523
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzdu()I

    move-result v1

    .line 524
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzbs(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_a

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 525
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzze:I

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzf:I

    if-ge p2, p3, :cond_1

    .line 526
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    aget p3, p3, p2

    .line 527
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    .line 528
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 529
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-nez v2, :cond_4

    move-object v2, v9

    goto :goto_2

    .line 530
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyy:Lcom/google/android/gms/internal/vision/zzic;

    invoke-virtual {v8, p3, v2, v1}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Lcom/google/android/gms/internal/vision/zzgd;Lcom/google/android/gms/internal/vision/zzic;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    .line 531
    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/vision/zzgf;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object v0

    :cond_5
    move-object v11, v0

    move-object v0, v8

    move-object v1, p2

    move-object v3, p3

    move-object v4, v11

    move-object v5, v10

    move-object v6, v7

    .line 532
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Lcom/google/android/gms/internal/vision/zzis;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzgd;Lcom/google/android/gms/internal/vision/zzgi;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v11

    goto :goto_0

    .line 533
    :cond_6
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/vision/zzjj;->zza(Lcom/google/android/gms/internal/vision/zzis;)Z

    if-nez v10, :cond_7

    .line 534
    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/vision/zzjj;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    .line 535
    :cond_7
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/vision/zzjj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 536
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzze:I

    :goto_3
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzf:I

    if-ge p2, p3, :cond_8

    .line 537
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    aget p3, p3, p2

    .line 538
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    if-eqz v10, :cond_9

    .line 539
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void

    .line 540
    :cond_a
    :try_start_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x14

    const v5, 0xfffff

    packed-switch v4, :pswitch_data_0

    if-nez v10, :cond_15

    .line 541
    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/vision/zzjj;->zzif()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_8

    :pswitch_0
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 542
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v5

    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzc(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v5

    .line 543
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 544
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 545
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzej()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 546
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 547
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 548
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzei()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 549
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 550
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 551
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzeh()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 552
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 553
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 554
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzeg()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 555
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 556
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 557
    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzef()I

    move-result v4

    .line 558
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbo(I)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 559
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/vision/zzgy;->zzf(I)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_4

    .line 560
    :cond_b
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/vision/zzit;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    :cond_c
    :goto_4
    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 561
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v5, v6, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 562
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 563
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzee()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 564
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 565
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 566
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 567
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 568
    :pswitch_8
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 569
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 570
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v6

    .line 571
    invoke-interface {p2, v6, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v6

    .line 572
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 573
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_d
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 574
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v5

    .line 575
    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v5

    .line 576
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 577
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    .line 578
    :goto_5
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 579
    :pswitch_9
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzis;)V

    .line 580
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 581
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzeb()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 582
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 583
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 584
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzea()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 585
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 586
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 587
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzdz()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 588
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 589
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 590
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzdy()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 591
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 592
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 593
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzdw()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 594
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 595
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 596
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzdx()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 597
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 598
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 599
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 600
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 601
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 602
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 603
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 604
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 605
    :pswitch_12
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbn(I)Ljava/lang/Object;

    move-result-object v1

    .line 606
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    .line 607
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    .line 608
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 609
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    .line 610
    :cond_e
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/vision/zzhv;->zzm(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 611
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 612
    iget-object v6, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-interface {v6, v5, v4}, Lcom/google/android/gms/internal/vision/zzhv;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-static {p1, v2, v3, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v5

    .line 614
    :cond_f
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    .line 615
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/vision/zzhv;->zzk(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    .line 616
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v1

    .line 617
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/vision/zzht;Lcom/google/android/gms/internal/vision/zzgd;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 618
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    .line 619
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    .line 620
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 621
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)V

    goto/16 :goto_0

    .line 622
    :pswitch_14
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 623
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 624
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 625
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 626
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 627
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 628
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 629
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 630
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzn(Ljava/util/List;)V

    goto/16 :goto_0

    .line 631
    :pswitch_17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 632
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 633
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzm(Ljava/util/List;)V

    goto/16 :goto_0

    .line 634
    :pswitch_18
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 635
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 636
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/vision/zzis;->zzl(Ljava/util/List;)V

    .line 637
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbo(I)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object v2

    .line 638
    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzgy;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 639
    :pswitch_19
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 640
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 641
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzk(Ljava/util/List;)V

    goto/16 :goto_0

    .line 642
    :pswitch_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 643
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 644
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 645
    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 646
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 647
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzg(Ljava/util/List;)V

    goto/16 :goto_0

    .line 648
    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 649
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 650
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzf(Ljava/util/List;)V

    goto/16 :goto_0

    .line 651
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 652
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 653
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zze(Ljava/util/List;)V

    goto/16 :goto_0

    .line 654
    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 655
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 656
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzc(Ljava/util/List;)V

    goto/16 :goto_0

    .line 657
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 658
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 659
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzd(Ljava/util/List;)V

    goto/16 :goto_0

    .line 660
    :pswitch_20
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 661
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 662
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzb(Ljava/util/List;)V

    goto/16 :goto_0

    .line 663
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 664
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 665
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zza(Ljava/util/List;)V

    goto/16 :goto_0

    .line 666
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 667
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 668
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 669
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 670
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 671
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 672
    :pswitch_24
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 673
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 674
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzn(Ljava/util/List;)V

    goto/16 :goto_0

    .line 675
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 676
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 677
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzm(Ljava/util/List;)V

    goto/16 :goto_0

    .line 678
    :pswitch_26
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 679
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 680
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/vision/zzis;->zzl(Ljava/util/List;)V

    .line 681
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbo(I)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object v2

    .line 682
    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzgy;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 683
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 684
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 685
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzk(Ljava/util/List;)V

    goto/16 :goto_0

    .line 686
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 687
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 688
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzj(Ljava/util/List;)V

    goto/16 :goto_0

    .line 689
    :pswitch_29
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 690
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    .line 691
    invoke-virtual {v4, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 692
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)V

    goto/16 :goto_0

    .line 693
    :pswitch_2a
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzig;->zzbr(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 694
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 695
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 696
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzi(Ljava/util/List;)V

    goto/16 :goto_0

    .line 697
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 698
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->readStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 699
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 700
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 701
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 702
    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 703
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 704
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzg(Ljava/util/List;)V

    goto/16 :goto_0

    .line 705
    :pswitch_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 706
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 707
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzf(Ljava/util/List;)V

    goto/16 :goto_0

    .line 708
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 709
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 710
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zze(Ljava/util/List;)V

    goto/16 :goto_0

    .line 711
    :pswitch_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 712
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 713
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzc(Ljava/util/List;)V

    goto/16 :goto_0

    .line 714
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 715
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 716
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzd(Ljava/util/List;)V

    goto/16 :goto_0

    .line 717
    :pswitch_31
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 718
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 719
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zzb(Ljava/util/List;)V

    goto/16 :goto_0

    .line 720
    :pswitch_32
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 721
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 722
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzis;->zza(Ljava/util/List;)V

    goto/16 :goto_0

    .line 723
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_11

    and-int v1, v3, v5

    int-to-long v3, v1

    .line 724
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 725
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v2

    .line 726
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzc(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v2

    .line 727
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 728
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 729
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    .line 730
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzc(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v1

    .line 731
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 732
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 733
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzej()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JJ)V

    .line 734
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 735
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzei()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 736
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 737
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzeh()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JJ)V

    .line 738
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 739
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzeg()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 740
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 741
    :pswitch_38
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzef()I

    move-result v4

    .line 742
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbo(I)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 743
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/vision/zzgy;->zzf(I)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_7

    .line 744
    :cond_12
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/vision/zzit;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    :cond_13
    :goto_7
    and-int v1, v3, v5

    int-to-long v5, v1

    .line 745
    invoke-static {p1, v5, v6, v4}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 746
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 747
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzee()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 748
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 749
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 750
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 751
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_14

    and-int v1, v3, v5

    int-to-long v3, v1

    .line 752
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 753
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v2

    .line 754
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v2

    .line 755
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 756
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 757
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    .line 758
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v1

    .line 759
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 760
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 761
    :pswitch_3c
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzis;)V

    .line 762
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 763
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzeb()Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JZ)V

    .line 764
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 765
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzea()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 766
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 767
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzdz()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JJ)V

    .line 768
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 769
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzdy()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 770
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 771
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzdw()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JJ)V

    .line 772
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 773
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->zzdx()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JJ)V

    .line 774
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 775
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->readFloat()F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JF)V

    .line 776
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 777
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzis;->readDouble()D

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JD)V

    .line 778
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :goto_8
    move-object v10, v1

    .line 779
    :cond_15
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/vision/zzjj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;)Z

    move-result v1
    :try_end_3
    .catch Lcom/google/android/gms/internal/vision/zzhb; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_0

    .line 780
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzze:I

    :goto_9
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzf:I

    if-ge p2, p3, :cond_16

    .line 781
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    aget p3, p3, p2

    .line 782
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_16
    if-eqz v10, :cond_17

    .line 783
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    return-void

    .line 784
    :catch_0
    :try_start_4
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/vision/zzjj;->zza(Lcom/google/android/gms/internal/vision/zzis;)Z

    if-nez v10, :cond_18

    .line 785
    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/vision/zzjj;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    .line 786
    :cond_18
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/vision/zzjj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_0

    .line 787
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzze:I

    :goto_a
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzf:I

    if-ge p2, p3, :cond_19

    .line 788
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    aget p3, p3, p2

    .line 789
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_19
    if-eqz v10, :cond_1a

    .line 790
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    return-void

    :catchall_0
    move-exception p2

    .line 791
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzze:I

    :goto_b
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzf:I

    if-ge p3, v0, :cond_1b

    .line 792
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    aget v0, v0, p3

    .line 793
    invoke-direct {p0, p1, v0, v10, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_1b
    if-eqz v10, :cond_1c

    .line 794
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 795
    :cond_1c
    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/zzkg;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzfj()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/vision/zzgs$zzf;->zzwx:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzig;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    .line 101
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgf;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object v0

    .line 103
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/zzgi;->zztb:Lcom/google/android/gms/internal/vision/zziw;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgi;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    .line 106
    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    .line 107
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v8

    .line 108
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    .line 109
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    .line 110
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Lcom/google/android/gms/internal/vision/zzkg;Ljava/util/Map$Entry;)V

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 112
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 113
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 114
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v10

    .line 115
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_3

    .line 116
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 117
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(IJ)V

    goto/16 :goto_3

    .line 118
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 119
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(II)V

    goto/16 :goto_3

    .line 120
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 121
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(IJ)V

    goto/16 :goto_3

    .line 122
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 123
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzr(II)V

    goto/16 :goto_3

    .line 124
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 125
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzs(II)V

    goto/16 :goto_3

    .line 126
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 127
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(II)V

    goto/16 :goto_3

    .line 128
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 129
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/zzfh;

    .line 130
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILcom/google/android/gms/internal/vision/zzfh;)V

    goto/16 :goto_3

    .line 131
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 132
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 133
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_3

    .line 134
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 135
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzig;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_3

    .line 136
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 137
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzj(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IZ)V

    goto/16 :goto_3

    .line 138
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 139
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzk(II)V

    goto/16 :goto_3

    .line 140
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 141
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zzc(IJ)V

    goto/16 :goto_3

    .line 142
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 143
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzh(II)V

    goto/16 :goto_3

    .line 144
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 145
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IJ)V

    goto/16 :goto_3

    .line 146
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 147
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(IJ)V

    goto/16 :goto_3

    .line 148
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 149
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzg(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IF)V

    goto/16 :goto_3

    .line 150
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 151
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzig;->zzf(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 152
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Lcom/google/android/gms/internal/vision/zzkg;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 153
    :pswitch_13
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 154
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 155
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v10

    .line 156
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_3

    .line 157
    :pswitch_14
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 158
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 159
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 160
    :pswitch_15
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 161
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 162
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 163
    :pswitch_16
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 164
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 165
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 166
    :pswitch_17
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 167
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 168
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 169
    :pswitch_18
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 170
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 171
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 172
    :pswitch_19
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 173
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 174
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 175
    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 176
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 177
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 178
    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 179
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 180
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 181
    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 182
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 183
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 184
    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 185
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 186
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 187
    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 188
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 189
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 190
    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 191
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 192
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 193
    :pswitch_20
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 194
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 195
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 196
    :pswitch_21
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 197
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 198
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 199
    :pswitch_22
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 200
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 201
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 202
    :pswitch_23
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 203
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 204
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 205
    :pswitch_24
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 206
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 207
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 208
    :pswitch_25
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 209
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 210
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 211
    :pswitch_26
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 212
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 213
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 214
    :pswitch_27
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 215
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 216
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 217
    :pswitch_28
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 218
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 219
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_3

    .line 220
    :pswitch_29
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 221
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 222
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v10

    .line 223
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_3

    .line 224
    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 225
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 226
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_3

    .line 227
    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 228
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 229
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 230
    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 231
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 232
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 233
    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 234
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 235
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 236
    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 237
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 238
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 239
    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 240
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 241
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 242
    :pswitch_30
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 243
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 244
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 245
    :pswitch_31
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 246
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 247
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 248
    :pswitch_32
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 249
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 250
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_3

    .line 251
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 252
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 253
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v10

    .line 254
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_3

    .line 255
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 256
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 257
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(IJ)V

    goto/16 :goto_3

    .line 258
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 259
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 260
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(II)V

    goto/16 :goto_3

    .line 261
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 262
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 263
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(IJ)V

    goto/16 :goto_3

    .line 264
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 265
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 266
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzr(II)V

    goto/16 :goto_3

    .line 267
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 268
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 269
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzs(II)V

    goto/16 :goto_3

    .line 270
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 271
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 272
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(II)V

    goto/16 :goto_3

    .line 273
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 274
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/zzfh;

    .line 275
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILcom/google/android/gms/internal/vision/zzfh;)V

    goto/16 :goto_3

    .line 276
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 277
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 278
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_3

    .line 279
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 280
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzig;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_3

    .line 281
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 282
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzm(Ljava/lang/Object;J)Z

    move-result v8

    .line 283
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IZ)V

    goto/16 :goto_3

    .line 284
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 285
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 286
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzk(II)V

    goto :goto_3

    .line 287
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 288
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 289
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zzc(IJ)V

    goto :goto_3

    .line 290
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 291
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 292
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zzh(II)V

    goto :goto_3

    .line 293
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 294
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 295
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IJ)V

    goto :goto_3

    .line 296
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 297
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 298
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(IJ)V

    goto :goto_3

    .line 299
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 300
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzn(Ljava/lang/Object;J)F

    move-result v8

    .line 301
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IF)V

    goto :goto_3

    .line 302
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 303
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzjp;->zzo(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 304
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 305
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Lcom/google/android/gms/internal/vision/zzkg;Ljava/util/Map$Entry;)V

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    return-void

    .line 307
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzb:Z

    if-eqz v0, :cond_f

    .line 308
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-eqz v0, :cond_8

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgf;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object v0

    .line 310
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/zzgi;->zztb:Lcom/google/android/gms/internal/vision/zziw;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 311
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgi;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    .line 313
    :goto_5
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    array-length v7, v7

    move v8, v5

    :goto_6
    if-ge v8, v7, :cond_c

    .line 314
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v9

    .line 315
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    :goto_7
    if-eqz v1, :cond_a

    .line 316
    iget-object v11, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    .line 317
    iget-object v11, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v11, p2, v1}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Lcom/google/android/gms/internal/vision/zzkg;Ljava/util/Map$Entry;)V

    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v1, v3

    goto :goto_7

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    .line 319
    :pswitch_45
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 320
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 321
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v11

    .line 322
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_8

    .line 323
    :pswitch_46
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 324
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(IJ)V

    goto/16 :goto_8

    .line 325
    :pswitch_47
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 326
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(II)V

    goto/16 :goto_8

    .line 327
    :pswitch_48
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 328
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(IJ)V

    goto/16 :goto_8

    .line 329
    :pswitch_49
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 330
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzr(II)V

    goto/16 :goto_8

    .line 331
    :pswitch_4a
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 332
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzs(II)V

    goto/16 :goto_8

    .line 333
    :pswitch_4b
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 334
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(II)V

    goto/16 :goto_8

    .line 335
    :pswitch_4c
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 336
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/zzfh;

    .line 337
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILcom/google/android/gms/internal/vision/zzfh;)V

    goto/16 :goto_8

    .line 338
    :pswitch_4d
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 339
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 340
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_8

    .line 341
    :pswitch_4e
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 342
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzig;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_8

    .line 343
    :pswitch_4f
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 344
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzj(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IZ)V

    goto/16 :goto_8

    .line 345
    :pswitch_50
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 346
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzk(II)V

    goto/16 :goto_8

    .line 347
    :pswitch_51
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 348
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zzc(IJ)V

    goto/16 :goto_8

    .line 349
    :pswitch_52
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 350
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzh(II)V

    goto/16 :goto_8

    .line 351
    :pswitch_53
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 352
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IJ)V

    goto/16 :goto_8

    .line 353
    :pswitch_54
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 354
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(IJ)V

    goto/16 :goto_8

    .line 355
    :pswitch_55
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 356
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzg(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IF)V

    goto/16 :goto_8

    .line 357
    :pswitch_56
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 358
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzig;->zzf(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 359
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Lcom/google/android/gms/internal/vision/zzkg;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 360
    :pswitch_58
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 361
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 362
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v11

    .line 363
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_8

    .line 364
    :pswitch_59
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 365
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 366
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 367
    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 368
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 369
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 370
    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 371
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 372
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 373
    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 374
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 375
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 376
    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 377
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 378
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 379
    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 380
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 381
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 382
    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 383
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 384
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 385
    :pswitch_60
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 386
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 387
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 388
    :pswitch_61
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 389
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 390
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 391
    :pswitch_62
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 392
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 393
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 394
    :pswitch_63
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 395
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 396
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 397
    :pswitch_64
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 398
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 399
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 400
    :pswitch_65
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 401
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 402
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 403
    :pswitch_66
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 404
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 405
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 406
    :pswitch_67
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 407
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 408
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 409
    :pswitch_68
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 410
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 411
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 412
    :pswitch_69
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 413
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 414
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 415
    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 416
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 417
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 418
    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 419
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 420
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 421
    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 422
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 423
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 424
    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 425
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 426
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_8

    .line 427
    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 428
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 429
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v11

    .line 430
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_8

    .line 431
    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 432
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 433
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_8

    .line 434
    :pswitch_70
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 435
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 436
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 437
    :pswitch_71
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 438
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 439
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 440
    :pswitch_72
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 441
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 442
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 443
    :pswitch_73
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 444
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 445
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 446
    :pswitch_74
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 447
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 448
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 449
    :pswitch_75
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 450
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 451
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 452
    :pswitch_76
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 453
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 454
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 455
    :pswitch_77
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 456
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 457
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    goto/16 :goto_8

    .line 458
    :pswitch_78
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 459
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 460
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v11

    .line 461
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_8

    .line 462
    :pswitch_79
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 463
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 464
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(IJ)V

    goto/16 :goto_8

    .line 465
    :pswitch_7a
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 466
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 467
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(II)V

    goto/16 :goto_8

    .line 468
    :pswitch_7b
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 469
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 470
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(IJ)V

    goto/16 :goto_8

    .line 471
    :pswitch_7c
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 472
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 473
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzr(II)V

    goto/16 :goto_8

    .line 474
    :pswitch_7d
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 475
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 476
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzs(II)V

    goto/16 :goto_8

    .line 477
    :pswitch_7e
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 478
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 479
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(II)V

    goto/16 :goto_8

    .line 480
    :pswitch_7f
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 481
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/zzfh;

    .line 482
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILcom/google/android/gms/internal/vision/zzfh;)V

    goto/16 :goto_8

    .line 483
    :pswitch_80
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 484
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 485
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_8

    .line 486
    :pswitch_81
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 487
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzig;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    goto/16 :goto_8

    .line 488
    :pswitch_82
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 489
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzm(Ljava/lang/Object;J)Z

    move-result v9

    .line 490
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IZ)V

    goto/16 :goto_8

    .line 491
    :pswitch_83
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 492
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 493
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzk(II)V

    goto :goto_8

    .line 494
    :pswitch_84
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 495
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 496
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zzc(IJ)V

    goto :goto_8

    .line 497
    :pswitch_85
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 498
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 499
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zzh(II)V

    goto :goto_8

    .line 500
    :pswitch_86
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 501
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 502
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IJ)V

    goto :goto_8

    .line 503
    :pswitch_87
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 504
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 505
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(IJ)V

    goto :goto_8

    .line 506
    :pswitch_88
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 507
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzn(Ljava/lang/Object;J)F

    move-result v9

    .line 508
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IF)V

    goto :goto_8

    .line 509
    :pswitch_89
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 510
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzjp;->zzo(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 511
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v1, :cond_e

    .line 512
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/vision/zzgf;->zza(Lcom/google/android/gms/internal/vision/zzkg;Ljava/util/Map$Entry;)V

    .line 513
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_d
    move-object v1, v3

    goto :goto_9

    .line 514
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzig;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void

    .line 515
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzfb;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 1190
    iget-boolean v0, v15, Lcom/google/android/gms/internal/vision/zzig;->zzzb:Z

    if-eqz v0, :cond_12

    .line 1191
    sget-object v9, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    move v1, v10

    move/from16 v2, v16

    :goto_0
    if-ge v0, v13, :cond_10

    add-int/lit8 v3, v0, 0x1

    .line 1192
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1193
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1194
    iget v3, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v8, v3

    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_1

    .line 1195
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/google/android/gms/internal/vision/zzig;->zzt(II)I

    move-result v0

    goto :goto_2

    .line 1196
    :cond_1
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/vision/zzig;->zzbs(I)I

    move-result v0

    :goto_2
    move v4, v0

    if-ne v4, v10, :cond_2

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    move/from16 v26, v10

    move/from16 v19, v16

    goto/16 :goto_f

    .line 1197
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v3, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v1, v0

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_7

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    if-nez v6, :cond_a

    .line 1198
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 1199
    iget-wide v0, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    .line 1200
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 1201
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1202
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1203
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    .line 1204
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result v1

    .line 1205
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1206
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1207
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 1208
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzez;->zze([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1209
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 1210
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    .line 1211
    invoke-static {v0, v12, v8, v13, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1212
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1213
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 1214
    :cond_3
    iget-object v5, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    .line 1215
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1216
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_4

    .line 1217
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    goto :goto_3

    .line 1218
    :cond_4
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1219
    :goto_3
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_a

    .line 1220
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v1

    .line 1221
    iget-wide v5, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    const-wide/16 v19, 0x0

    cmp-long v5, v5, v19

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v0, v16

    :goto_4
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_5

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    .line 1222
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/zzez;->zza([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_5
    move v2, v4

    move v1, v7

    goto/16 :goto_9

    :pswitch_8
    move-wide v2, v1

    if-ne v6, v0, :cond_a

    .line 1223
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_7

    :pswitch_9
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1224
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 1225
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1226
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v6

    .line 1227
    iget-wide v4, v11, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    move v0, v6

    goto :goto_8

    :pswitch_b
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_6

    .line 1228
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_8

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_6

    .line 1229
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JD)V

    :goto_7
    add-int/lit8 v0, v8, 0x8

    :goto_8
    move v1, v7

    move v2, v10

    :goto_9
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_c

    :cond_7
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_b

    if-ne v6, v10, :cond_a

    .line 1230
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgz;

    .line 1231
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzgz;->zzdo()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0xa

    goto :goto_a

    :cond_8
    shl-int/lit8 v3, v3, 0x1

    .line 1233
    :goto_a
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/vision/zzgz;->zzag(I)Lcom/google/android/gms/internal/vision/zzgz;

    move-result-object v0

    .line 1234
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_9
    move-object v5, v0

    .line 1235
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 1236
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;I[BIILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto :goto_9

    :cond_a
    :goto_b
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_c
    const/16 v26, -0x1

    goto/16 :goto_d

    :cond_b
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_c

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 1237
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_e

    :cond_c
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_e

    move/from16 v7, p3

    if-ne v7, v10, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 1238
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v15

    goto :goto_f

    :cond_e
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 1239
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    if-ne v0, v15, :cond_f

    :goto_e
    move v2, v0

    .line 1240
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzig;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 1241
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BIILcom/google/android/gms/internal/vision/zzjm;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    :cond_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    move/from16 v10, v26

    goto/16 :goto_0

    :cond_10
    move v4, v13

    if-ne v0, v4, :cond_11

    return-void

    .line 1242
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0

    :cond_12
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 1243
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzfb;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 6
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 10
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 13
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzit;->zza(Lcom/google/android/gms/internal/vision/zzhv;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 14
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzhm;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 15
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 16
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JJ)V

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 19
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 22
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JJ)V

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 25
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 28
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 31
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 34
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 38
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 41
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzm(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JZ)V

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 44
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 47
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JJ)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 50
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zzb(Ljava/lang/Object;JI)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 53
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JJ)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 56
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 59
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzn(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JF)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 62
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JD)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzb:Z

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzit;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzit;->zza(Lcom/google/android/gms/internal/vision/zzgf;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzze:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzf:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/vision/zzhv;->zzn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjp;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzh:Lcom/google/android/gms/internal/vision/zzhm;

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzhm;->zzb(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgf;->zzg(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final zzr(Ljava/lang/Object;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzb:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v5, 0xfffff

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_13

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    move v10, v9

    move v11, v10

    .line 3
    :goto_0
    iget-object v12, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    array-length v12, v12

    if-ge v10, v12, :cond_12

    .line 4
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v12

    and-int/2addr v3, v12

    ushr-int/lit8 v3, v3, 0x14

    .line 5
    iget-object v13, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v13, v13, v10

    and-int/2addr v12, v5

    int-to-long v14, v12

    .line 6
    sget-object v12, Lcom/google/android/gms/internal/vision/zzgn;->zzut:Lcom/google/android/gms/internal/vision/zzgn;

    .line 7
    invoke-virtual {v12}, Lcom/google/android/gms/internal/vision/zzgn;->id()I

    move-result v12

    if-lt v3, v12, :cond_0

    sget-object v12, Lcom/google/android/gms/internal/vision/zzgn;->zzvg:Lcom/google/android/gms/internal/vision/zzgn;

    .line 8
    invoke-virtual {v12}, Lcom/google/android/gms/internal/vision/zzgn;->id()I

    move-result v12

    if-gt v3, v12, :cond_0

    .line 9
    iget-object v12, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    add-int/lit8 v16, v10, 0x2

    aget v12, v12, v16

    and-int/2addr v12, v5

    goto :goto_1

    :cond_0
    move v12, v9

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 10
    :pswitch_0
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 11
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzic;

    .line 12
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v12

    .line 13
    invoke-static {v13, v3, v12}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v3

    goto/16 :goto_3

    .line 14
    :pswitch_1
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 15
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/google/android/gms/internal/vision/zzga;->zzf(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 16
    :pswitch_2
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 17
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzn(II)I

    move-result v3

    goto/16 :goto_3

    .line 18
    :pswitch_3
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 19
    invoke-static {v13, v7, v8}, Lcom/google/android/gms/internal/vision/zzga;->zzh(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 20
    :pswitch_4
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 21
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/vision/zzga;->zzp(II)I

    move-result v3

    goto/16 :goto_3

    .line 22
    :pswitch_5
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 23
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzq(II)I

    move-result v3

    goto/16 :goto_3

    .line 24
    :pswitch_6
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 25
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzm(II)I

    move-result v3

    goto/16 :goto_3

    .line 26
    :pswitch_7
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 27
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzfh;

    .line 28
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzfh;)I

    move-result v3

    goto/16 :goto_3

    .line 29
    :pswitch_8
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 30
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v12

    invoke-static {v13, v3, v12}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v3

    goto/16 :goto_3

    .line 32
    :pswitch_9
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 33
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    instance-of v12, v3, Lcom/google/android/gms/internal/vision/zzfh;

    if-eqz v12, :cond_1

    .line 35
    check-cast v3, Lcom/google/android/gms/internal/vision/zzfh;

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzfh;)I

    move-result v3

    goto/16 :goto_3

    .line 36
    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 37
    :pswitch_a
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 38
    invoke-static {v13, v6}, Lcom/google/android/gms/internal/vision/zzga;->zzb(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 39
    :pswitch_b
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 40
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/vision/zzga;->zzo(II)I

    move-result v3

    goto/16 :goto_3

    .line 41
    :pswitch_c
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 42
    invoke-static {v13, v7, v8}, Lcom/google/android/gms/internal/vision/zzga;->zzg(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 43
    :pswitch_d
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 44
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzl(II)I

    move-result v3

    goto/16 :goto_3

    .line 45
    :pswitch_e
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 46
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/google/android/gms/internal/vision/zzga;->zze(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 47
    :pswitch_f
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 48
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/google/android/gms/internal/vision/zzga;->zzd(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 49
    :pswitch_10
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 50
    invoke-static {v13, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzb(IF)I

    move-result v3

    goto/16 :goto_3

    .line 51
    :pswitch_11
    invoke-direct {v0, v1, v13, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    const-wide/16 v14, 0x0

    .line 52
    invoke-static {v13, v14, v15}, Lcom/google/android/gms/internal/vision/zzga;->zzb(ID)I

    move-result v3

    goto/16 :goto_3

    .line 53
    :pswitch_12
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    .line 54
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzbn(I)Ljava/lang/Object;

    move-result-object v14

    .line 55
    invoke-interface {v3, v13, v12, v14}, Lcom/google/android/gms/internal/vision/zzhv;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    .line 56
    :pswitch_13
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v12

    .line 57
    invoke-static {v13, v3, v12}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v3

    goto/16 :goto_3

    .line 58
    :pswitch_14
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 59
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzs(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 60
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_2

    int-to-long v14, v12

    .line 61
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 62
    :cond_2
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 63
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto/16 :goto_2

    .line 64
    :pswitch_15
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 65
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzw(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 66
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_3

    int-to-long v14, v12

    .line 67
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 68
    :cond_3
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 69
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto/16 :goto_2

    .line 70
    :pswitch_16
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 71
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzy(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 72
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_4

    int-to-long v14, v12

    .line 73
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 74
    :cond_4
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 75
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto/16 :goto_2

    .line 76
    :pswitch_17
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 77
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzx(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 78
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_5

    int-to-long v14, v12

    .line 79
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 80
    :cond_5
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 81
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto/16 :goto_2

    .line 82
    :pswitch_18
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 83
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzt(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 84
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_6

    int-to-long v14, v12

    .line 85
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 86
    :cond_6
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 87
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto/16 :goto_2

    .line 88
    :pswitch_19
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 89
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzv(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 90
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_7

    int-to-long v14, v12

    .line 91
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 92
    :cond_7
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 93
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto/16 :goto_2

    .line 94
    :pswitch_1a
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 95
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzz(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 96
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_8

    int-to-long v14, v12

    .line 97
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 98
    :cond_8
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 99
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto/16 :goto_2

    .line 100
    :pswitch_1b
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 101
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzx(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 102
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_9

    int-to-long v14, v12

    .line 103
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 104
    :cond_9
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 105
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto/16 :goto_2

    .line 106
    :pswitch_1c
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 107
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzy(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 108
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_a

    int-to-long v14, v12

    .line 109
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 110
    :cond_a
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 111
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto/16 :goto_2

    .line 112
    :pswitch_1d
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 113
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzu(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 114
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_b

    int-to-long v14, v12

    .line 115
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 116
    :cond_b
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 117
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto/16 :goto_2

    .line 118
    :pswitch_1e
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 119
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzr(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 120
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_c

    int-to-long v14, v12

    .line 121
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 122
    :cond_c
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 123
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto :goto_2

    .line 124
    :pswitch_1f
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 125
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzq(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 126
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_d

    int-to-long v14, v12

    .line 127
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 128
    :cond_d
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 129
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto :goto_2

    .line 130
    :pswitch_20
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 131
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzx(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 132
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_e

    int-to-long v14, v12

    .line 133
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 134
    :cond_e
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 135
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    goto :goto_2

    .line 136
    :pswitch_21
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 137
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzit;->zzy(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 138
    iget-boolean v14, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v14, :cond_f

    int-to-long v14, v12

    .line 139
    invoke-virtual {v2, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 140
    :cond_f
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v12

    .line 141
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v13

    :goto_2
    invoke-static {v13, v12, v3, v11}, Le/d/c/a/a;->b(IIII)I

    move-result v11

    goto/16 :goto_4

    .line 142
    :pswitch_22
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzq(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 143
    :pswitch_23
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 144
    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzu(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 145
    :pswitch_24
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 146
    :pswitch_25
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 147
    :pswitch_26
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 148
    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzr(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 149
    :pswitch_27
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 150
    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzt(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 151
    :pswitch_28
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 152
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_3

    .line 153
    :pswitch_29
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v12

    .line 154
    invoke-static {v13, v3, v12}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v3

    goto/16 :goto_3

    .line 155
    :pswitch_2a
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_3

    .line 156
    :pswitch_2b
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzx(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 157
    :pswitch_2c
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 158
    :pswitch_2d
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 159
    :pswitch_2e
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 160
    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzs(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 161
    :pswitch_2f
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzp(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 162
    :pswitch_30
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzo(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 163
    :pswitch_31
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 164
    :pswitch_32
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzig;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v3, v9}, Lcom/google/android/gms/internal/vision/zzit;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 165
    :pswitch_33
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 166
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzic;

    .line 167
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v12

    .line 168
    invoke-static {v13, v3, v12}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v3

    goto/16 :goto_3

    .line 169
    :pswitch_34
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 170
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/google/android/gms/internal/vision/zzga;->zzf(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 171
    :pswitch_35
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 172
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzn(II)I

    move-result v3

    goto/16 :goto_3

    .line 173
    :pswitch_36
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 174
    invoke-static {v13, v7, v8}, Lcom/google/android/gms/internal/vision/zzga;->zzh(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 175
    :pswitch_37
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 176
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/vision/zzga;->zzp(II)I

    move-result v3

    goto/16 :goto_3

    .line 177
    :pswitch_38
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 178
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzq(II)I

    move-result v3

    goto/16 :goto_3

    .line 179
    :pswitch_39
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 180
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzm(II)I

    move-result v3

    goto/16 :goto_3

    .line 181
    :pswitch_3a
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 182
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzfh;

    .line 183
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzfh;)I

    move-result v3

    goto/16 :goto_3

    .line 184
    :pswitch_3b
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 185
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 186
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v12

    invoke-static {v13, v3, v12}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v3

    goto/16 :goto_3

    .line 187
    :pswitch_3c
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 188
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 189
    instance-of v12, v3, Lcom/google/android/gms/internal/vision/zzfh;

    if-eqz v12, :cond_10

    .line 190
    check-cast v3, Lcom/google/android/gms/internal/vision/zzfh;

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzfh;)I

    move-result v3

    goto/16 :goto_3

    .line 191
    :cond_10
    check-cast v3, Ljava/lang/String;

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzb(ILjava/lang/String;)I

    move-result v3

    goto :goto_3

    .line 192
    :pswitch_3d
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 193
    invoke-static {v13, v6}, Lcom/google/android/gms/internal/vision/zzga;->zzb(IZ)I

    move-result v3

    goto :goto_3

    .line 194
    :pswitch_3e
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 195
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/vision/zzga;->zzo(II)I

    move-result v3

    goto :goto_3

    .line 196
    :pswitch_3f
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 197
    invoke-static {v13, v7, v8}, Lcom/google/android/gms/internal/vision/zzga;->zzg(IJ)I

    move-result v3

    goto :goto_3

    .line 198
    :pswitch_40
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 199
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzk(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/vision/zzga;->zzl(II)I

    move-result v3

    goto :goto_3

    .line 200
    :pswitch_41
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 201
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/google/android/gms/internal/vision/zzga;->zze(IJ)I

    move-result v3

    goto :goto_3

    .line 202
    :pswitch_42
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 203
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/vision/zzjp;->zzl(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/google/android/gms/internal/vision/zzga;->zzd(IJ)I

    move-result v3

    goto :goto_3

    .line 204
    :pswitch_43
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 205
    invoke-static {v13, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzb(IF)I

    move-result v3

    goto :goto_3

    .line 206
    :pswitch_44
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    const-wide/16 v14, 0x0

    .line 207
    invoke-static {v13, v14, v15}, Lcom/google/android/gms/internal/vision/zzga;->zzb(ID)I

    move-result v3

    :goto_3
    add-int/2addr v11, v3

    :cond_11
    :goto_4
    add-int/lit8 v10, v10, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 208
    :cond_12
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v11, v1

    return v11

    .line 209
    :cond_13
    sget-object v2, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    move v4, v9

    move v7, v4

    move v8, v7

    .line 210
    :goto_5
    iget-object v10, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    array-length v10, v10

    if-ge v9, v10, :cond_2a

    .line 211
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v4

    .line 212
    iget-object v10, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v11, v10, v9

    const/high16 v12, 0xff00000

    and-int/2addr v12, v4

    ushr-int/lit8 v12, v12, 0x14

    const/16 v13, 0x11

    if-gt v12, v13, :cond_14

    add-int/lit8 v13, v9, 0x2

    .line 213
    aget v10, v10, v13

    and-int v13, v10, v5

    ushr-int/lit8 v14, v10, 0x14

    shl-int/2addr v6, v14

    if-eq v13, v3, :cond_16

    int-to-long v14, v13

    .line 214
    invoke-virtual {v2, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v3, v13

    goto :goto_7

    .line 215
    :cond_14
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_15

    sget-object v6, Lcom/google/android/gms/internal/vision/zzgn;->zzut:Lcom/google/android/gms/internal/vision/zzgn;

    .line 216
    invoke-virtual {v6}, Lcom/google/android/gms/internal/vision/zzgn;->id()I

    move-result v6

    if-lt v12, v6, :cond_15

    sget-object v6, Lcom/google/android/gms/internal/vision/zzgn;->zzvg:Lcom/google/android/gms/internal/vision/zzgn;

    .line 217
    invoke-virtual {v6}, Lcom/google/android/gms/internal/vision/zzgn;->id()I

    move-result v6

    if-gt v12, v6, :cond_15

    .line 218
    iget-object v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    add-int/lit8 v10, v9, 0x2

    aget v6, v6, v10

    and-int/2addr v6, v5

    goto :goto_6

    :cond_15
    const/4 v6, 0x0

    :goto_6
    move v10, v6

    const/4 v6, 0x0

    :cond_16
    :goto_7
    and-int/2addr v4, v5

    int-to-long v13, v4

    packed-switch v12, :pswitch_data_1

    goto/16 :goto_d

    .line 219
    :pswitch_45
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 220
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzic;

    .line 221
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v6

    .line 222
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v4

    goto/16 :goto_a

    .line 223
    :pswitch_46
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 224
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zzf(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 225
    :pswitch_47
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 226
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzn(II)I

    move-result v4

    goto/16 :goto_a

    .line 227
    :pswitch_48
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    const-wide/16 v12, 0x0

    .line 228
    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zzh(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 229
    :pswitch_49
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x0

    .line 230
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzp(II)I

    move-result v4

    goto/16 :goto_a

    .line 231
    :pswitch_4a
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 232
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzq(II)I

    move-result v4

    goto/16 :goto_a

    .line 233
    :pswitch_4b
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 234
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzm(II)I

    move-result v4

    goto/16 :goto_a

    .line 235
    :pswitch_4c
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 236
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzfh;

    .line 237
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzfh;)I

    move-result v4

    goto/16 :goto_a

    .line 238
    :pswitch_4d
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 239
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 240
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v6

    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v4

    goto/16 :goto_a

    .line 241
    :pswitch_4e
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 242
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 243
    instance-of v6, v4, Lcom/google/android/gms/internal/vision/zzfh;

    if-eqz v6, :cond_17

    .line 244
    check-cast v4, Lcom/google/android/gms/internal/vision/zzfh;

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzfh;)I

    move-result v4

    goto/16 :goto_a

    .line 245
    :cond_17
    check-cast v4, Ljava/lang/String;

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzb(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    .line 246
    :pswitch_4f
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    .line 247
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzb(IZ)I

    move-result v4

    goto/16 :goto_a

    .line 248
    :pswitch_50
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x0

    .line 249
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(II)I

    move-result v4

    goto/16 :goto_a

    .line 250
    :pswitch_51
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    const-wide/16 v12, 0x0

    .line 251
    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zzg(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 252
    :pswitch_52
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 253
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/zzig;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzl(II)I

    move-result v4

    goto/16 :goto_a

    .line 254
    :pswitch_53
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 255
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zze(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 256
    :pswitch_54
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 257
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/zzig;->zzi(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zzd(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 258
    :pswitch_55
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x0

    .line 259
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzb(IF)I

    move-result v4

    goto/16 :goto_a

    .line 260
    :pswitch_56
    invoke-direct {v0, v1, v11, v9}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_28

    const-wide/16 v12, 0x0

    .line 261
    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zzb(ID)I

    move-result v4

    goto/16 :goto_a

    .line 262
    :pswitch_57
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    .line 263
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/vision/zzig;->zzbn(I)Ljava/lang/Object;

    move-result-object v10

    .line 264
    invoke-interface {v4, v11, v6, v10}, Lcom/google/android/gms/internal/vision/zzhv;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_a

    .line 265
    :pswitch_58
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 266
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v6

    .line 267
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v4

    goto/16 :goto_a

    .line 268
    :pswitch_59
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 269
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzs(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 270
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_18

    int-to-long v12, v10

    .line 271
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 272
    :cond_18
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 273
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto/16 :goto_8

    .line 274
    :pswitch_5a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 275
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzw(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 276
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_19

    int-to-long v12, v10

    .line 277
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 278
    :cond_19
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 279
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto/16 :goto_8

    .line 280
    :pswitch_5b
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 281
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzy(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 282
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_1a

    int-to-long v12, v10

    .line 283
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 284
    :cond_1a
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 285
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto/16 :goto_8

    .line 286
    :pswitch_5c
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 287
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzx(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 288
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_1b

    int-to-long v12, v10

    .line 289
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 290
    :cond_1b
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 291
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto/16 :goto_8

    .line 292
    :pswitch_5d
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 293
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzt(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 294
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_1c

    int-to-long v12, v10

    .line 295
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 296
    :cond_1c
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 297
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto/16 :goto_8

    .line 298
    :pswitch_5e
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 299
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzv(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 300
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_1d

    int-to-long v12, v10

    .line 301
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 302
    :cond_1d
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 303
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto/16 :goto_8

    .line 304
    :pswitch_5f
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 305
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzz(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 306
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_1e

    int-to-long v12, v10

    .line 307
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 308
    :cond_1e
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 309
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto/16 :goto_8

    .line 310
    :pswitch_60
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 311
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzx(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 312
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_1f

    int-to-long v12, v10

    .line 313
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 314
    :cond_1f
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 315
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto/16 :goto_8

    .line 316
    :pswitch_61
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 317
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzy(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 318
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_20

    int-to-long v12, v10

    .line 319
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 320
    :cond_20
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 321
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto/16 :goto_8

    .line 322
    :pswitch_62
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 323
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzu(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 324
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_21

    int-to-long v12, v10

    .line 325
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 326
    :cond_21
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 327
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto/16 :goto_8

    .line 328
    :pswitch_63
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 329
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzr(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 330
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_22

    int-to-long v12, v10

    .line 331
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 332
    :cond_22
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 333
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto :goto_8

    .line 334
    :pswitch_64
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 335
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzq(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 336
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_23

    int-to-long v12, v10

    .line 337
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 338
    :cond_23
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 339
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto :goto_8

    .line 340
    :pswitch_65
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 341
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzx(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 342
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_24

    int-to-long v12, v10

    .line 343
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 344
    :cond_24
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 345
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    goto :goto_8

    .line 346
    :pswitch_66
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 347
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzit;->zzy(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 348
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzc:Z

    if-eqz v6, :cond_25

    int-to-long v12, v10

    .line 349
    invoke-virtual {v2, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 350
    :cond_25
    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v6

    .line 351
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v10

    :goto_8
    invoke-static {v10, v6, v4, v7}, Le/d/c/a/a;->b(IIII)I

    move-result v4

    move v7, v4

    goto/16 :goto_d

    .line 352
    :pswitch_67
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 353
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_68
    const/4 v6, 0x0

    .line 354
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 355
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_69
    const/4 v6, 0x0

    .line 356
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 357
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6a
    const/4 v6, 0x0

    .line 358
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 359
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6b
    const/4 v6, 0x0

    .line 360
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 361
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzr(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6c
    const/4 v4, 0x0

    .line 362
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 363
    invoke-static {v11, v6, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzt(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    .line 364
    :pswitch_6d
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 365
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_a

    .line 366
    :pswitch_6e
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v6

    .line 367
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v4

    goto/16 :goto_a

    .line 368
    :pswitch_6f
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_a

    .line 369
    :pswitch_70
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 370
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzx(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_71
    const/4 v6, 0x0

    .line 371
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 372
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_72
    const/4 v6, 0x0

    .line 373
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 374
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_73
    const/4 v6, 0x0

    .line 375
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 376
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_74
    const/4 v6, 0x0

    .line 377
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 378
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzp(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_75
    const/4 v6, 0x0

    .line 379
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 380
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzo(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_76
    const/4 v6, 0x0

    .line 381
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 382
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzv(ILjava/util/List;Z)I

    move-result v4

    :goto_9
    add-int/2addr v7, v4

    const/4 v4, 0x1

    goto/16 :goto_f

    :pswitch_77
    const/4 v4, 0x0

    .line 383
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 384
    invoke-static {v11, v6, v4}, Lcom/google/android/gms/internal/vision/zzit;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_78
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    .line 385
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzic;

    .line 386
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v6

    .line 387
    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_79
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    .line 388
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zzf(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_7a
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    .line 389
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzn(II)I

    move-result v4

    goto/16 :goto_a

    :pswitch_7b
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    const-wide/16 v12, 0x0

    .line 390
    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zzh(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7c
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    const/4 v4, 0x0

    .line 391
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzp(II)I

    move-result v4

    goto :goto_a

    :pswitch_7d
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    .line 392
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzq(II)I

    move-result v4

    goto :goto_a

    :pswitch_7e
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    .line 393
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzm(II)I

    move-result v4

    goto :goto_a

    :pswitch_7f
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    .line 394
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzfh;

    .line 395
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzfh;)I

    move-result v4

    goto :goto_a

    :pswitch_80
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    .line 396
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 397
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v6

    invoke-static {v11, v4, v6}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result v4

    goto :goto_a

    :pswitch_81
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    .line 398
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 399
    instance-of v6, v4, Lcom/google/android/gms/internal/vision/zzfh;

    if-eqz v6, :cond_26

    .line 400
    check-cast v4, Lcom/google/android/gms/internal/vision/zzfh;

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzfh;)I

    move-result v4

    goto :goto_a

    .line 401
    :cond_26
    check-cast v4, Ljava/lang/String;

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzb(ILjava/lang/String;)I

    move-result v4

    :goto_a
    add-int/2addr v7, v4

    goto/16 :goto_d

    :pswitch_82
    and-int v4, v8, v6

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    .line 402
    invoke-static {v11, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzb(IZ)I

    move-result v6

    add-int/2addr v7, v6

    goto :goto_e

    :pswitch_83
    const/4 v4, 0x1

    and-int/2addr v6, v8

    if-eqz v6, :cond_29

    const/4 v6, 0x0

    .line 403
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/vision/zzga;->zzo(II)I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_f

    :pswitch_84
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int/2addr v6, v8

    const-wide/16 v12, 0x0

    if-eqz v6, :cond_27

    .line 404
    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zzg(IJ)I

    move-result v6

    goto :goto_b

    :pswitch_85
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int/2addr v6, v8

    if-eqz v6, :cond_27

    .line 405
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v11, v6}, Lcom/google/android/gms/internal/vision/zzga;->zzl(II)I

    move-result v6

    goto :goto_b

    :pswitch_86
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int/2addr v6, v8

    if-eqz v6, :cond_27

    .line 406
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zze(IJ)I

    move-result v6

    goto :goto_b

    :pswitch_87
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int/2addr v6, v8

    if-eqz v6, :cond_27

    .line 407
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zzd(IJ)I

    move-result v6

    :goto_b
    add-int/2addr v7, v6

    goto :goto_c

    :pswitch_88
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int/2addr v6, v8

    if-eqz v6, :cond_27

    const/4 v6, 0x0

    .line 408
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/vision/zzga;->zzb(IF)I

    move-result v6

    add-int/2addr v7, v6

    goto :goto_c

    :pswitch_89
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int/2addr v6, v8

    if-eqz v6, :cond_27

    const-wide/16 v12, 0x0

    .line 409
    invoke-static {v11, v12, v13}, Lcom/google/android/gms/internal/vision/zzga;->zzb(ID)I

    move-result v6

    add-int/2addr v6, v7

    move v7, v6

    :cond_27
    :goto_c
    move v6, v4

    move v4, v10

    goto :goto_10

    :cond_28
    :goto_d
    const/4 v4, 0x1

    :cond_29
    :goto_e
    const/4 v6, 0x0

    :goto_f
    move/from16 v17, v6

    move v6, v4

    move/from16 v4, v17

    :goto_10
    add-int/lit8 v9, v9, 0x3

    goto/16 :goto_5

    .line 410
    :cond_2a
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzi:Lcom/google/android/gms/internal/vision/zzjj;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/zzig;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v7, v2

    .line 411
    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-eqz v2, :cond_2d

    .line 412
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzgf;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object v1

    move v2, v4

    .line 413
    :goto_11
    iget-object v3, v1, Lcom/google/android/gms/internal/vision/zzgi;->zztb:Lcom/google/android/gms/internal/vision/zziw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zziw;->zzhx()I

    move-result v3

    if-ge v4, v3, :cond_2b

    .line 414
    iget-object v3, v1, Lcom/google/android/gms/internal/vision/zzgi;->zztb:Lcom/google/android/gms/internal/vision/zziw;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/vision/zziw;->zzbu(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 415
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/zzgk;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/vision/zzgi;->zzc(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 416
    :cond_2b
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzgi;->zztb:Lcom/google/android/gms/internal/vision/zziw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zziw;->zzhy()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzgk;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/zzgi;->zzc(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_12

    :cond_2c
    add-int/2addr v7, v2

    :cond_2d
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zzt(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v2

    .line 1
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/vision/zzig;->zzze:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_e

    .line 2
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzd:[I

    aget v4, v4, v2

    .line 3
    iget-object v6, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    aget v6, v6, v4

    .line 4
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/zzig;->zzbp(I)I

    move-result v7

    .line 5
    iget-boolean v8, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzb:Z

    const v9, 0xfffff

    if-nez v8, :cond_0

    .line 6
    iget-object v8, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyu:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v1, :cond_1

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/vision/zzig;->zzyt:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v1, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v1, v10

    goto :goto_1

    :cond_0
    move v8, v0

    :cond_1
    :goto_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_2

    move v10, v5

    goto :goto_2

    :cond_2
    move v10, v0

    :goto_2
    if-eqz v10, :cond_3

    .line 8
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_3

    return v0

    :cond_3
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_c

    const/16 v11, 0x11

    if-eq v10, v11, :cond_c

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_9

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_8

    const/16 v8, 0x44

    if-eq v10, v8, :cond_8

    const/16 v6, 0x31

    if-eq v10, v6, :cond_9

    const/16 v6, 0x32

    if-eq v10, v6, :cond_4

    goto/16 :goto_5

    .line 9
    :cond_4
    iget-object v6, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    and-int/2addr v7, v9

    int-to-long v7, v7

    .line 10
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/vision/zzhv;->zzl(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 11
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 12
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/zzig;->zzbn(I)Ljava/lang/Object;

    move-result-object v4

    .line 13
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzk:Lcom/google/android/gms/internal/vision/zzhv;

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/vision/zzhv;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v4

    .line 14
    iget-object v4, v4, Lcom/google/android/gms/internal/vision/zzht;->zzyo:Lcom/google/android/gms/internal/vision/zzka;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/vision/zzka;->zzip()Lcom/google/android/gms/internal/vision/zzkd;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/vision/zzkd;->zzacp:Lcom/google/android/gms/internal/vision/zzkd;

    if-ne v4, v7, :cond_7

    const/4 v4, 0x0

    .line 15
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_6

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v4

    .line 17
    :cond_6
    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/vision/zzir;->zzt(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v0

    :cond_7
    if-nez v5, :cond_d

    return v0

    .line 18
    :cond_8
    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 19
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzir;)Z

    move-result v4

    if-nez v4, :cond_d

    return v0

    :cond_9
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 20
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzjp;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 21
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 22
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v4

    move v7, v0

    .line 23
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 24
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 25
    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/vision/zzir;->zzt(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    move v5, v0

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    if-nez v5, :cond_d

    return v0

    .line 26
    :cond_c
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 27
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/zzig;->zzbm(I)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzir;)Z

    move-result v4

    if-nez v4, :cond_d

    return v0

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 28
    :cond_e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzyz:Z

    if-eqz v1, :cond_f

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzzj:Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/vision/zzgf;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzgi;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_f

    return v0

    :cond_f
    return v5
.end method
