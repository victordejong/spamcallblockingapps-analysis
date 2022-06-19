.class public final Lcom/google/android/libraries/places/internal/zzdl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzdn;


# instance fields
.field private final zza:Le/m/a/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/b/f<",
            "Lcom/google/android/libraries/places/internal/zzhh$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-static {p1}, Le/m/a/b/j/v;->c(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Le/m/a/b/j/v;->a()Le/m/a/b/j/v;

    move-result-object v5

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Le/m/a/b/j/v;->b(Le/m/a/b/j/l;)Ljava/util/Set;

    move-result-object p1

    .line 7
    invoke-static {}, Le/m/a/b/j/r;->a()Le/m/a/b/j/r$a;

    move-result-object v0

    const-string v1, "cct"

    invoke-virtual {v0, v1}, Le/m/a/b/j/r$a;->b(Ljava/lang/String;)Le/m/a/b/j/r$a;

    invoke-virtual {v0}, Le/m/a/b/j/r$a;->a()Le/m/a/b/j/r;

    move-result-object v1

    .line 8
    sget-object v4, Lcom/google/android/libraries/places/internal/zzdo;->zza:Le/m/a/b/e;

    .line 9
    new-instance v3, Le/m/a/b/b;

    const-string v0, "proto"

    invoke-direct {v3, v0}, Le/m/a/b/b;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance p1, Le/m/a/b/j/t;

    const-string v2, "LE"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/m/a/b/j/t;-><init>(Le/m/a/b/j/r;Ljava/lang/String;Le/m/a/b/b;Le/m/a/b/e;Le/m/a/b/j/u;)V

    .line 12
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdl;->zza:Le/m/a/b/f;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 14
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzhh$zza;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdl;->zza:Le/m/a/b/f;

    .line 2
    new-instance v1, Le/m/a/b/a;

    sget-object v2, Le/m/a/b/d;->a:Le/m/a/b/d;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Le/m/a/b/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Le/m/a/b/d;)V

    .line 3
    check-cast v0, Le/m/a/b/j/t;

    .line 4
    sget-object p1, Le/m/a/b/j/a;->a:Le/m/a/b/j/a;

    invoke-virtual {v0, v1, p1}, Le/m/a/b/j/t;->a(Le/m/a/b/c;Le/m/a/b/h;)V

    return-void
.end method
