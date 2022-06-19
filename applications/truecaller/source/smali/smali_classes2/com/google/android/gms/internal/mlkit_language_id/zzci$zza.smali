.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_language_id/zzci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_language_id/zzeo<",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzgb;"
    }
.end annotation


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzex<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzdd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;

.field private static volatile zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzgj<",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzeu;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzcj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzex;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;-><init>()V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;->zze:Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;

    .line 4
    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zzk()Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzeu;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;->zze:Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id/zzch;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;->zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;->zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zza;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;->zze:Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;->zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzgj;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;->zze:Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzdd;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzev;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;->zze:Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzfz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza$zza;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzch;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzci$zza;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
