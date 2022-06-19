.class public final Le/a/a/c/c/a$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/q0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/c/a;


# direct methods
.method public constructor <init>(Le/a/a/c/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/c/a$j;->a:Le/a/a/c/c/a;

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
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/c/a$j;->a:Le/a/a/c/c/a;

    invoke-virtual {v0}, Le/a/a/c/c/a;->PA()Le/a/a/c/c/p;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Le/a/a/c/c/p;->pc(ZZ)V

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
