.class public final Le/m/h/b/b/e/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "merged_dict_%1$s_%2$s_update.bin"

    const-string v1, "merged_dict_%1$s_%2$s_both.bin"

    const-string v2, "merged_dict_%1$s_%2$s_from_%3$s.bin"

    const-string v3, "merged_dict_%1$s_%2$s_from_%4$s.bin"

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    sput-object v0, Le/m/h/b/b/e/w;->a:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "en"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 4
    aget-object v0, v1, v2

    aput-object v0, p1, v2

    aget-object v0, v1, p0

    aput-object v0, p1, p0

    const-string p0, "%s_%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le/m/h/b/b/e/w;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 3
    aget-object v0, v0, v3

    .line 4
    sget-object v4, Le/m/h/b/b/e/w;->a:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move v5, v1

    .line 5
    :goto_0
    sget-object v6, Le/m/h/b/b/e/w;->a:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 6
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v1

    const-string v8, "25"

    aput-object v8, v7, v3

    const/4 v8, 0x2

    aput-object v2, v7, v8

    const/4 v8, 0x3

    aput-object v0, v7, v8

    .line 7
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string v0, "[a-z]{2,3}_[a-z]{2,3}"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    const-string v1, "_"

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Model name expected to be matching %s"

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
