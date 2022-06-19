.class public final Lm1;
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

    iput p1, p0, Lm1;->a:I

    iput-object p2, p0, Lm1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lm1;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lm1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a0/b;

    invoke-virtual {p1}, Le/a/d/c/a0/b;->RA()Le/a/d/c/a0/g;

    move-result-object p1

    check-cast p1, Le/a/d/c/a0/i;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a0/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/d/c/a0/h;->S()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_2
    iget-object p1, p0, Lm1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a0/b;

    invoke-virtual {p1}, Le/a/d/c/a0/b;->RA()Le/a/d/c/a0/g;

    move-result-object p1

    check-cast p1, Le/a/d/c/a0/i;

    .line 5
    invoke-virtual {p1}, Le/a/d/c/a0/i;->Jj()Le/a/d/w/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/d/w/j/a;->a()Lq3/a/p1;

    :cond_3
    return-void
.end method
