.class public final Lc3;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lc3;->b:I

    iput-object p2, p0, Lc3;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc3;->d:Ljava/lang/Object;

    iput-object p4, p0, Lc3;->e:Ljava/lang/Object;

    iput-object p5, p0, Lc3;->f:Ljava/lang/Object;

    iput-object p6, p0, Lc3;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lc3;->b:I

    const-string v2, "it"

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lc3;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/z/i;

    .line 4
    iget-object p1, p1, Le/a/d/c/z/i;->d:Le/a/d/c/z/d;

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p0, Lc3;->d:Ljava/lang/Object;

    check-cast v1, Le/a/d/b0/b$b;

    invoke-interface {p1, v1}, Le/a/d/c/z/d;->Z(Le/a/d/b0/b$b;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_2
    check-cast p1, Landroid/view/View;

    .line 8
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lc3;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/z/i;

    .line 10
    iget-object p1, p1, Le/a/d/c/z/i;->d:Le/a/d/c/z/d;

    if-eqz p1, :cond_3

    .line 11
    iget-object v1, p0, Lc3;->d:Ljava/lang/Object;

    check-cast v1, Le/a/d/b0/b$b;

    invoke-interface {p1, v1}, Le/a/d/c/z/d;->T2(Le/a/d/b0/b$b;)V

    :cond_3
    return-object v0

    .line 12
    :cond_4
    check-cast p1, Landroid/view/View;

    .line 13
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lc3;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/z/i;

    .line 15
    iget-object p1, p1, Le/a/d/c/z/i;->d:Le/a/d/c/z/d;

    if-eqz p1, :cond_5

    .line 16
    iget-object v1, p0, Lc3;->d:Ljava/lang/Object;

    check-cast v1, Le/a/d/b0/b$b;

    invoke-interface {p1, v1}, Le/a/d/c/z/d;->f9(Le/a/d/b0/b$b;)V

    :cond_5
    return-object v0

    .line 17
    :cond_6
    check-cast p1, Landroid/view/View;

    .line 18
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lc3;->c:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/z/i;

    .line 20
    iget-object p1, p1, Le/a/d/c/z/i;->d:Le/a/d/c/z/d;

    if-eqz p1, :cond_7

    .line 21
    iget-object v1, p0, Lc3;->d:Ljava/lang/Object;

    check-cast v1, Le/a/d/b0/b$b;

    invoke-interface {p1, v1}, Le/a/d/c/z/d;->E9(Le/a/d/b0/b$b;)V

    :cond_7
    return-object v0
.end method
