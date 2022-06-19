.class public final Lcom/google/android/gms/internal/measurement/t8;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/measurement/y6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/measurement/y6;"
    }
.end annotation


# instance fields
.field private final f:Lcom/google/android/gms/internal/measurement/y6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/y6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t8;->f:Lcom/google/android/gms/internal/measurement/y6;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/t8;)Lcom/google/android/gms/internal/measurement/y6;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t8;->f:Lcom/google/android/gms/internal/measurement/y6;

    return-object p0
.end method


# virtual methods
.method public final Y(Lcom/google/android/gms/internal/measurement/m5;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final e()Lcom/google/android/gms/internal/measurement/y6;
    .locals 0

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t8;->f:Lcom/google/android/gms/internal/measurement/y6;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/y6;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t8;->f:Lcom/google/android/gms/internal/measurement/y6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x6;->d(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/s8;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/s8;-><init>(Lcom/google/android/gms/internal/measurement/t8;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/q8;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/q8;-><init>(Lcom/google/android/gms/internal/measurement/t8;I)V

    return-object v0
.end method

.method public final o(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t8;->f:Lcom/google/android/gms/internal/measurement/y6;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/y6;->o(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t8;->f:Lcom/google/android/gms/internal/measurement/y6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
