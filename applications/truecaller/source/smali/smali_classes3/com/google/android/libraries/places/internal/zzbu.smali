.class public final Lcom/google/android/libraries/places/internal/zzbu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzal;


# instance fields
.field private final zza:Le/m/e/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/e/l;

    invoke-direct {v0}, Le/m/e/l;-><init>()V

    sget-object v1, Le/m/e/d;->d:Le/m/e/d;

    .line 3
    iput-object v1, v0, Le/m/e/l;->c:Le/m/e/e;

    .line 4
    invoke-virtual {v0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbu;->zza:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/places/internal/zzao;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbu;->zza:Le/m/e/k;

    .line 2
    invoke-virtual {v0, p1, p2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-static {p2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Le/m/e/z; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    new-instance p1, Lcom/google/android/libraries/places/internal/zzao;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x37

    const-string v1, "Could not convert JSON string to "

    const-string v2, " due to syntax errors."

    invoke-static {v0, v1, p2, v2}, Le/d/c/a/a;->R1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzao;-><init>(Ljava/lang/String;)V

    throw p1
.end method
