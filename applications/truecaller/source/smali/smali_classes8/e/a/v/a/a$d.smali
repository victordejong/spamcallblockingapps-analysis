.class public final Le/a/v/a/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/e0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

.field public b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

.field public final synthetic c:Le/a/v/a/a;


# direct methods
.method public constructor <init>(Le/a/v/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->q:Landroid/widget/TextView;

    const-string v1, "binding.source"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 6
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 7
    iget-object v0, v0, Le/a/v/k/c;->r:Landroid/widget/ImageView;

    const-string v1, "binding.sourceIcon"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public B1(Le/a/v/a/e0/f;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->u:Landroid/widget/ImageView;

    const-string v1, "binding.suggestName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-boolean v1, p1, Le/a/v/a/e0/f;->b:Z

    .line 6
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 7
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 8
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 9
    iget-object v0, v0, Le/a/v/k/c;->A:Landroid/widget/ImageView;

    const-string v1, "binding.verifiedIcon"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-boolean v1, p1, Le/a/v/a/e0/f;->c:Z

    .line 11
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 12
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 13
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 14
    iget-object v0, v0, Le/a/v/k/c;->m:Landroid/widget/TextView;

    const-string v1, "binding.nameOrNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v2, p1, Le/a/v/a/e0/f;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 18
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 19
    iget-object v0, v0, Le/a/v/k/c;->n:Landroid/widget/TextView;

    const-string v2, "binding.nameOrNumberShortened"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v2, p1, Le/a/v/a/e0/f;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-boolean v0, p1, Le/a/v/a/e0/f;->b:Z

    if-nez v0, :cond_0

    .line 23
    iget-boolean p1, p1, Le/a/v/a/e0/f;->c:Z

    if-nez p1, :cond_0

    const/16 p1, 0x10

    .line 24
    invoke-static {p1}, Le/a/p5/s0/g;->O(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 26
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 27
    iget-object v0, v0, Le/a/v/k/c;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v2, Lcom/truecaller/details_view/R$id;->expanded:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1(I)Ln3/i/c/d;

    move-result-object v0

    .line 28
    iget-object v2, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 29
    invoke-virtual {v2}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v2

    .line 30
    iget-object v2, v2, Le/a/v/k/c;->m:Landroid/widget/TextView;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ln3/i/c/d;->j(I)Ln3/i/c/d$a;

    move-result-object v0

    .line 32
    iget-object v0, v0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iput p1, v0, Ln3/i/c/d$b;->N:I

    return-void
.end method

.method public C1(Ljava/lang/String;)V
    .locals 3

    const-string v0, "timezone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->x:Lcom/truecaller/timezone/TimezoneView;

    .line 5
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/truecaller/timezone/TimezoneView;->setData(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 8
    iget-object p1, p1, Le/a/v/a/a;->c:Le/a/p5/h0;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 9
    sget v2, Lcom/truecaller/details_view/R$attr;->tcx_textSecondary:I

    invoke-interface {p1, v2}, Le/a/p5/h0;->l(I)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/timezone/TimezoneView;->f1(ILandroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const-string p1, "resourceProvider"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public D1(Le/a/v/a/s;)V
    .locals 2

    const-string v0, "detailsViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->o:Lcom/truecaller/details_view/ui/presence/PresenceView;

    invoke-virtual {v0, p1}, Lcom/truecaller/details_view/ui/presence/PresenceView;->set(Le/a/v/a/s;)V

    return-void
.end method

.method public E1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->p:Landroid/widget/TextView;

    const-string v1, "binding.privateUserInformation"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public F1(Le/a/v/a/d;Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    const-string v0, "contactType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "background"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v0, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/v/k/c;->B:Landroid/widget/ImageView;

    const-string v0, "binding.viewBackdrop"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 6
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    .line 7
    iget-object p1, p1, Le/a/v/k/c;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object p2, p0, Le/a/v/a/a$d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 8
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    :goto_0
    new-instance p1, Le/a/v/a/a$d$a;

    invoke-direct {p1, p0, p4, p3}, Le/a/v/a/a$d$a;-><init>(Le/a/v/a/a$d;II)V

    iput-object p1, p0, Le/a/v/a/a$d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 11
    iget-object p1, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 12
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    .line 13
    iget-object p1, p1, Le/a/v/k/c;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object p2, p0, Le/a/v/a/a$d;->a:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 14
    iget-object p3, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-nez p3, :cond_1

    .line 15
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    .line 16
    :cond_1
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public G()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->c:Landroid/widget/TextView;

    const-string v1, "binding.altName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public G1(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 3

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "avatarXConfig"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a:Landroid/net/Uri;

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/v/a/a0/b;

    invoke-direct {v0}, Le/a/v/a/a0/b;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_CONTACT"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "KEY_AVATAR_URI"

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class p2, Le/a/v/a/a0/b;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public H1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->s:Landroid/widget/TextView;

    const-string v1, "binding.spamCategoryAndCount"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 6
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 7
    iget-object v0, v0, Le/a/v/k/c;->t:Landroid/widget/ImageView;

    const-string v1, "binding.spamCategoryIcon"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public I1(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;)V
    .locals 2

    const-string v0, "statusBarAppearance"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;->a:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    .line 2
    invoke-virtual {p0, v0}, Le/a/v/a/a$d;->a(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    .line 3
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 4
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 5
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 6
    iget-object v0, v0, Le/a/v/k/c;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Le/a/v/a/a$d;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 7
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    new-instance v0, Le/a/v/a/a$d$b;

    invoke-direct {v0, p0, p1}, Le/a/v/a/a$d$b;-><init>(Le/a/v/a/a$d;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;)V

    iput-object v0, p0, Le/a/v/a/a$d;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 10
    iget-object p1, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 11
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    .line 12
    iget-object p1, p1, Le/a/v/k/c;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, p0, Le/a/v/a/a$d;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 13
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    .line 15
    :cond_1
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public J1(Le/a/v/a/e0/i;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->w:Lcom/truecaller/common/ui/tag/TagXView;

    .line 5
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 6
    iget-object v1, p1, Le/a/v/a/e0/i;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/tag/TagXView;->setTitle(Ljava/lang/String;)V

    .line 8
    iget-object v1, p1, Le/a/v/a/e0/i;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/tag/TagXView;->setIcon(Ljava/lang/String;)V

    .line 10
    iget-object p1, p1, Le/a/v/a/e0/i;->c:Le/a/v/a/r0/h;

    const-string v1, "this"

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/v/a/r0/h;->c(Lcom/truecaller/common/ui/tag/TagXView;)V

    return-void
.end method

.method public K1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->y:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "binding.toolbar"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "DrawableCompat.wrap(it).mutate()"

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 7
    iget-object v3, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 8
    invoke-virtual {v3}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v3

    .line 9
    iget-object v3, v3, Le/a/v/k/c;->y:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_0
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 11
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 12
    iget-object v0, v0, Le/a/v/k/c;->y:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 15
    iget-object p1, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 16
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    .line 17
    iget-object p1, p1, Le/a/v/k/c;->y:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public P(Le/a/m5/c;)V
    .locals 2

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->z:Lcom/truecaller/truecontext/TrueContext;

    .line 5
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/truecaller/truecontext/TrueContext;->setPresenter(Le/a/m5/c;)V

    return-void
.end method

.method public P0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->w:Lcom/truecaller/common/ui/tag/TagXView;

    const-string v1, "binding.tag"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "windowInsetsControllerCompat"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 3
    iget-object p1, p1, Le/a/v/a/a;->l:Ln3/k/i/e0;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Ln3/k/i/e0;->a:Ln3/k/i/e0$e;

    invoke-virtual {p1, v2}, Ln3/k/i/e0$e;->a(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 7
    iget-object p1, p1, Le/a/v/a/a;->l:Ln3/k/i/e0;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 8
    iget-object p1, p1, Ln3/k/i/e0;->a:Ln3/k/i/e0$e;

    invoke-virtual {p1, v0}, Ln3/k/i/e0$e;->a(Z)V

    :goto_0
    return-void

    .line 9
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public e1(Lcom/truecaller/data/entity/Contact;)V
    .locals 2

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "details"

    invoke-static {v0, p1, v1}, Lcom/truecaller/tagger/NameSuggestionActivity;->ra(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->z:Lcom/truecaller/truecontext/TrueContext;

    const-string v1, "binding.trueContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public v1(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "avatarXConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->e:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 5
    new-instance v1, Le/a/b0/a/b/a;

    iget-object v2, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 6
    iget-object v2, v2, Le/a/v/a/a;->c:Le/a/p5/h0;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 7
    invoke-direct {v1, v2}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 9
    invoke-static {v1, p1, v0, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 11
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 12
    iget-object v0, v0, Le/a/v/k/c;->e:Lcom/truecaller/common/ui/avatar/AvatarXView;

    new-instance v1, Le/a/v/a/a$d$c;

    invoke-direct {v1, p0, p1}, Le/a/v/a/a$d$c;-><init>(Le/a/v/a/a$d;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "resourceProvider"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public w1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->p:Landroid/widget/TextView;

    const-string v1, "binding.privateUserInformation"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public x1(Le/a/v/a/e0/h;)V
    .locals 2

    const-string v0, "spamInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->s:Landroid/widget/TextView;

    .line 5
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 6
    iget-object v1, p1, Le/a/v/a/e0/h;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 9
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 10
    iget-object v0, v0, Le/a/v/k/c;->t:Landroid/widget/ImageView;

    .line 11
    iget-boolean v1, p1, Le/a/v/a/e0/h;->c:Z

    .line 12
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 13
    invoke-static {v0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v1

    .line 14
    iget-object p1, p1, Le/a/v/a/e0/h;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, p1}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object p1

    invoke-virtual {p1}, Le/f/a/r/a;->m()Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public y1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "altName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->c:Landroid/widget/TextView;

    .line 5
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->x:Lcom/truecaller/timezone/TimezoneView;

    const-string v1, "binding.timezone"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public z1(Le/a/v/a/e0/g;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->q:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6
    iget v2, p1, Le/a/v/a/e0/g;->a:I

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget v1, p1, Le/a/v/a/e0/g;->b:I

    .line 9
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const-string v2, "ColorStateList.valueOf(s\u2026textColor).withAlpha(180)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 11
    iget-object v0, p0, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    .line 12
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 13
    iget-object v0, v0, Le/a/v/k/c;->r:Landroid/widget/ImageView;

    .line 14
    iget-object v1, p1, Le/a/v/a/e0/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 16
    iget-object v1, p1, Le/a/v/a/e0/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_1
    iget-object p1, p1, Le/a/v/a/e0/g;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    return-void
.end method
