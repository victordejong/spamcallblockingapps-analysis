.class public final Lcom/google/android/libraries/places/internal/zzfl;
.super Lcom/google/android/libraries/places/internal/zzfj;
.source "SourceFile"


# instance fields
.field private final synthetic zza:Lcom/google/android/libraries/places/internal/zzfj;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzfj;Lcom/google/android/libraries/places/internal/zzfj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfl;->zza:Lcom/google/android/libraries/places/internal/zzfj;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/libraries/places/internal/zzfj;-><init>(Lcom/google/android/libraries/places/internal/zzfj;Lcom/google/android/libraries/places/internal/zzfm;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 2
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

    const-string v0, "appendable"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "parts"

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzfl;->zza:Lcom/google/android/libraries/places/internal/zzfj;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzfj;->zza(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzfl;->zza:Lcom/google/android/libraries/places/internal/zzfj;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzfj;->zza(Lcom/google/android/libraries/places/internal/zzfj;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 9
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzfl;->zza:Lcom/google/android/libraries/places/internal/zzfj;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzfj;->zza(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzfo;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t use .skipNulls() with maps"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
