.class public final Le/m/a/f/l/a/x3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/measurement/zzfy;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:J

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzkp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/x3;->e:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLcom/google/android/gms/internal/measurement/zzfo;)Z
    .locals 10

    const-string v0, "null reference"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/m/a/f/l/a/x3;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/a/f/l/a/x3;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Le/m/a/f/l/a/x3;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/a/f/l/a/x3;->b:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Le/m/a/f/l/a/x3;->c:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Le/m/a/f/l/a/x3;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v8

    div-long/2addr v8, v4

    div-long/2addr v8, v6

    div-long/2addr v8, v6

    cmp-long v0, v2, v8

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 7
    :cond_3
    :goto_0
    iget-wide v2, p0, Le/m/a/f/l/a/x3;->d:J

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbr()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object v0, p0, Le/m/a/f/l/a/x3;->e:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 10
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzdu;->i:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_4

    return v1

    :cond_4
    iput-wide v2, p0, Le/m/a/f/l/a/x3;->d:J

    iget-object v0, p0, Le/m/a/f/l/a/x3;->c:Ljava/util/List;

    .line 11
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Le/m/a/f/l/a/x3;->b:Ljava/util/List;

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Le/m/a/f/l/a/x3;->c:Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Le/m/a/f/l/a/x3;->e:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzdu;->j:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 14
    invoke-virtual {p2, v4}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt p1, p2, :cond_5

    return v1

    :cond_5
    return p3
.end method
