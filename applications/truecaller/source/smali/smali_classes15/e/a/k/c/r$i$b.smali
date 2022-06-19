.class public final Le/a/k/c/r$i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/q0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/r$i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/w2/x;


# direct methods
.method public constructor <init>(Lq3/a/w2/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/x<",
            "-",
            "Le/a/k/c/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/k/c/r$i$b;->a:Lq3/a/w2/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic A0()V
    .locals 0

    invoke-static {p0}, Le/m/a/c/r0;->i(Le/m/a/c/q0$b;)V

    return-void
.end method

.method public G5(ZI)V
    .locals 1

    .line 1
    sget-object p1, Le/a/k/c/t$c;->a:Le/a/k/c/t$c;

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Le/a/k/c/r$i$b;->a:Lq3/a/w2/x;

    invoke-static {p2, p1}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/k/c/r$i$b;->a:Lq3/a/w2/x;

    sget-object p2, Le/a/k/c/t$e;->a:Le/a/k/c/t$e;

    invoke-static {p1, p2}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/k/c/r$i$b;->a:Lq3/a/w2/x;

    sget-object p2, Le/a/k/c/t$a;->a:Le/a/k/c/t$a;

    invoke-static {p1, p2}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p2, p0, Le/a/k/c/r$i$b;->a:Lq3/a/w2/x;

    invoke-static {p2, p1}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    :goto_0
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

.method public Xl(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/k/c/r$i$b;->a:Lq3/a/w2/x;

    sget-object v0, Le/a/k/c/t$d;->a:Le/a/k/c/t$d;

    invoke-static {p1, v0}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic Zl(I)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->d(Le/m/a/c/q0$b;I)V

    return-void
.end method

.method public synthetic fs(Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/m/a/c/r0;->m(Le/m/a/c/q0$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V

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

.method public tf(Le/m/a/c/b0;)V
    .locals 2

    const-string v0, "ex"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/c/r$i$b;->a:Lq3/a/w2/x;

    new-instance v1, Le/a/k/c/t$b;

    invoke-direct {v1, p1}, Le/a/k/c/t$b;-><init>(Le/m/a/c/b0;)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic w1(Z)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->b(Le/m/a/c/q0$b;Z)V

    return-void
.end method
