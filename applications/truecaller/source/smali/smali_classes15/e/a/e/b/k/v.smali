.class public final Le/a/e/b/k/v;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/o/b/j;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/b/k/x;


# direct methods
.method public constructor <init>(Le/a/e/b/k/x;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/k/v;->b:Le/a/e/b/k/x;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Le/a/o/b/j;

    const-string v0, "onBoarded"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Le/a/o/b/j$b;->a:Le/a/o/b/j$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Le/a/e/b/k/v;->b:Le/a/e/b/k/x;

    instance-of v2, p1, Le/a/o/b/j$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p1, Le/a/o/b/j$a;

    .line 5
    iget-boolean p1, p1, Le/a/o/b/j$a;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v3

    .line 6
    :goto_0
    iput-boolean p1, v1, Le/a/e/b/k/x;->b:Z

    .line 7
    iget-object p1, v1, Le/a/e/b/k/x;->r:Le/a/o/j;

    const-string v1, "settings_screen"

    .line 8
    invoke-interface {p1, v1, v0}, Le/a/o/j;->e(Ljava/lang/String;Z)V

    .line 9
    iget-object p1, p0, Le/a/e/b/k/v;->b:Le/a/e/b/k/x;

    .line 10
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/k/u;

    if-eqz v1, :cond_2

    .line 11
    iget-object v2, p1, Le/a/e/b/k/x;->g:Le/a/p5/c0;

    .line 12
    iget-boolean p1, p1, Le/a/e/b/k/x;->b:Z

    if-eqz p1, :cond_1

    const p1, 0x7f1209d1

    goto :goto_1

    :cond_1
    const p1, 0x7f1209c3

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    invoke-interface {v2, p1, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "resourceProvider.getStri\u2026r_title\n                )"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v1, p1}, Le/a/e/b/k/u;->yb(Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object p1, p0, Le/a/e/b/k/v;->b:Le/a/e/b/k/x;

    .line 16
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/u;

    if-eqz p1, :cond_3

    .line 17
    invoke-interface {p1, v0}, Le/a/e/b/k/u;->ol(Z)V

    .line 18
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
