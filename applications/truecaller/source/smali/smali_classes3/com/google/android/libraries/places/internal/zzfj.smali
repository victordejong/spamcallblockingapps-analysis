.class public Lcom/google/android/libraries/places/internal/zzfj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzfj;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzfj;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfj;->zza:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzfj;Lcom/google/android/libraries/places/internal/zzfm;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzfj;-><init>(Lcom/google/android/libraries/places/internal/zzfj;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfj;->zza:Ljava/lang/String;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzfj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzfj;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzfj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzfj;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzfj;->zza:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public zza()Lcom/google/android/libraries/places/internal/zzfj;
    .locals 1

    .line 10
    new-instance v0, Lcom/google/android/libraries/places/internal/zzfl;

    invoke-direct {v0, p0, p0}, Lcom/google/android/libraries/places/internal/zzfl;-><init>(Lcom/google/android/libraries/places/internal/zzfj;Lcom/google/android/libraries/places/internal/zzfj;)V

    return-object v0
.end method

.method public zza(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator<",
            "*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzfj;->zza(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzfj;->zza:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzfj;->zza(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public zza(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 11
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Iterator<",
            "*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzfj;->zza(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/libraries/places/internal/zzfo;-><init>(Lcom/google/android/libraries/places/internal/zzfj;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzfm;)V

    return-object v0
.end method
