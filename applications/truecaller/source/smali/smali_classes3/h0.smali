.class public final Lh0;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lh0;->a:I

    iput p2, p0, Lh0;->b:I

    iput-object p3, p0, Lh0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lh0;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lh0;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/k/d/a/a;

    .line 2
    iget-object v0, p1, Le/a/b/k/d/a/a;->e:Le/a/b/k/d/a/a$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/a/b/k/d/a/a;->b:Ljava/util/List;

    .line 4
    iget v1, p0, Lh0;->b:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/k/b/b/a;

    invoke-interface {v0, p1}, Le/a/b/k/d/a/a$a;->H8(Le/a/b/k/b/b/a;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_2
    iget-object p1, p0, Lh0;->c:Ljava/lang/Object;

    check-cast p1, Le/a/b/k/d/a/a;

    .line 7
    iget-object v0, p1, Le/a/b/k/d/a/a;->e:Le/a/b/k/d/a/a$a;

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p1, Le/a/b/k/d/a/a;->b:Ljava/util/List;

    .line 9
    iget v1, p0, Lh0;->b:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/k/b/b/a;

    invoke-interface {v0, p1}, Le/a/b/k/d/a/a$a;->xx(Le/a/b/k/b/b/a;)V

    :cond_3
    return-void
.end method
