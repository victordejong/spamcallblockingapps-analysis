.class public final Lp0;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lp0;->a:I

    iput-object p2, p0, Lp0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lp0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    iget p1, p0, Lp0;->a:I

    const-string v0, "analyticContext"

    const-string v1, "sender"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 1
    iget-object p1, p0, Lp0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/a;

    .line 2
    sget-object v2, Le/a/c/a/e/a/a;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/c/a/e/a/a;->SA()Le/a/c/a/e/c/e;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lp0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lp0;->b:Ljava/lang/Object;

    check-cast v3, Le/a/c/a/e/a/a;

    invoke-static {v3}, Le/a/c/a/e/a/a;->PA(Le/a/c/a/e/a/a;)Z

    move-result v3

    iget-object v4, p0, Lp0;->b:Ljava/lang/Object;

    check-cast v4, Le/a/c/a/e/a/a;

    invoke-static {v4}, Le/a/c/a/e/a/a;->OA(Le/a/c/a/e/a/a;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Le/a/c/a/e/d/a$a$c;

    invoke-direct {v0, v2, v3, v4}, Le/a/c/a/e/d/a$a$c;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/c/a/e/c/e;->c(Le/a/c/a/e/d/a;)V

    .line 7
    iget-object p1, p1, Le/a/c/a/e/c/e;->a:Ln3/v/k0;

    sget-object v0, Le/a/c/a/e/c/f$c;->a:Le/a/c/a/e/c/f$c;

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 9
    :cond_1
    iget-object p1, p0, Lp0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/a;

    .line 10
    sget-object v2, Le/a/c/a/e/a/a;->i:[Ls1/a/l;

    .line 11
    invoke-virtual {p1}, Le/a/c/a/e/a/a;->SA()Le/a/c/a/e/c/e;

    move-result-object v4

    .line 12
    iget-object p1, p0, Lp0;->c:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object p1, p0, Lp0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/a;

    invoke-static {p1}, Le/a/c/a/e/a/a;->PA(Le/a/c/a/e/a/a;)Z

    move-result v6

    iget-object p1, p0, Lp0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/a;

    invoke-static {p1}, Le/a/c/a/e/a/a;->OA(Le/a/c/a/e/a/a;)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object p1

    iget-object v9, v4, Le/a/c/a/e/c/e;->c:Ls1/w/f;

    new-instance v11, Le/a/c/a/e/c/b;

    const/4 v8, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Le/a/c/a/e/c/b;-><init>(Le/a/c/a/e/c/e;Ljava/lang/String;ZLjava/lang/String;Ls1/w/d;)V

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    .line 15
    :cond_2
    iget-object p1, p0, Lp0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/a;

    .line 16
    iget-object p1, p1, Le/a/c/a/e/a/a;->a:Ls1/z/b/l;

    if-eqz p1, :cond_3

    .line 17
    sget-object v2, Le/a/c/q/a$b$a;->a:Le/a/c/q/a$b$a;

    invoke-interface {p1, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 18
    :cond_3
    iget-object p1, p0, Lp0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/a;

    .line 19
    invoke-virtual {p1}, Le/a/c/a/e/a/a;->SA()Le/a/c/a/e/c/e;

    move-result-object v3

    .line 20
    iget-object p1, p0, Lp0;->c:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lp0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/a;

    invoke-static {p1}, Le/a/c/a/e/a/a;->PA(Le/a/c/a/e/a/a;)Z

    move-result v5

    iget-object p1, p0, Lp0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/a;

    invoke-static {p1}, Le/a/c/a/e/a/a;->OA(Le/a/c/a/e/a/a;)Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object p1

    iget-object v8, v3, Le/a/c/a/e/c/e;->c:Ls1/w/f;

    new-instance v10, Le/a/c/a/e/c/d;

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Le/a/c/a/e/c/d;-><init>(Le/a/c/a/e/c/e;Ljava/lang/String;ZLjava/lang/String;Ls1/w/d;)V

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
