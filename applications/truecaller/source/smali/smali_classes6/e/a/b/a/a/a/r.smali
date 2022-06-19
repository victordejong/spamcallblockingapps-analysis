.class public final Le/a/b/a/a/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Le/a/b/l/q<",
        "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/k;

.field public final synthetic b:Le/a/b/m/f0;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/k;Le/a/b/m/f0;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/r;->a:Le/a/b/a/a/a/k;

    iput-object p2, p0, Le/a/b/a/a/a/r;->b:Le/a/b/m/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/b/l/q;

    .line 2
    instance-of v2, v1, Le/a/b/l/q$c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "binding.pbLoading"

    const-string v6, "requireActivity()"

    if-eqz v2, :cond_1e

    .line 3
    iget-object v2, v0, Le/a/b/a/a/a/r;->a:Le/a/b/a/a/a/k;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/n/g0;->w(Landroid/app/Activity;)V

    .line 4
    iget-object v2, v0, Le/a/b/a/a/a/r;->b:Le/a/b/m/f0;

    iget-object v2, v2, Le/a/b/m/f0;->o:Landroid/widget/ProgressBar;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 5
    iget-object v1, v1, Le/a/b/l/q;->a:Ljava/lang/Object;

    .line 6
    check-cast v1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz v1, :cond_22

    iget-object v2, v0, Le/a/b/a/a/a/r;->a:Le/a/b/a/a/a/k;

    iget-object v5, v0, Le/a/b/a/a/a/r;->b:Le/a/b/m/f0;

    .line 7
    sget v6, Le/a/b/a/a/a/k;->i:I

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v6, v5, Le/a/b/m/f0;->t:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Le/a/b/a/a/a/n;

    invoke-direct {v8, v2}, Le/a/b/a/a/a/n;-><init>(Le/a/b/a/a/a/k;)V

    const/4 v9, 0x4

    invoke-static {v6, v7, v8, v3, v9}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    .line 10
    iget-object v6, v5, Le/a/b/m/f0;->s:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->getEmail()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v4

    :goto_0
    new-instance v8, Le/a/b/a/a/a/o;

    invoke-direct {v8, v2}, Le/a/b/a/a/a/o;-><init>(Le/a/b/a/a/a/k;)V

    invoke-static {v6, v7, v8, v3, v9}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    .line 11
    iget-object v6, v5, Le/a/b/m/f0;->u:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getPhoneNumbers()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v4

    :goto_1
    const/4 v8, 0x2

    const/4 v10, 0x1

    invoke-static {v6, v7, v4, v10, v8}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    .line 12
    iget-object v6, v5, Le/a/b/m/f0;->p:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    invoke-static {v1}, Le/a/n/g0;->y(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Le/a/b/a/a/a/p;

    invoke-direct {v8, v2}, Le/a/b/a/a/a/p;-><init>(Le/a/b/a/a/a/k;)V

    invoke-static {v6, v7, v8, v3, v9}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    .line 13
    iget-object v6, v5, Le/a/b/m/f0;->r:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getAbout()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Le/a/b/a/a/a/q;

    invoke-direct {v8, v2}, Le/a/b/a/a/a/q;-><init>(Le/a/b/a/a/a/k;)V

    invoke-static {v6, v7, v8, v3, v9}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    .line 14
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getLogo()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    const-string v7, "addBizLogoBackground"

    const-string v8, "addBizLogoLabel"

    const-string v11, "addBizLogo"

    const-string v12, "editBizLogoIcon"

    const-string v13, "bizLogo"

    const/4 v14, -0x1

    const-string v15, "requestManager"

    if-nez v6, :cond_3

    .line 15
    iget-object v6, v5, Le/a/b/m/f0;->h:Landroid/widget/ImageView;

    invoke-static {v6, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 16
    iget-object v6, v5, Le/a/b/m/f0;->l:Landroid/widget/ImageView;

    invoke-static {v6, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 17
    iget-object v6, v5, Le/a/b/m/f0;->a:Landroid/widget/ImageView;

    invoke-static {v6, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 18
    iget-object v6, v5, Le/a/b/m/f0;->c:Landroid/widget/TextView;

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 19
    iget-object v6, v5, Le/a/b/m/f0;->b:Landroid/view/View;

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 20
    iget-object v6, v5, Le/a/b/m/f0;->a:Landroid/widget/ImageView;

    new-instance v7, Lc0;

    invoke-direct {v7, v3, v2}, Lc0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v6, v5, Le/a/b/m/f0;->c:Landroid/widget/TextView;

    new-instance v7, Lc0;

    invoke-direct {v7, v10, v2}, Lc0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 22
    :cond_3
    iget-object v10, v5, Le/a/b/m/f0;->h:Landroid/widget/ImageView;

    invoke-static {v10, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 23
    iget-object v10, v5, Le/a/b/m/f0;->l:Landroid/widget/ImageView;

    invoke-static {v10, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 24
    iget-object v10, v5, Le/a/b/m/f0;->a:Landroid/widget/ImageView;

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 25
    iget-object v10, v5, Le/a/b/m/f0;->c:Landroid/widget/TextView;

    invoke-static {v10, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 26
    iget-object v8, v5, Le/a/b/m/f0;->b:Landroid/view/View;

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 27
    iget-object v7, v2, Le/a/b/a/a/a/k;->c:Le/f/a/i;

    if-eqz v7, :cond_1d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "$this$loadAsAvatar"

    .line 28
    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v7, v10, v8}, Le/a/m0/a1$k;->O0(Le/f/a/i;Landroid/net/Uri;Ljava/lang/Integer;)Le/f/a/h;

    move-result-object v7

    .line 30
    iget-object v8, v5, Le/a/b/m/f0;->h:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 31
    iget-object v7, v5, Le/a/b/m/f0;->l:Landroid/widget/ImageView;

    new-instance v8, Le/a/b/a/a/a/m;

    invoke-direct {v8, v2, v6}, Le/a/b/a/a/a/m;-><init>(Le/a/b/a/a/a/k;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :goto_3
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getTags()Ljava/util/List;

    move-result-object v6

    .line 33
    invoke-virtual {v2}, Le/a/b/a/a/a/k;->PA()Le/a/b/a/a/d/b;

    move-result-object v7

    .line 34
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 35
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v14

    invoke-static {v6, v8}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 36
    iget-object v6, v7, Le/a/b/a/a/d/b;->q:Le/a/g5/p;

    invoke-interface {v6, v10, v11}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object v16

    if-eqz v16, :cond_4

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    .line 37
    iget-object v6, v7, Le/a/b/a/a/d/b;->o:Le/a/p5/h0;

    sget v7, Lcom/truecaller/bizmon/R$attr;->tcx_textSecondary:I

    invoke-interface {v6, v7}, Le/a/p5/h0;->l(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x17

    .line 38
    invoke-static/range {v16 .. v24}, Le/a/b0/p/c;->a(Le/a/b0/p/c;JLjava/lang/String;JLjava/lang/Long;Ljava/lang/String;I)Le/a/b0/p/c;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, v4

    .line 39
    :goto_4
    iget-object v7, v5, Le/a/b/m/f0;->q:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    if-eqz v6, :cond_5

    .line 40
    iget-object v8, v6, Le/a/b0/p/c;->b:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v8, v4

    .line 41
    :goto_5
    new-instance v10, Le/a/b/a/a/a/l;

    invoke-direct {v10, v2}, Le/a/b/a/a/a/l;-><init>(Le/a/b/a/a/a/k;)V

    invoke-static {v7, v8, v10, v3, v9}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    if-eqz v6, :cond_7

    .line 42
    iget-object v7, v6, Le/a/b0/p/c;->e:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 43
    iget-object v8, v5, Le/a/b/m/f0;->q:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    iget-object v9, v2, Le/a/b/a/a/a/k;->c:Le/f/a/i;

    if-eqz v9, :cond_6

    .line 44
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "iconUrl"

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v9, v7}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v7

    invoke-virtual {v8}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getBinding$bizmon_release()Le/a/b/m/k1;

    move-result-object v8

    iget-object v8, v8, Le/a/b/m/k1;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v7, v8}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 46
    iget-object v6, v6, Le/a/b0/p/c;->d:Ljava/lang/Long;

    if-eqz v6, :cond_7

    .line 47
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 48
    iget-object v8, v5, Le/a/b/m/f0;->q:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    invoke-virtual {v8}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getBinding$bizmon_release()Le/a/b/m/k1;

    move-result-object v8

    iget-object v8, v8, Le/a/b/m/k1;->c:Landroidx/appcompat/widget/AppCompatImageView;

    long-to-int v6, v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 49
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_6

    .line 50
    :cond_6
    invoke-static {v15}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 51
    :cond_7
    :goto_6
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getBackgroundColor()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_8
    move-object v6, v4

    .line 52
    :goto_7
    iget-object v7, v2, Le/a/b/a/a/a/k;->d:Le/a/b/a/b/i/d;

    const-string v8, "colorsAdapter"

    if-eqz v7, :cond_1c

    if-eqz v6, :cond_9

    .line 53
    iget-object v9, v7, Le/a/b/a/b/i/d;->b:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    goto :goto_8

    :cond_9
    move v9, v3

    .line 54
    :goto_8
    iput v9, v7, Le/a/b/a/b/i/d;->a:I

    .line 55
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 56
    iget-object v7, v2, Le/a/b/a/a/a/k;->h:Le/a/b/m/f0;

    const-string v9, "binding"

    if-eqz v7, :cond_1b

    iget-object v7, v7, Le/a/b/m/f0;->k:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v2, Le/a/b/a/a/a/k;->d:Le/a/b/a/b/i/d;

    if-eqz v10, :cond_1a

    if-eqz v6, :cond_a

    .line 57
    iget-object v8, v10, Le/a/b/a/b/i/d;->b:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    goto :goto_9

    :cond_a
    move v8, v3

    .line 58
    :goto_9
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    if-eqz v6, :cond_c

    .line 59
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_b

    goto :goto_a

    :cond_b
    move v7, v3

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v7, 0x1

    :goto_b
    const-string v8, "themedResourceProvider"

    if-eqz v7, :cond_f

    .line 60
    iget-object v3, v2, Le/a/b/a/a/a/k;->h:Le/a/b/m/f0;

    if-eqz v3, :cond_e

    iget-object v3, v3, Le/a/b/m/f0;->j:Landroid/view/View;

    const-string v6, "binding.brandBar"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v3, v2, Le/a/b/a/a/a/k;->b:Le/a/p5/h0;

    if-eqz v3, :cond_d

    sget v6, Lcom/truecaller/bizmon/R$attr;->tcx_textSecondary:I

    invoke-interface {v3, v6}, Le/a/p5/h0;->l(I)I

    move-result v3

    .line 62
    iget-object v6, v2, Le/a/b/a/a/a/k;->e:Le/a/b/a/a/a/k$b;

    if-eqz v6, :cond_12

    invoke-interface {v6, v3, v4}, Le/a/b/a/a/a/k$b;->I9(ILjava/lang/Integer;)V

    goto :goto_d

    .line 63
    :cond_d
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_e
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 65
    :cond_f
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 66
    iget-object v7, v2, Le/a/b/a/a/a/k;->b:Le/a/p5/h0;

    if-eqz v7, :cond_19

    .line 67
    invoke-static {v6}, Le/a/e/a2;->x(I)D

    move-result-wide v10

    const/high16 v12, 0x428c0000    # 70.0f

    float-to-double v12, v12

    cmpl-double v10, v10, v12

    if-lez v10, :cond_10

    const/4 v3, 0x1

    :cond_10
    if-eqz v3, :cond_11

    .line 68
    sget v3, Lcom/truecaller/bizmon/R$color;->tcx_textSecondary_light:I

    goto :goto_c

    :cond_11
    sget v3, Lcom/truecaller/bizmon/R$color;->tcx_textSecondary_dark:I

    .line 69
    :goto_c
    invoke-interface {v7, v3}, Le/a/p5/c0;->a(I)I

    move-result v3

    .line 70
    iget-object v7, v2, Le/a/b/a/a/a/k;->h:Le/a/b/m/f0;

    if-eqz v7, :cond_18

    iget-object v7, v7, Le/a/b/m/f0;->j:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    iget-object v7, v2, Le/a/b/a/a/a/k;->e:Le/a/b/a/a/a/k$b;

    if-eqz v7, :cond_12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v3, v6}, Le/a/b/a/a/a/k$b;->I9(ILjava/lang/Integer;)V

    .line 72
    :cond_12
    :goto_d
    iget-object v3, v5, Le/a/b/m/f0;->m:Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getImageUrls()Ljava/util/List;

    move-result-object v6

    goto :goto_e

    :cond_13
    move-object v6, v4

    :goto_e
    invoke-static {v2}, Le/a/m0/a1$k;->M1(Landroidx/fragment/app/Fragment;)Le/a/z3/e;

    move-result-object v7

    const-string v9, "GlideApp.with(this@BizProfileFragment)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7, v2}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->f1(Ljava/util/List;Le/f/a/i;Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;)V

    .line 73
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getImageUrls()Ljava/util/List;

    move-result-object v3

    goto :goto_f

    :cond_14
    move-object v3, v4

    :goto_f
    iput-object v3, v2, Le/a/b/a/a/a/k;->f:Ljava/util/List;

    .line 74
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-static {v3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getOpenHours()Ljava/util/List;

    move-result-object v3

    goto :goto_10

    :cond_15
    move-object v3, v4

    .line 75
    :goto_10
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLocId()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_16
    move-object v1, v4

    .line 76
    :goto_11
    iget-object v5, v5, Le/a/b/m/f0;->i:Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;

    iget-object v6, v2, Le/a/b/a/a/a/k;->b:Le/a/p5/h0;

    if-eqz v6, :cond_17

    invoke-virtual {v5, v3, v1, v6, v2}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->g1(Ljava/util/List;Ljava/lang/String;Le/a/p5/h0;Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;)V

    goto/16 :goto_13

    :cond_17
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_18
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_19
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_1a
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_1b
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_1c
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_1d
    invoke-static {v15}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_1e
    instance-of v2, v1, Le/a/b/l/q$b;

    if-eqz v2, :cond_1f

    .line 83
    iget-object v1, v0, Le/a/b/a/a/a/r;->a:Le/a/b/a/a/a/k;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/n/g0;->u(Landroid/app/Activity;)V

    .line 84
    iget-object v1, v0, Le/a/b/a/a/a/r;->b:Le/a/b/m/f0;

    iget-object v1, v1, Le/a/b/m/f0;->o:Landroid/widget/ProgressBar;

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_13

    .line 85
    :cond_1f
    instance-of v2, v1, Le/a/b/l/q$a;

    if-eqz v2, :cond_22

    .line 86
    iget-object v2, v0, Le/a/b/a/a/a/r;->a:Le/a/b/a/a/a/k;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/n/g0;->w(Landroid/app/Activity;)V

    .line 87
    iget-object v2, v0, Le/a/b/a/a/a/r;->b:Le/a/b/m/f0;

    iget-object v2, v2, Le/a/b/m/f0;->o:Landroid/widget/ProgressBar;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 88
    iget-object v2, v0, Le/a/b/a/a/a/r;->a:Le/a/b/a/a/a/k;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v2

    const-string v5, "Error: "

    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 89
    iget-object v6, v1, Le/a/b/l/q;->b:Ljava/lang/String;

    if-eqz v6, :cond_20

    move-object v4, v6

    goto :goto_12

    .line 90
    :cond_20
    check-cast v1, Le/a/b/l/q$a;

    .line 91
    iget-object v1, v1, Le/a/b/l/q$a;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_21

    .line 92
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v4, v0, Le/a/b/a/a/a/r;->a:Le/a/b/a/a/a/k;

    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_21
    :goto_12
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_22
    :goto_13
    return-void
.end method
