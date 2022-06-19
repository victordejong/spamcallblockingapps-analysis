.class public final Lp;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lp;->a:I

    iput-object p2, p0, Lp;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget p1, p0, Lp;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lp;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    invoke-virtual {p1}, Le/a/e/b/k/p;->OA()Le/a/e/b/k/t;

    move-result-object p1

    xor-int/2addr p2, v0

    invoke-interface {p1, p2}, Le/a/e/b/k/t;->m7(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lp;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    invoke-virtual {p1}, Le/a/e/b/k/p;->OA()Le/a/e/b/k/t;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/e/b/k/t;->m7(Z)V

    return-void
.end method
