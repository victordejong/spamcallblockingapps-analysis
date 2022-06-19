.class public final enum Lcom/google/android/gms/internal/vision/zzes;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzgw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzes;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzgw;"
    }
.end annotation


# static fields
.field private static final zzgy:Lcom/google/android/gms/internal/vision/zzgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgv<",
            "Lcom/google/android/gms/internal/vision/zzes;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzqv:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzqw:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzqx:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzqy:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzqz:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzra:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzrb:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzrc:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzrd:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzre:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzrf:Lcom/google/android/gms/internal/vision/zzes;

.field private static final enum zzrg:Lcom/google/android/gms/internal/vision/zzes;

.field private static final synthetic zzrh:[Lcom/google/android/gms/internal/vision/zzes;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzes;

    const-string v1, "CONTACT_INFO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzes;->zzqv:Lcom/google/android/gms/internal/vision/zzes;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/vision/zzes;

    const-string v4, "EMAIL"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/vision/zzes;->zzqw:Lcom/google/android/gms/internal/vision/zzes;

    .line 3
    new-instance v4, Lcom/google/android/gms/internal/vision/zzes;

    const-string v6, "ISBN"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/vision/zzes;->zzqx:Lcom/google/android/gms/internal/vision/zzes;

    .line 4
    new-instance v6, Lcom/google/android/gms/internal/vision/zzes;

    const-string v8, "PHONE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/vision/zzes;->zzqy:Lcom/google/android/gms/internal/vision/zzes;

    .line 5
    new-instance v8, Lcom/google/android/gms/internal/vision/zzes;

    const-string v10, "PRODUCT"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/vision/zzes;->zzqz:Lcom/google/android/gms/internal/vision/zzes;

    .line 6
    new-instance v10, Lcom/google/android/gms/internal/vision/zzes;

    const-string v12, "SMS"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/vision/zzes;->zzra:Lcom/google/android/gms/internal/vision/zzes;

    .line 7
    new-instance v12, Lcom/google/android/gms/internal/vision/zzes;

    const-string v14, "TEXT"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/vision/zzes;->zzrb:Lcom/google/android/gms/internal/vision/zzes;

    .line 8
    new-instance v14, Lcom/google/android/gms/internal/vision/zzes;

    const-string v13, "URL"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/vision/zzes;->zzrc:Lcom/google/android/gms/internal/vision/zzes;

    .line 9
    new-instance v13, Lcom/google/android/gms/internal/vision/zzes;

    const-string v15, "WIFI"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/vision/zzes;->zzrd:Lcom/google/android/gms/internal/vision/zzes;

    .line 10
    new-instance v15, Lcom/google/android/gms/internal/vision/zzes;

    const-string v11, "GEO"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/vision/zzes;->zzre:Lcom/google/android/gms/internal/vision/zzes;

    .line 11
    new-instance v11, Lcom/google/android/gms/internal/vision/zzes;

    const-string v9, "CALENDAR_EVENT"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/vision/zzes;->zzrf:Lcom/google/android/gms/internal/vision/zzes;

    .line 12
    new-instance v9, Lcom/google/android/gms/internal/vision/zzes;

    const-string v7, "DRIVER_LICENSE"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lcom/google/android/gms/internal/vision/zzes;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/vision/zzes;->zzrg:Lcom/google/android/gms/internal/vision/zzes;

    new-array v3, v3, [Lcom/google/android/gms/internal/vision/zzes;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    aput-object v9, v3, v5

    .line 13
    sput-object v3, Lcom/google/android/gms/internal/vision/zzes;->zzrh:[Lcom/google/android/gms/internal/vision/zzes;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/vision/zzer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzer;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzes;->zzgy:Lcom/google/android/gms/internal/vision/zzgv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzes;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzes;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzes;->zzrh:[Lcom/google/android/gms/internal/vision/zzes;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzes;

    return-object v0
.end method

.method public static zzac(I)Lcom/google/android/gms/internal/vision/zzes;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzrg:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzrf:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzre:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzrd:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzrc:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzrb:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzra:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzqz:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzqy:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzqx:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzqw:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/vision/zzes;->zzqv:Lcom/google/android/gms/internal/vision/zzes;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static zzah()Lcom/google/android/gms/internal/vision/zzgy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzeu;->zzhb:Lcom/google/android/gms/internal/vision/zzgy;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/google/android/gms/internal/vision/zzes;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzes;->value:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzes;->value:I

    return v0
.end method
