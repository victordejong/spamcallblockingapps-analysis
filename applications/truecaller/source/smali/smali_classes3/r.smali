.class public final Lr;
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

    iput p1, p0, Lr;->a:I

    iput-object p2, p0, Lr;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lr;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lr;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    .line 2
    iget-object p1, p1, Le/a/e/b/k/p;->R:Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/RadioButton;->performClick()Z

    :cond_0
    return-void

    .line 4
    :cond_1
    throw v1

    .line 5
    :cond_2
    iget-object p1, p0, Lr;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    .line 6
    iget-object p1, p1, Le/a/e/b/k/p;->Q:Landroid/widget/RadioButton;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/widget/RadioButton;->performClick()Z

    :cond_3
    return-void

    .line 8
    :cond_4
    iget-object p1, p0, Lr;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    .line 9
    iget-object v3, p1, Le/a/e/b/k/p;->Q:Landroid/widget/RadioButton;

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 12
    new-instance v0, Le/a/e/b/k/q;

    invoke-direct {v0, p1, v2}, Le/a/e/b/k/q;-><init>(Le/a/e/b/k/p;Z)V

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    return-void

    .line 13
    :cond_6
    iget-object p1, p0, Lr;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/p;

    .line 14
    iget-object v2, p1, Le/a/e/b/k/p;->R:Landroid/widget/RadioButton;

    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 17
    new-instance v1, Le/a/e/b/k/q;

    invoke-direct {v1, p1, v0}, Le/a/e/b/k/q;-><init>(Le/a/e/b/k/p;Z)V

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_7
    return-void
.end method
