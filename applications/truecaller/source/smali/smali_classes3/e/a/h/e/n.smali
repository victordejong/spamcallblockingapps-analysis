.class public final Le/a/h/e/n;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h/e/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Le/a/h/e/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Le/a/h/e/l;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneAccountInfoList"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d02bb

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string v0, "parent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0d02bb

    .line 2
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "inflater.inflate(R.layou\u2026er_dialog, parent, false)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p3, Le/a/h/e/n$a;

    invoke-direct {p3, p2}, Le/a/h/e/n$a;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string v1, "null cannot be cast to non-null type com.truecaller.calling.initiate_call.SelectPhoneAccountAdapter.ViewHolder"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Le/a/h/e/n$a;

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/e/l;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p3, Le/a/h/e/n$a;->a:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p3, Le/a/h/e/n$a;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p3, Le/a/h/e/n$a;->c:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v2, p3, Le/a/h/e/n$a;->a:Landroid/widget/TextView;

    .line 14
    iget-object v3, p1, Le/a/h/e/l;->a:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v2, p3, Le/a/h/e/n$a;->b:Landroid/widget/TextView;

    .line 17
    iget-object v3, p1, Le/a/h/e/l;->b:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v2, p3, Le/a/h/e/n$a;->b:Landroid/widget/TextView;

    .line 20
    iget-object v3, p1, Le/a/h/e/l;->b:Ljava/lang/CharSequence;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 21
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v4

    :cond_3
    xor-int/2addr v0, v4

    invoke-static {v2, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 22
    instance-of v0, p1, Le/a/h/e/l$b;

    if-nez v0, :cond_5

    .line 23
    instance-of v0, p1, Le/a/h/e/l$a;

    if-eqz v0, :cond_4

    .line 24
    iget-object p3, p3, Le/a/h/e/n$a;->c:Landroid/widget/ImageView;

    .line 25
    check-cast p1, Le/a/h/e/l$a;

    .line 26
    iget-object p1, p1, Le/a/h/e/l$a;->c:Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    return-object p2

    .line 28
    :cond_5
    check-cast p1, Le/a/h/e/l$b;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    throw v1
.end method
