.class public final Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\u000c\u001a\u00020\u00078B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/b/m/d;",
        "a",
        "Ls1/g;",
        "pa",
        "()Le/a/b/m/d;",
        "binding",
        "<init>",
        "()V",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity;->pa()Le/a/b/m/d;

    move-result-object p1

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Le/a/b/m/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "verified_business"

    .line 7
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lcom/truecaller/bizmon/R$drawable;->biz_verified_business_incall_screen:I

    goto :goto_1

    :cond_1
    const-string v0, "priority_call"

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/truecaller/bizmon/R$drawable;->biz_priority_incall_screen:I

    .line 9
    :goto_1
    invoke-static {p0}, Le/a/m0/a1$k;->N1(Ln3/r/a/l;)Le/a/z3/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/z3/e;->A(Ljava/lang/Integer;)Le/a/z3/d;

    move-result-object p1

    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity;->pa()Le/a/b/m/d;

    move-result-object v0

    iget-object v0, v0, Le/a/b/m/d;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity;->pa()Le/a/b/m/d;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/d;->b:Lcom/truecaller/ui/view/TintedImageView;

    new-instance v0, Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity$b;

    invoke-direct {v0, p0}, Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity$b;-><init>(Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Type need to pass"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final pa()Le/a/b/m/d;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/awareness/ui/BusinessAwarenessDetailsActivity;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/m/d;

    return-object v0
.end method
