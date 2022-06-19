.class public final Le/m/a/f/l/a/x;
.super Ln3/g/f;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzfi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/f/l/a/x;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Ln3/g/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Le/m/a/f/l/a/x;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 3
    invoke-virtual {v0}, Le/m/a/f/l/a/q3;->e()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfi;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfi;->g:Ljava/util/Map;

    .line 7
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzfi;->t(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfc;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfi;->s(Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfi;->i:Ln3/g/f;

    .line 10
    invoke-virtual {v0}, Ln3/g/f;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzc;

    :goto_1
    return-object p1
.end method
