.class public final Lcom/google/android/gms/internal/firebase_messaging/zzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/h;


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Le/m/d/r/d;

.field private final zzd:Lcom/google/android/gms/internal/firebase_messaging/zzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_messaging/zzu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzd:Lcom/google/android/gms/internal/firebase_messaging/zzu;

    return-void
.end method

.method private final zzb()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zza:Z

    return-void

    :cond_0
    new-instance v0, Le/m/d/r/c;

    const-string v1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {v0, v1}, Le/m/d/r/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(D)Le/m/d/r/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzd:Lcom/google/android/gms/internal/firebase_messaging/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzc:Le/m/d/r/d;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Z

    .line 2
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzu;->zza(Le/m/d/r/d;DZ)Le/m/d/r/f;

    return-object p0
.end method

.method public final add(F)Le/m/d/r/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzd:Lcom/google/android/gms/internal/firebase_messaging/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzc:Le/m/d/r/d;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Z

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzu;->zzb(Le/m/d/r/d;FZ)Le/m/d/r/f;

    return-object p0
.end method

.method public final add(I)Le/m/d/r/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzd:Lcom/google/android/gms/internal/firebase_messaging/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzc:Le/m/d/r/d;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Z

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzu;->zzd(Le/m/d/r/d;IZ)Lcom/google/android/gms/internal/firebase_messaging/zzu;

    return-object p0
.end method

.method public final add(J)Le/m/d/r/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzd:Lcom/google/android/gms/internal/firebase_messaging/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzc:Le/m/d/r/d;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Z

    .line 8
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzu;->zze(Le/m/d/r/d;JZ)Lcom/google/android/gms/internal/firebase_messaging/zzu;

    return-object p0
.end method

.method public final add(Ljava/lang/String;)Le/m/d/r/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzd:Lcom/google/android/gms/internal/firebase_messaging/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzc:Le/m/d/r/d;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Z

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzu;->zzc(Le/m/d/r/d;Ljava/lang/Object;Z)Le/m/d/r/f;

    return-object p0
.end method

.method public final add(Z)Le/m/d/r/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzd:Lcom/google/android/gms/internal/firebase_messaging/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzc:Le/m/d/r/d;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Z

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzu;->zzd(Le/m/d/r/d;IZ)Lcom/google/android/gms/internal/firebase_messaging/zzu;

    return-object p0
.end method

.method public final add([B)Le/m/d/r/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzd:Lcom/google/android/gms/internal/firebase_messaging/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzc:Le/m/d/r/d;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Z

    .line 14
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzu;->zzc(Le/m/d/r/d;Ljava/lang/Object;Z)Le/m/d/r/f;

    return-object p0
.end method

.method public final zza(Le/m/d/r/d;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zza:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzc:Le/m/d/r/d;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->zzb:Z

    return-void
.end method
