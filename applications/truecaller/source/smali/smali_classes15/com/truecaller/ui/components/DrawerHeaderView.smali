.class public final Lcom/truecaller/ui/components/DrawerHeaderView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/components/DrawerHeaderView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u00012\u00020\u0002:\u0001EJ\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J9\u0010\u0010\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u00052\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u001d\u0010\"\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001d\u0010)\u001a\u00020%8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001f\u001a\u0004\u0008\'\u0010(R\u001d\u0010,\u001a\u00020%8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010\u001f\u001a\u0004\u0008+\u0010(R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u001d\u00105\u001a\u0002018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010\u001f\u001a\u0004\u00083\u00104R\u001d\u00108\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010\u001f\u001a\u0004\u00087\u0010!R\u0016\u0010;\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010:R\u001d\u0010>\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010\u001f\u001a\u0004\u0008=\u0010!R\u001d\u0010A\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010\u001f\u001a\u0004\u0008@\u0010!R\u001d\u0010D\u001a\u00020%8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008B\u0010\u001f\u001a\u0004\u0008C\u0010(\u00a8\u0006F"
    }
    d2 = {
        "Lcom/truecaller/ui/components/DrawerHeaderView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/truecaller/ui/components/DrawerHeaderView$a;",
        "drawerHeaderListener",
        "Ls1/s;",
        "setDrawerHeaderListener",
        "(Lcom/truecaller/ui/components/DrawerHeaderView$a;)V",
        "",
        "name",
        "number",
        "Landroid/net/Uri;",
        "avatar",
        "premiumLevel",
        "",
        "isCredUser",
        "i1",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V",
        "bizName",
        "h1",
        "(Ljava/lang/String;)V",
        "f1",
        "()V",
        "g1",
        "(Ljava/lang/String;Z)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "Landroid/widget/TextView;",
        "y",
        "Ls1/g;",
        "getNameTextView",
        "()Landroid/widget/TextView;",
        "nameTextView",
        "t",
        "Lcom/truecaller/ui/components/DrawerHeaderView$a;",
        "Landroid/widget/ImageView;",
        "D",
        "getBizEditImageView",
        "()Landroid/widget/ImageView;",
        "bizEditImageView",
        "A",
        "getNoAvatarImageView",
        "noAvatarImageView",
        "Le/a/b0/a/b/a;",
        "u",
        "Le/a/b0/a/b/a;",
        "avatarPresenter",
        "Lcom/truecaller/common/ui/avatar/AvatarXView;",
        "w",
        "getAvatarView",
        "()Lcom/truecaller/common/ui/avatar/AvatarXView;",
        "avatarView",
        "B",
        "getBizTitleTextView",
        "bizTitleTextView",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "avatarConfig",
        "z",
        "getNumberTextView",
        "numberTextView",
        "C",
        "getBizDescriptionTextView",
        "bizDescriptionTextView",
        "x",
        "getProfileEditImageView",
        "profileEditImageView",
        "a",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final A:Ls1/g;

.field public final B:Ls1/g;

.field public final C:Ls1/g;

.field public final D:Ls1/g;

.field public t:Lcom/truecaller/ui/components/DrawerHeaderView$a;

.field public final u:Le/a/b0/a/b/a;

.field public v:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

.field public final w:Ls1/g;

.field public final x:Ls1/g;

.field public final y:Ls1/g;

.field public final z:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string v3, "context"

    .line 1
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 2
    invoke-direct {v0, v1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xffff

    invoke-direct/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->v:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const v2, 0x7f0a01b7

    .line 4
    invoke-static {v0, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->w:Ls1/g;

    const v2, 0x7f0a0674

    .line 5
    invoke-static {v0, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->x:Ls1/g;

    const v2, 0x7f0a0c0a

    .line 6
    invoke-static {v0, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->y:Ls1/g;

    const v2, 0x7f0a0c68

    .line 7
    invoke-static {v0, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->z:Ls1/g;

    const v2, 0x7f0a0c3b

    .line 8
    invoke-static {v0, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->A:Ls1/g;

    const v2, 0x7f0a021f

    .line 9
    invoke-static {v0, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->B:Ls1/g;

    const v2, 0x7f0a0219

    .line 10
    invoke-static {v0, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->C:Ls1/g;

    const v2, 0x7f0a021a

    .line 11
    invoke-static {v0, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->D:Ls1/g;

    const/4 v2, 0x1

    .line 12
    invoke-static {v1, v2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    const v2, 0x7f0d014d

    .line 13
    invoke-static {v1, v2, v0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    new-instance v2, Le/a/e/c2/z;

    invoke-direct {v2, v0}, Le/a/e/c2/z;-><init>(Lcom/truecaller/ui/components/DrawerHeaderView;)V

    invoke-static {v0, v2}, Ln3/k/i/s;->r(Landroid/view/View;Ln3/k/i/n;)V

    .line 15
    new-instance v2, Le/a/b0/a/b/a;

    new-instance v3, Le/a/p5/i0;

    invoke-direct {v3, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->u:Le/a/b0/a/b/a;

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getAvatarView()Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void
.end method

.method private final getAvatarView()Lcom/truecaller/common/ui/avatar/AvatarXView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    return-object v0
.end method

.method private final getBizDescriptionTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->C:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getBizEditImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->D:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getBizTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->B:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getNameTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->y:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getNoAvatarImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->A:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getNumberTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->z:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getProfileEditImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final f1()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getBizTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getBizEditImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 3
    invoke-direct {p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getBizDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public final g1(Ljava/lang/String;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "premiumLevel"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->v:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getAvatarView()Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object v2

    invoke-static {v2}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "regular"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const-string v2, "gold"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 5
    iget-boolean v1, v3, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->i:Z

    if-ne v1, v12, :cond_0

    .line 6
    iget-boolean v1, v3, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->j:Z

    if-eq v1, v13, :cond_1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xf4ff

    move/from16 v15, p2

    .line 7
    invoke-static/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->v:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 8
    iget-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->u:Le/a/b0/a/b/a;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4, v5}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final h1(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getBizTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getBizEditImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    invoke-direct {p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getBizDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getBizTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getBizEditImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final i1(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    const-string v2, "name"

    const-string v4, "number"

    const-string v6, "premiumLevel"

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNumberTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNumberTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getAvatarView()Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1205b6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNoAvatarImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getAvatarView()Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object v3

    invoke-static {v3}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNoAvatarImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v3}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNoAvatarImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0806b1

    invoke-static {v4, v5}, Le/a/b0/q/o;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNoAvatarImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f0405a1

    invoke-static {v4, v6}, Le/a/p5/s0/g;->k0(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNoAvatarImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v2

    .line 12
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v4, 0x7f080132

    .line 13
    invoke-static {v2, v4}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 14
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getAvatarView()Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object v2

    invoke-static {v2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNoAvatarImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v2}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 17
    new-instance v2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v8, v2

    .line 18
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "regular"

    .line 19
    invoke-static {v7, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    const-string v3, "gold"

    .line 20
    invoke-static {v7, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0xf4f4

    const/4 v11, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move/from16 v20, p5

    .line 21
    invoke-direct/range {v8 .. v25}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    iput-object v2, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->v:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 22
    iget-object v3, v0, Lcom/truecaller/ui/components/DrawerHeaderView;->u:Le/a/b0/a/b/a;

    const/4 v5, 0x2

    invoke-static {v3, v2, v4, v5, v1}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 23
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getAvatarView()Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getNoAvatarImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/ui/components/DrawerHeaderView;->getProfileEditImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->W()Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0674

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->t:Lcom/truecaller/ui/components/DrawerHeaderView$a;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/truecaller/ui/TruecallerInit;

    const-string v1, "editProfile"

    .line 3
    invoke-virtual {v0, v1}, Lcom/truecaller/ui/TruecallerInit;->Ja(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/ui/TruecallerInit;->Ca()V

    .line 5
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v4, "sideBar"

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->t:Lcom/truecaller/ui/components/DrawerHeaderView$a;

    if-eqz p1, :cond_a

    check-cast p1, Lcom/truecaller/ui/TruecallerInit;

    .line 7
    const-class v0, Lcom/truecaller/ui/WizardActivity;

    sget-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->REGISTER:Lcom/truecaller/wizard/framework/WizardStartContext;

    invoke-static {p1, v0, v4, v1}, Le/a/r/t/c;->Ca(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    goto/16 :goto_2

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a021a

    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->t:Lcom/truecaller/ui/components/DrawerHeaderView$a;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/truecaller/ui/TruecallerInit;

    const-string v1, "context"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/bizmon/newBusiness/profile/ui/BizProfileActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01b7

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0c3b

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->t:Lcom/truecaller/ui/components/DrawerHeaderView$a;

    if-eqz p1, :cond_a

    check-cast p1, Lcom/truecaller/ui/TruecallerInit;

    .line 15
    const-class v0, Lcom/truecaller/ui/WizardActivity;

    sget-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->REGISTER:Lcom/truecaller/wizard/framework/WizardStartContext;

    invoke-static {p1, v0, v4, v1}, Le/a/r/t/c;->Ca(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    goto :goto_2

    .line 16
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->t:Lcom/truecaller/ui/components/DrawerHeaderView$a;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/truecaller/ui/TruecallerInit;

    .line 17
    invoke-virtual {v0}, Lcom/truecaller/ui/TruecallerInit;->Ia()Z

    move-result v1

    const/16 v2, 0x1b59

    if-eqz v1, :cond_8

    .line 18
    iget-object v1, v0, Lcom/truecaller/ui/TruecallerInit;->z0:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->n()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    iget-object v1, v0, Lcom/truecaller/ui/TruecallerInit;->h0:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/m4/a;

    invoke-virtual {v1, v0}, Le/a/m4/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    .line 20
    invoke-static {v0, v3, v1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->sa(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 21
    :cond_8
    iget-object v1, v0, Lcom/truecaller/ui/TruecallerInit;->h0:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/m4/a;

    invoke-virtual {v1, v0}, Le/a/m4/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    const-string v1, "avatar"

    .line 22
    invoke-virtual {v0, v1}, Lcom/truecaller/ui/TruecallerInit;->Ja(Ljava/lang/String;)V

    .line 23
    :cond_9
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    :goto_2
    return-void
.end method

.method public final setDrawerHeaderListener(Lcom/truecaller/ui/components/DrawerHeaderView$a;)V
    .locals 1

    const-string v0, "drawerHeaderListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/DrawerHeaderView;->t:Lcom/truecaller/ui/components/DrawerHeaderView$a;

    return-void
.end method
