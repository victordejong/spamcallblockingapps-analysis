.class public final synthetic Le/m/a/c/r0;
.super Ljava/lang/Object;
.source "Player.java"


# direct methods
.method public static a(Le/m/a/c/q0$b;Z)V
    .locals 0

    return-void
.end method

.method public static b(Le/m/a/c/q0$b;Z)V
    .locals 0

    return-void
.end method

.method public static c(Le/m/a/c/q0$b;Le/m/a/c/o0;)V
    .locals 0

    return-void
.end method

.method public static d(Le/m/a/c/q0$b;I)V
    .locals 0

    return-void
.end method

.method public static e(Le/m/a/c/q0$b;Le/m/a/c/b0;)V
    .locals 0

    return-void
.end method

.method public static f(Le/m/a/c/q0$b;ZI)V
    .locals 0

    return-void
.end method

.method public static g(Le/m/a/c/q0$b;I)V
    .locals 0

    return-void
.end method

.method public static h(Le/m/a/c/q0$b;I)V
    .locals 0

    return-void
.end method

.method public static i(Le/m/a/c/q0$b;)V
    .locals 0

    return-void
.end method

.method public static j(Le/m/a/c/q0$b;Z)V
    .locals 0

    return-void
.end method

.method public static k(Le/m/a/c/q0$b;Le/m/a/c/y0;I)V
    .locals 2
    .param p0, "_this"    # Le/m/a/c/q0$b;

    .line 1
    invoke-virtual {p1}, Le/m/a/c/y0;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Le/m/a/c/y0$c;

    invoke-direct {v0}, Le/m/a/c/y0$c;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1, v0}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v0

    iget-object v0, v0, Le/m/a/c/y0$c;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, p1, v0, p2}, Le/m/a/c/q0$b;->Pi(Le/m/a/c/y0;Ljava/lang/Object;I)V

    return-void
.end method

.method public static l(Le/m/a/c/q0$b;Le/m/a/c/y0;Ljava/lang/Object;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static m(Le/m/a/c/q0$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V
    .locals 0

    return-void
.end method
