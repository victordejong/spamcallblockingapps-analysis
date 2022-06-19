.class public final Lcom/google/android/gms/measurement/internal/zzfr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/l/a/x0;


# static fields
.field public static volatile H:Lcom/google/android/gms/measurement/internal/zzfr;


# instance fields
.field public volatile A:Ljava/lang/Boolean;

.field public B:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public C:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public volatile D:Z

.field public E:I

.field public final F:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final G:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lcom/google/android/gms/measurement/internal/zzaa;

.field public final g:Lcom/google/android/gms/measurement/internal/zzaf;

.field public final h:Le/m/a/f/l/a/u;

.field public final i:Lcom/google/android/gms/measurement/internal/zzeh;

.field public final j:Lcom/google/android/gms/measurement/internal/zzfo;

.field public final k:Lcom/google/android/gms/measurement/internal/zzka;

.field public final l:Lcom/google/android/gms/measurement/internal/zzkw;

.field public final m:Lcom/google/android/gms/measurement/internal/zzec;

.field public final n:Lcom/google/android/gms/common/util/Clock;

.field public final o:Lcom/google/android/gms/measurement/internal/zzik;

.field public final p:Lcom/google/android/gms/measurement/internal/zzhw;

.field public final q:Lcom/google/android/gms/measurement/internal/zzd;

.field public final r:Lcom/google/android/gms/measurement/internal/zzia;

.field public final s:Ljava/lang/String;

.field public t:Lcom/google/android/gms/measurement/internal/zzea;

.field public u:Lcom/google/android/gms/measurement/internal/zzjk;

.field public v:Lcom/google/android/gms/measurement/internal/zzao;

.field public w:Lcom/google/android/gms/measurement/internal/zzdy;

.field public x:Z

.field public y:Ljava/lang/Boolean;

.field public z:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgu;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->x:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgu;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    sput-object v2, Ln3/g0/y;->a:Lcom/google/android/gms/measurement/internal/zzaa;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgu;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgu;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgu;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzgu;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->e:Z

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgu;->e:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->A:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgu;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->s:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->D:Z

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzgu;->g:Lcom/google/android/gms/internal/measurement/zzcl;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 5
    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfr;->B:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    .line 6
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->C:Ljava/lang/Boolean;

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhu;->zze(Landroid/content/Context;)V

    .line 10
    sget-object v3, Lcom/google/android/gms/common/util/DefaultClock;->a:Lcom/google/android/gms/common/util/DefaultClock;

    .line 11
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzgu;->i:Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 15
    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->G:J

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaf;

    .line 16
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 17
    new-instance v3, Le/m/a/f/l/a/u;

    invoke-direct {v3, p0}, Le/m/a/f/l/a/u;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 18
    invoke-virtual {v3}, Le/m/a/f/l/a/w0;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->h:Le/m/a/f/l/a/u;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzeh;

    .line 19
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzeh;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 20
    invoke-virtual {v3}, Le/m/a/f/l/a/w0;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->i:Lcom/google/android/gms/measurement/internal/zzeh;

    .line 21
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 22
    invoke-virtual {v3}, Le/m/a/f/l/a/w0;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->l:Lcom/google/android/gms/measurement/internal/zzkw;

    new-instance v3, Le/m/a/f/l/a/y0;

    .line 23
    invoke-direct {v3, p0}, Le/m/a/f/l/a/y0;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 24
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzec;

    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/zzec;-><init>(Lcom/google/android/gms/measurement/internal/zzeb;)V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzd;

    .line 25
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzd;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->q:Lcom/google/android/gms/measurement/internal/zzd;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzik;

    .line 26
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzik;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 27
    invoke-virtual {v3}, Le/m/a/f/l/a/w;->f()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->o:Lcom/google/android/gms/measurement/internal/zzik;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzhw;

    .line 28
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzhw;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 29
    invoke-virtual {v3}, Le/m/a/f/l/a/w;->f()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->p:Lcom/google/android/gms/measurement/internal/zzhw;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzka;

    .line 30
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzka;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 31
    invoke-virtual {v3}, Le/m/a/f/l/a/w;->f()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->k:Lcom/google/android/gms/measurement/internal/zzka;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzia;

    .line 32
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzia;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 33
    invoke-virtual {v3}, Le/m/a/f/l/a/w0;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->r:Lcom/google/android/gms/measurement/internal/zzia;

    .line 34
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzfo;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 35
    invoke-virtual {v3}, Le/m/a/f/l/a/w0;->h()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->j:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzgu;->g:Lcom/google/android/gms/internal/measurement/zzcl;

    if-eqz v4, :cond_3

    iget-wide v4, v4, Lcom/google/android/gms/internal/measurement/zzcl;->zzb:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 36
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v1

    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    iget-object v2, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzhw;->c:Le/m/a/f/l/a/v1;

    if-nez v4, :cond_4

    .line 40
    new-instance v4, Le/m/a/f/l/a/v1;

    invoke-direct {v4, v1}, Le/m/a/f/l/a/v1;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;)V

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zzhw;->c:Le/m/a/f/l/a/v1;

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhw;->c:Le/m/a/f/l/a/v1;

    .line 41
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhw;->c:Le/m/a/f/l/a/v1;

    .line 42
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 44
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Registered activity lifecycle callback"

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 47
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Application context is not an Application"

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 49
    :cond_6
    :goto_2
    new-instance v0, Le/m/a/f/l/a/d0;

    invoke-direct {v0, p0, p1}, Le/m/a/f/l/a/d0;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzgu;)V

    .line 50
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final f()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final g(Le/m/a/f/l/a/w;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    iget-boolean v0, p0, Le/m/a/f/l/a/w;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final h(Le/m/a/f/l/a/w0;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/w0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 12

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcl;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzd:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/zzcl;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    const-string v0, "null reference"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null reference"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfr;->H:Lcom/google/android/gms/measurement/internal/zzfr;

    if-nez v0, :cond_3

    const-class v0, Lcom/google/android/gms/measurement/internal/zzfr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfr;->H:Lcom/google/android/gms/measurement/internal/zzfr;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgu;

    .line 6
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzfr;

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzgu;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzfr;->H:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 9
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    .line 10
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfr;->H:Lcom/google/android/gms/measurement/internal/zzfr;

    const-string p2, "null reference"

    .line 11
    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfr;->H:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->A:Ljava/lang/Boolean;

    .line 15
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfr;->H:Lcom/google/android/gms/measurement/internal/zzfr;

    const-string p1, "null reference"

    .line 16
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfr;->H:Lcom/google/android/gms/measurement/internal/zzfr;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->j:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->h(Le/m/a/f/l/a/w0;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->j:Lcom/google/android/gms/measurement/internal/zzfo;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->i()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->x:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->z:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->z:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->z:J

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->M(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->v()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkw;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkw;->T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->y:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->m()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzdy;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->m()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Le/m/a/f/l/a/w;->e()V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzdy;->l:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkw;->F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->m()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Le/m/a/f/l/a/w;->e()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdy;->l:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 19
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->y:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->y:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    return v0

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->D:Z

    if-nez v0, :cond_3

    const/16 v0, 0x8

    return v0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    invoke-virtual {v0}, Le/m/a/f/l/a/u;->m()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x3

    return v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    const-string v2, "firebase_analytics_collection_enabled"

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x4

    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x5

    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->A:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x7

    return v0

    :cond_b
    return v1
.end method

.method public final j()Lcom/google/android/gms/measurement/internal/zzd;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->q:Lcom/google/android/gms/measurement/internal/zzd;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/measurement/internal/zzao;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->v:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->h(Le/m/a/f/l/a/w0;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->v:Lcom/google/android/gms/measurement/internal/zzao;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/measurement/internal/zzdy;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->w:Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->g(Le/m/a/f/l/a/w;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->w:Lcom/google/android/gms/measurement/internal/zzdy;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/measurement/internal/zzea;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->t:Lcom/google/android/gms/measurement/internal/zzea;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->g(Le/m/a/f/l/a/w;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->t:Lcom/google/android/gms/measurement/internal/zzea;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/measurement/internal/zzec;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    return-object v0
.end method

.method public final p()Le/m/a/f/l/a/u;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->h:Le/m/a/f/l/a/u;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()Lcom/google/android/gms/measurement/internal/zzhw;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->p:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->g(Le/m/a/f/l/a/w;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->p:Lcom/google/android/gms/measurement/internal/zzhw;

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/measurement/internal/zzia;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->r:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->h(Le/m/a/f/l/a/w0;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->r:Lcom/google/android/gms/measurement/internal/zzia;

    return-object v0
.end method

.method public final t()Lcom/google/android/gms/measurement/internal/zzik;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->o:Lcom/google/android/gms/measurement/internal/zzik;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->g(Le/m/a/f/l/a/w;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->o:Lcom/google/android/gms/measurement/internal/zzik;

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/measurement/internal/zzjk;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->u:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->g(Le/m/a/f/l/a/w;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->u:Lcom/google/android/gms/measurement/internal/zzjk;

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/measurement/internal/zzka;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->k:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->g(Le/m/a/f/l/a/w;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->k:Lcom/google/android/gms/measurement/internal/zzka;

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/measurement/internal/zzkw;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->l:Lcom/google/android/gms/measurement/internal/zzkw;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzau()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final zzav()Lcom/google/android/gms/common/util/Clock;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final zzaw()Lcom/google/android/gms/measurement/internal/zzaa;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    return-object v0
.end method

.method public final zzay()Lcom/google/android/gms/measurement/internal/zzeh;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->i:Lcom/google/android/gms/measurement/internal/zzeh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->h(Le/m/a/f/l/a/w0;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->i:Lcom/google/android/gms/measurement/internal/zzeh;

    return-object v0
.end method
