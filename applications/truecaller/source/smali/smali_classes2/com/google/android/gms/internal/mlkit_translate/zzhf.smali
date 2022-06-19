.class public Lcom/google/android/gms/internal/mlkit_translate/zzhf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Le/m/d/m/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/o<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhb;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhn;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

.field private zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;

    .line 2
    invoke-static {v0}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 3
    new-instance v2, Le/m/d/m/x;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;

    .line 5
    new-instance v2, Le/m/d/m/x;

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    .line 7
    new-instance v2, Le/m/d/m/x;

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzhi;->zza:Le/m/d/m/r;

    .line 9
    invoke-virtual {v0, v1}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 10
    invoke-virtual {v0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zza:Le/m/d/m/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;Lcom/google/android/gms/internal/mlkit_translate/zzhg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/mlkit_translate/zzhn;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhn;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhn;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzhb;

    invoke-direct {p1, p3, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhb;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhg;Lcom/google/android/gms/internal/mlkit_translate/zzhk;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhb;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhn;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/mlkit_translate/zzhc;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzhh;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhc;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhb;

    .line 10
    new-instance v4, Lcom/google/android/gms/internal/mlkit_translate/zzhe;

    invoke-direct {v4, v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhe;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhb;Lcom/google/android/gms/internal/mlkit_translate/zzhc;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 11
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_translate/zzil;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzim;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    :cond_1
    if-nez v2, :cond_2

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 16
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzhn;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhn;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhp;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    return-void

    :catchall_0
    move-exception v2

    .line 22
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 24
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 27
    throw v1
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_translate/zzhc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzhc;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zze()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza()V

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhb;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzhk;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhk;->zzc(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 12
    throw v1

    .line 13
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzhp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhp;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
