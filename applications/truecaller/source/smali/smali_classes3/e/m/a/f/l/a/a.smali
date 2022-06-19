.class public final Le/m/a/f/l/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzd;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/a;->c:Lcom/google/android/gms/measurement/internal/zzd;

    iput-object p2, p0, Le/m/a/f/l/a/a;->a:Ljava/lang/String;

    iput-wide p3, p0, Le/m/a/f/l/a/a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/a;->c:Lcom/google/android/gms/measurement/internal/zzd;

    iget-object v1, p0, Le/m/a/f/l/a/a;->a:Ljava/lang/String;

    iget-wide v2, p0, Le/m/a/f/l/a/a;->b:J

    .line 2
    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Ljava/util/Map;

    .line 4
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzd;->d:J

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Ljava/util/Map;

    .line 5
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Ljava/util/Map;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Ljava/util/Map;

    .line 7
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v6, 0x64

    if-lt v4, v6, :cond_2

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Too many ads visible"

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Ljava/util/Map;

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzd;->b:Ljava/util/Map;

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
