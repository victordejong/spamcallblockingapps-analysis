.class public final synthetic Le/a/a/y0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/a/y0/s;

.field public final synthetic b:Landroid/widget/RemoteViews;

.field public final synthetic c:Le/f/a/r/k/h;


# direct methods
.method public synthetic constructor <init>(Le/a/a/y0/s;Landroid/widget/RemoteViews;Le/f/a/r/k/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/y0/f;->a:Le/a/a/y0/s;

    iput-object p2, p0, Le/a/a/y0/f;->b:Landroid/widget/RemoteViews;

    iput-object p3, p0, Le/a/a/y0/f;->c:Le/f/a/r/k/h;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Le/a/a/y0/f;->a:Le/a/a/y0/s;

    iget-object v1, p0, Le/a/a/y0/f;->b:Landroid/widget/RemoteViews;

    iget-object v2, p0, Le/a/a/y0/f;->c:Le/f/a/r/k/h;

    check-cast p1, Le/a/b0/m/a/a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v3, p1, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {v3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f0a11ad

    .line 4
    iget-object v4, v0, Le/a/a/y0/s;->g:Le/a/p5/c0;

    const v5, 0x7f120e0d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 5
    iget-object v8, p1, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 6
    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8
    :cond_0
    iget-object v3, p1, Le/a/b0/m/a/a;->c:Landroid/net/Uri;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 9
    new-instance v3, Le/a/a/y0/r;

    invoke-direct {v3, v0, v1}, Le/a/a/y0/r;-><init>(Le/a/a/y0/s;Landroid/widget/RemoteViews;)V

    .line 10
    iget-object v0, v0, Le/a/a/y0/s;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v0

    .line 12
    invoke-static {}, Le/f/a/r/h;->H()Le/f/a/r/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/z3/d;->a0(Le/f/a/r/a;)Le/a/z3/d;

    move-result-object v0

    .line 13
    iget-object p1, p1, Le/a/b0/m/a/a;->c:Landroid/net/Uri;

    .line 14
    invoke-virtual {v0, p1}, Le/a/z3/d;->j0(Landroid/net/Uri;)Le/a/z3/d;

    .line 15
    iput-object v4, v0, Le/f/a/h;->K:Ljava/util/List;

    .line 16
    invoke-virtual {v0, v3}, Le/a/z3/d;->H(Le/f/a/r/g;)Le/f/a/h;

    .line 17
    invoke-virtual {v0, v2}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    :cond_1
    return-object v4
.end method
