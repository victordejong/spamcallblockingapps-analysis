.class public final Le/a/v4/o0/d$a;
.super Le/a/v4/o0/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v4/o0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/v4/o0/d$b;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public N4(Le/a/p5/h0;)V
    .locals 2

    const-string v0, "themedResourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v4/o0/d$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    sget v1, Lcom/truecaller/sdk/R$attr;->tcx_brandBackgroundBlue:I

    invoke-interface {p1, v1}, Le/a/p5/h0;->l(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/truecaller/sdk/R$dimen;->info_item_vertical_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
