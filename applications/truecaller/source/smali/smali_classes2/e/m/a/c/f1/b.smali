.class public Le/m/a/c/f1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/f1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/f1/b$b;,
        Le/m/a/c/f1/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/m/a/c/f1/g;",
        ">",
        "Ljava/lang/Object;",
        "Le/m/a/c/f1/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Le/m/a/c/f1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Landroid/os/Looper;

.field public volatile e:Le/m/a/c/f1/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/b<",
            "TT;>.b;"
        }
    .end annotation
.end field


# direct methods
.method public static f(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->d:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->d:I

    if-ge v1, v2, :cond_4

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->a:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Le/m/a/c/v;->c:Ljava/util/UUID;

    .line 5
    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Le/m/a/c/v;->b:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    .line 6
    iget-object v3, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:[B

    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Le/m/a/c/f1/b;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/m/a/c/f1/b;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    const/4 v0, 0x0

    .line 3
    throw v0

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Le/m/a/c/f1/b;->f(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->d:I

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->a:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    aget-object v0, v0, v2

    .line 5
    sget-object v3, Le/m/a/c/v;->b:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->c:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v0, "cenc"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "cbc1"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "cbcs"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "cens"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    .line 11
    :cond_4
    :goto_1
    sget p1, Le/m/a/c/q1/d0;->a:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    return v1
.end method

.method public c(Landroid/os/Looper;I)Le/m/a/c/f1/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "I)",
            "Le/m/a/c/f1/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/m/a/c/f1/b;->d:Landroid/os/Looper;

    if-eqz p2, :cond_1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {p2}, Ln3/g0/y;->x(Z)V

    .line 2
    iput-object p1, p0, Le/m/a/c/f1/b;->d:Landroid/os/Looper;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public d(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Le/m/a/c/f1/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Le/m/a/c/f1/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/f1/b;->d:Landroid/os/Looper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iput-object p1, p0, Le/m/a/c/f1/b;->d:Landroid/os/Looper;

    .line 3
    iget-object v0, p0, Le/m/a/c/f1/b;->e:Le/m/a/c/f1/b$b;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Le/m/a/c/f1/b$b;

    invoke-direct {v0, p0, p1}, Le/m/a/c/f1/b$b;-><init>(Le/m/a/c/f1/b;Landroid/os/Looper;)V

    iput-object v0, p0, Le/m/a/c/f1/b;->e:Le/m/a/c/f1/b$b;

    :cond_2
    const/4 p1, 0x0

    .line 5
    invoke-static {p2, p1, v1}, Le/m/a/c/f1/b;->f(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p2

    .line 6
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-object v0, p0, Le/m/a/c/f1/b;->c:Le/m/a/c/f1/a;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Le/m/a/c/f1/a;->a()V

    return-object v0

    .line 9
    :cond_3
    invoke-virtual {p0, p2, v1}, Le/m/a/c/f1/b;->e(Ljava/util/List;Z)Le/m/a/c/f1/a;

    move-result-object p2

    .line 10
    iput-object p2, p0, Le/m/a/c/f1/b;->c:Le/m/a/c/f1/a;

    .line 11
    throw p1

    .line 12
    :cond_4
    new-instance p2, Le/m/a/c/f1/b$c;

    invoke-direct {p2, p1, p1}, Le/m/a/c/f1/b$c;-><init>(Ljava/util/UUID;Le/m/a/c/f1/b$a;)V

    .line 13
    throw p1
.end method

.method public final e(Ljava/util/List;Z)Le/m/a/c/f1/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;Z)",
            "Le/m/a/c/f1/a<",
            "TT;>;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public final release()V
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/f1/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/m/a/c/f1/b;->b:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
