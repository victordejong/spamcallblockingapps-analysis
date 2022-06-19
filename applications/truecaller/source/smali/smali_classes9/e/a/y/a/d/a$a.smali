.class public final Le/a/y/a/d/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lcom/truecaller/flashsdk/ui/FlashButton;

.field public final c:Landroid/widget/ImageView;

.field public final synthetic d:Le/a/y/a/d/a;


# direct methods
.method public constructor <init>(Le/a/y/a/d/a;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/y/a/d/a$a;->d:Le/a/y/a/d/a;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    sget p1, Lcom/truecaller/flashsdk/R$id;->textName:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.textName)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/y/a/d/a$a;->a:Landroid/widget/TextView;

    .line 3
    sget p1, Lcom/truecaller/flashsdk/R$id;->flash_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.flash_button)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/flashsdk/ui/FlashButton;

    iput-object p1, p0, Le/a/y/a/d/a$a;->b:Lcom/truecaller/flashsdk/ui/FlashButton;

    .line 4
    sget v0, Lcom/truecaller/flashsdk/R$id;->imageAvatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.imageAvatar)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/y/a/d/a$a;->c:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/truecaller/flashsdk/R$drawable;->bg_solid_white_rad_4dp:I

    sget v1, Lcom/truecaller/flashsdk/R$attr;->colorPrimary:I

    invoke-static {p2, v0, v1}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 4
    iget-object v0, p0, Le/a/y/a/d/a$a;->d:Le/a/y/a/d/a;

    .line 5
    iget-object v0, v0, Le/a/y/a/d/a;->d:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Le/a/y/g/a;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, p1

    :goto_2
    check-cast v3, Le/a/y/g/a;

    if-eqz v3, :cond_4

    .line 7
    iget-object p1, p0, Le/a/y/a/d/a$a;->b:Lcom/truecaller/flashsdk/ui/FlashButton;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/FlashButton;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Le/a/y/a/d/a$a;->d:Le/a/y/a/d/a;

    .line 9
    iget-object p1, p1, Le/a/y/a/d/a;->e:Le/a/y/b/t;

    .line 10
    invoke-interface {p1, v3}, Le/a/y/b/t;->onResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 11
    :cond_3
    iget-object p1, p0, Le/a/y/a/d/a$a;->d:Le/a/y/a/d/a;

    .line 12
    iget-object p1, p1, Le/a/y/a/d/a;->b:Landroid/app/Activity;

    .line 13
    sget v0, Lcom/truecaller/flashsdk/R$string;->please_wait_before_sending:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    iget-object v3, v3, Le/a/y/g/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_3
    return-void
.end method
