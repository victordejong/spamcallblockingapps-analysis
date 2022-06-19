.class public Le/a/q4/t$a;
.super Le/a/e/c2/t$b;
.source "SourceFile"

# interfaces
.implements Le/a/q4/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q4/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Lcom/truecaller/ui/view/ContactPhoto;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/q4/x;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/a/e/c2/t$b;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Le/a/q4/a;

    invoke-direct {p3, p2}, Le/a/q4/a;-><init>(Le/a/q4/x;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const p3, 0x7f0a0467

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/truecaller/ui/view/ContactPhoto;

    iput-object p3, p0, Le/a/q4/t$a;->b:Lcom/truecaller/ui/view/ContactPhoto;

    const p3, 0x7f0a0c14

    .line 4
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Le/a/q4/t$a;->c:Landroid/widget/TextView;

    const p3, 0x7f0a0c70

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Le/a/q4/t$a;->d:Landroid/widget/TextView;

    .line 6
    new-instance p3, Le/a/q4/b;

    invoke-direct {p3, p0, p2}, Le/a/q4/b;-><init>(Le/a/q4/t$a;Le/a/q4/x;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0074

    .line 7
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f040167

    invoke-static {p1, v0}, Le/a/p5/s0/g;->P(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    new-instance p1, Le/a/q4/c;

    invoke-direct {p1, p0, p2}, Le/a/q4/c;-><init>(Le/a/q4/t$a;Le/a/q4/x;)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/t$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/t$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public u(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/t$a;->b:Lcom/truecaller/ui/view/ContactPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/ui/view/ContactPhoto;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public z4(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/t$a;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
