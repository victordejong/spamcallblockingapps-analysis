.class public final Le/m/a/f/l/a/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Lcom/google/android/gms/internal/measurement/zzgd;

.field public d:Ljava/util/BitSet;

.field public e:Ljava/util/BitSet;

.field public f:Ljava/util/Map;

.field public g:Ljava/util/Map;

.field public final synthetic h:Le/m/a/f/l/a/j4;


# direct methods
.method public synthetic constructor <init>(Le/m/a/f/l/a/j4;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/f/l/a/e4;->h:Le/m/a/f/l/a/j4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/m/a/f/l/a/e4;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/m/a/f/l/a/e4;->b:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Le/m/a/f/l/a/e4;->d:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    .line 2
    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Le/m/a/f/l/a/e4;->e:Ljava/util/BitSet;

    .line 3
    new-instance p1, Ln3/g/a;

    invoke-direct {p1}, Ln3/g/a;-><init>()V

    iput-object p1, p0, Le/m/a/f/l/a/e4;->f:Ljava/util/Map;

    new-instance p1, Ln3/g/a;

    .line 4
    invoke-direct {p1}, Ln3/g/a;-><init>()V

    iput-object p1, p0, Le/m/a/f/l/a/e4;->g:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Le/m/a/f/l/a/j4;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgd;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 5
    iput-object p1, p0, Le/m/a/f/l/a/e4;->h:Le/m/a/f/l/a/j4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/m/a/f/l/a/e4;->a:Ljava/lang/String;

    iput-object p4, p0, Le/m/a/f/l/a/e4;->d:Ljava/util/BitSet;

    iput-object p5, p0, Le/m/a/f/l/a/e4;->e:Ljava/util/BitSet;

    iput-object p6, p0, Le/m/a/f/l/a/e4;->f:Ljava/util/Map;

    new-instance p1, Ln3/g/a;

    invoke-direct {p1}, Ln3/g/a;-><init>()V

    iput-object p1, p0, Le/m/a/f/l/a/e4;->g:Ljava/util/Map;

    .line 6
    move-object p1, p7

    check-cast p1, Ln3/g/a;

    invoke-virtual {p1}, Ln3/g/a;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ln3/g/g$c;

    invoke-virtual {p1}, Ln3/g/g$c;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object p2, p1

    check-cast p2, Ln3/g/g$a;

    invoke-virtual {p2}, Ln3/g/g$a;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p4, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    move-object p5, p7

    check-cast p5, Ln3/g/h;

    invoke-virtual {p5, p2}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Le/m/a/f/l/a/e4;->g:Ljava/util/Map;

    .line 9
    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Le/m/a/f/l/a/e4;->b:Z

    iput-object p3, p0, Le/m/a/f/l/a/e4;->c:Lcom/google/android/gms/internal/measurement/zzgd;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/zzfk;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfk;->zzb()Lcom/google/android/gms/internal/measurement/zzfj;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zza(I)Lcom/google/android/gms/internal/measurement/zzfj;

    iget-boolean p1, p0, Le/m/a/f/l/a/e4;->b:Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzfj;

    iget-object p1, p0, Le/m/a/f/l/a/e4;->c:Lcom/google/android/gms/internal/measurement/zzgd;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzd(Lcom/google/android/gms/internal/measurement/zzgd;)Lcom/google/android/gms/internal/measurement/zzfj;

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzf()Lcom/google/android/gms/internal/measurement/zzgc;

    move-result-object p1

    iget-object v1, p0, Le/m/a/f/l/a/e4;->d:Ljava/util/BitSet;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->B(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzgc;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v1, p0, Le/m/a/f/l/a/e4;->e:Ljava/util/BitSet;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->B(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzgc;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v1, p0, Le/m/a/f/l/a/e4;->f:Ljava/util/Map;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 8
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Le/m/a/f/l/a/e4;->f:Ljava/util/Map;

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Le/m/a/f/l/a/e4;->f:Ljava/util/Map;

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfm;->zzc()Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzfl;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfl;

    .line 14
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfl;->zza(J)Lcom/google/android/gms/internal/measurement/zzfl;

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfm;

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzgc;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_4
    iget-object v1, p0, Le/m/a/f/l/a/e4;->g:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 19
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Le/m/a/f/l/a/e4;->g:Ljava/util/Map;

    .line 21
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgf;->zzd()Lcom/google/android/gms/internal/measurement/zzge;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzge;->zzb(I)Lcom/google/android/gms/internal/measurement/zzge;

    iget-object v5, p0, Le/m/a/f/l/a/e4;->g:Ljava/util/Map;

    .line 23
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_6

    .line 24
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzge;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzge;

    .line 26
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v1, v2

    .line 27
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzgc;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb(Lcom/google/android/gms/internal/measurement/zzgc;)Lcom/google/android/gms/internal/measurement/zzfj;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzay()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfk;

    return-object p1
.end method

.method public final b(Le/m/a/f/l/a/h4;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Le/m/a/f/l/a/h4;->a()I

    move-result v0

    iget-object v1, p1, Le/m/a/f/l/a/h4;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v2, p0, Le/m/a/f/l/a/e4;->e:Ljava/util/BitSet;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    iget-object v1, p1, Le/m/a/f/l/a/h4;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v2, p0, Le/m/a/f/l/a/e4;->d:Ljava/util/BitSet;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    iget-object v1, p1, Le/m/a/f/l/a/h4;->e:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/m/a/f/l/a/e4;->f:Ljava/util/Map;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v5, p1, Le/m/a/f/l/a/h4;->e:Ljava/lang/Long;

    .line 5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v2

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_3

    :cond_2
    iget-object v1, p0, Le/m/a/f/l/a/e4;->f:Ljava/util/Map;

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p1, Le/m/a/f/l/a/h4;->f:Ljava/lang/Long;

    if-eqz v1, :cond_8

    iget-object v1, p0, Le/m/a/f/l/a/e4;->g:Ljava/util/Map;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Le/m/a/f/l/a/e4;->g:Ljava/util/Map;

    .line 10
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Le/m/a/f/l/a/h4;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoa;->zzc()Z

    iget-object v0, p0, Le/m/a/f/l/a/e4;->h:Le/m/a/f/l/a/j4;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 14
    iget-object v4, p0, Le/m/a/f/l/a/e4;->a:Ljava/lang/String;

    .line 15
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdu;->X:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p1}, Le/m/a/f/l/a/h4;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 18
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoa;->zzc()Z

    iget-object v0, p0, Le/m/a/f/l/a/e4;->h:Le/m/a/f/l/a/j4;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 20
    iget-object v4, p0, Le/m/a/f/l/a/e4;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Le/m/a/f/l/a/h4;->f:Ljava/lang/Long;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    iget-object p1, p1, Le/m/a/f/l/a/h4;->f:Ljava/lang/Long;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 26
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method
