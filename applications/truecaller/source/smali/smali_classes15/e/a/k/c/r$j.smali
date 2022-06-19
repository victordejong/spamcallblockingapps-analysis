.class public final Le/a/k/c/r$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/q0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/r;->j(Le/m/a/c/c0;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/k/c/r;

.field public final synthetic c:Le/m/a/c/c0;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/k/c/r;Le/m/a/c/c0;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/r$j;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/k/c/r$j;->b:Le/a/k/c/r;

    iput-object p3, p0, Le/a/k/c/r$j;->c:Le/m/a/c/c0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic A0()V
    .locals 0

    invoke-static {p0}, Le/m/a/c/r0;->i(Le/m/a/c/q0$b;)V

    return-void
.end method

.method public synthetic G5(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/m/a/c/r0;->f(Le/m/a/c/q0$b;ZI)V

    return-void
.end method

.method public synthetic N7(Le/m/a/c/y0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/m/a/c/r0;->k(Le/m/a/c/q0$b;Le/m/a/c/y0;I)V

    return-void
.end method

.method public synthetic Pi(Le/m/a/c/y0;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/m/a/c/r0;->l(Le/m/a/c/q0$b;Le/m/a/c/y0;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic S8(Z)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->j(Le/m/a/c/q0$b;Z)V

    return-void
.end method

.method public synthetic Xl(Z)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->a(Le/m/a/c/q0$b;Z)V

    return-void
.end method

.method public synthetic Zl(I)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->d(Le/m/a/c/q0$b;I)V

    return-void
.end method

.method public fs(Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V
    .locals 6

    const-string v0, "trackGroups"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackSelections"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/k/c/r$j;->b:Le/a/k/c/r;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget p2, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 4
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v2, v2, v1

    .line 5
    iget v3, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 6
    iget-object v5, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v5, v5, v4

    .line 7
    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-static {v5}, Le/m/a/c/q1/q;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_2
    iget-object p1, p0, Le/a/k/c/r$j;->a:Lq3/a/n;

    invoke-interface {p1}, Lq3/a/n;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/k/c/r$j;->a:Lq3/a/n;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public synthetic h5(I)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->g(Le/m/a/c/q0$b;I)V

    return-void
.end method

.method public synthetic hy(I)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->h(Le/m/a/c/q0$b;I)V

    return-void
.end method

.method public synthetic rs(Le/m/a/c/o0;)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->c(Le/m/a/c/q0$b;Le/m/a/c/o0;)V

    return-void
.end method

.method public synthetic tf(Le/m/a/c/b0;)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->e(Le/m/a/c/q0$b;Le/m/a/c/b0;)V

    return-void
.end method

.method public synthetic w1(Z)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->b(Le/m/a/c/q0$b;Z)V

    return-void
.end method
