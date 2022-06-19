.class public final Ln0;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ln0;->a:I

    iput-object p2, p0, Ln0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Ln0;->a:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Ln0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/b;

    invoke-virtual {p1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/e/u;->wd()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Ln0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/b;

    invoke-virtual {p1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/e/u;->yd()V

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Ln0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/b;

    invoke-virtual {p1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/e/u;->b9()V

    return-void

    .line 5
    :cond_3
    iget-object p1, p0, Ln0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/b;

    invoke-virtual {p1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/e/u;->xa()V

    return-void
.end method
