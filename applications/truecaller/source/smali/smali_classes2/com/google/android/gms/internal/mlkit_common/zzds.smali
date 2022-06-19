.class public final Lcom/google/android/gms/internal/mlkit_common/zzds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_common/zzds$zza;
    }
.end annotation


# static fields
.field public static final zza:Le/m/d/m/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/o<",
            "*>;"
        }
    .end annotation
.end field

.field private static zzb:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zzk:Z = true

.field private static zzl:Z = true


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/mlkit_common/zzds$zza;

.field private final zzf:Le/m/h/a/d/l;

.field private final zzg:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzh:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/mlkit_common/zzbg;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/mlkit_common/zzbg;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzds;

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

    const-class v1, Le/m/h/a/d/l;

    .line 5
    new-instance v2, Le/m/d/m/x;

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzds$zza;

    .line 7
    new-instance v2, Le/m/d/m/x;

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdv;->zza:Le/m/d/m/r;

    .line 9
    invoke-virtual {v0, v1}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 10
    invoke-virtual {v0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zza:Le/m/d/m/o;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Le/m/h/a/d/l;Lcom/google/android/gms/internal/mlkit_common/zzds$zza;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzi:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzj:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzc:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Le/m/h/a/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzd:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzf:Le/m/h/a/d/l;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zze:Lcom/google/android/gms/internal/mlkit_common/zzds$zza;

    .line 8
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzdr;->zza:Ljava/util/concurrent/Callable;

    .line 9
    invoke-virtual {p1, p3}, Le/m/h/a/d/f;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 10
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_common/zzdu;->zza(Le/m/h/a/d/l;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/m/h/a/d/f;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzh:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static final synthetic zza(Le/m/d/m/p;)Lcom/google/android/gms/internal/mlkit_common/zzds;
    .locals 4

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzds;

    const-class v1, Landroid/content/Context;

    .line 6
    invoke-interface {p0, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Le/m/h/a/d/l;

    .line 7
    invoke-interface {p0, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/h/a/d/l;

    const-class v3, Lcom/google/android/gms/internal/mlkit_common/zzds$zza;

    .line 8
    invoke-interface {p0, v3}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_common/zzds$zza;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_common/zzds;-><init>(Landroid/content/Context;Le/m/h/a/d/l;Lcom/google/android/gms/internal/mlkit_common/zzds$zza;)V

    return-object v0
.end method

.method public static final zza()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->c:Lcom/google/android/gms/common/internal/LibraryVersion;

    const-string v1, "common"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized zzb()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzds;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzb:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->k0(Landroid/content/res/Configuration;)Ln3/k/e/d;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ln3/k/e/d;->c()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzb:Ljava/util/List;

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1}, Ln3/k/e/d;->c()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    invoke-virtual {v1, v2}, Ln3/k/e/d;->b(I)Ljava/util/Locale;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzb:Ljava/util/List;

    .line 8
    sget-object v5, Le/m/h/a/d/c;->a:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 9
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzb:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;Lcom/google/android/gms/internal/mlkit_common/zzbg;)V
    .locals 2

    .line 3
    sget-object v0, Le/m/h/a/d/f;->b:Ljava/lang/Object;

    sget-object v0, Le/m/h/a/d/f$a;->a:Le/m/h/a/d/f$a;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzdt;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzdt;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;Lcom/google/android/gms/internal/mlkit_common/zzbg;)V

    .line 4
    invoke-virtual {v0, v1}, Le/m/h/a/d/f$a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;Lcom/google/android/gms/internal/mlkit_common/zzbg;)V
    .locals 3

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;->zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NA"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 15
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzc:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzd:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzb()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object v0

    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zzb(Z)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_2
    sget-object v1, Lcom/google/android/gms/common/internal/LibraryVersion;->c:Lcom/google/android/gms/common/internal/LibraryVersion;

    const-string v2, "common"

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/LibraryVersion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object v0

    .line 26
    sget-boolean v1, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzl:Z

    if-eqz v1, :cond_4

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzh:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzh:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zzf:Le/m/h/a/d/l;

    invoke-virtual {v1}, Le/m/h/a/d/l;->d()Ljava/lang/String;

    move-result-object v1

    .line 30
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    .line 31
    :cond_4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzbg;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzds;->zze:Lcom/google/android/gms/internal/mlkit_common/zzds$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzds$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;)V

    return-void
.end method
