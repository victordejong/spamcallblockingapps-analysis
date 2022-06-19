.class public final Le/a/b/b/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/b/m/v;

.field public final synthetic b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;


# direct methods
.method public constructor <init>(Le/a/b/m/v;Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/c/j;->a:Le/a/b/m/v;

    iput-object p2, p0, Le/a/b/b/c/j;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/b/b/c/j;->a:Le/a/b/m/v;

    iget-object p1, p1, Le/a/b/m/v;->c:Landroid/widget/LinearLayout;

    const-string v0, "addMoreInfoLinear"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/b/b/c/j;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    iget-object v3, p0, Le/a/b/b/c/j;->a:Le/a/b/m/v;

    iget-object v3, v3, Le/a/b/m/v;->c:Landroid/widget/LinearLayout;

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->r:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$b;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v4}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->ta(Landroid/view/View;II)V

    .line 6
    iget-object v0, p1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/v;->x:Landroid/widget/Button;

    .line 7
    sget v1, Lcom/truecaller/bizmon/R$drawable;->business_profile_ic_expand:I

    sget v3, Lcom/truecaller/bizmon/R$attr;->theme_accentColor:I

    invoke-static {p1, v1, v3}, Le/a/b0/q/o;->f(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/b/b/c/j;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    iget-object v3, p0, Le/a/b/b/c/j;->a:Le/a/b/m/v;

    iget-object v3, v3, Le/a/b/m/v;->c:Landroid/widget/LinearLayout;

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->r:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$b;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    const/4 v4, -0x2

    .line 12
    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v3, v0, v4}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->ta(Landroid/view/View;II)V

    .line 14
    iget-object v0, p1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_2

    iget-object v0, v0, Le/a/b/m/v;->x:Landroid/widget/Button;

    .line 15
    sget v1, Lcom/truecaller/bizmon/R$drawable;->business_profile_ic_collapse:I

    sget v3, Lcom/truecaller/bizmon/R$attr;->theme_accentColor:I

    invoke-static {p1, v1, v3}, Le/a/b0/q/o;->f(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 16
    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
