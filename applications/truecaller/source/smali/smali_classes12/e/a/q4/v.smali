.class public Le/a/q4/v;
.super Le/a/d5/g/n;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/referral/BulkSmsView;


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Le/a/q4/t;

.field public c:Landroid/widget/Button;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/ViewGroup;

.field public h:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Le/a/q4/x;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Landroidx/recyclerview/widget/RecyclerView$t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/d5/g/n;-><init>()V

    return-void
.end method

.method public static OA(Ljava/lang/String;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)Le/a/q4/v;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-static/range {v0 .. v5}, Le/a/q4/v;->PA(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;Z)Le/a/q4/v;

    move-result-object p0

    return-object p0
.end method

.method public static PA(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;Z)Le/a/q4/v;
    .locals 3

    .line 1
    new-instance v0, Le/a/q4/v;

    invoke-direct {v0}, Le/a/q4/v;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SHARE_TEXT"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "CAMPAIGN_ID"

    .line 4
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "LAUNCH_CONTEXT"

    .line 5
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    .line 8
    invoke-static {p0, p3}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p3, "CONTACT"

    .line 9
    invoke-virtual {p0, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "LAYOUT_RES"

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    const-string p1, "CONTACT_HAS_WHATSAPP_PROFILE"

    .line 11
    invoke-virtual {p0, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public Cu(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/v;->b:Le/a/q4/t;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    return-void
.end method

.method public Ek(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/messaging/newconversation/NewConversationActivity;->a:I

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "participants"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/messaging/newconversation/NewConversationActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "pre_fill_participants"

    .line 5
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 6
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Il(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public Ja(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/v;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Le/a/q4/v;->i:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Le/a/q4/v;->j:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/q4/v;->i:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Le/a/q4/v;->i:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Lu()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public Lz()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/v;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public Nf(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public P6(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/q4/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 2
    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 4
    iget-object p2, p0, Le/a/q4/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public QA(I[I[Ljava/lang/String;[I[I[I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q4/v;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Le/a/q4/v;->g:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move v0, v1

    .line 3
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 4
    aget v2, p2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    move p2, v1

    .line 5
    :goto_1
    array-length p3, p4

    if-ge p2, p3, :cond_1

    .line 6
    aget p3, p4, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    aget v0, p5, p2

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz p6, :cond_2

    .line 7
    array-length p2, p6

    :goto_2
    if-ge v1, p2, :cond_2

    aget p3, p6, v1

    .line 8
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/q4/v;->g:Landroid/view/ViewGroup;

    const p2, 0x7f0a1245

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/q4/v;->j:Landroid/widget/TextView;

    return-void
.end method

.method public RA(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a1021

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0467

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/truecaller/ui/view/ContactPhoto;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/truecaller/ui/view/ContactPhoto;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    const p1, 0x7f0a0c14

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0c70

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6
    invoke-static {p2, p3}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public SA(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/v;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public T9()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/v;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public Uo(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/v;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/v;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    return-void
.end method

.method public ih()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/v;->b:Le/a/q4/t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public mh(Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/details_view/analytics/SourceType;ZZZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p5

    iget-object v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->f:Ljava/lang/String;

    const-string v4, "context"

    .line 2
    invoke-static {p5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "source"

    invoke-static {p2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v5, p5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p5, "ARG_TC_ID"

    .line 4
    invoke-virtual {v5, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "NAME"

    .line 5
    invoke-virtual {v5, p5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "NORMALIZED_NUMBER"

    .line 6
    invoke-virtual {v5, p5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "RAW_NUMBER"

    .line 7
    invoke-virtual {v5, p5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "COUNTRY_CODE"

    .line 8
    invoke-virtual {v5, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "ARG_SOURCE_TYPE"

    invoke-virtual {v5, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SHOULD_SAVE"

    .line 10
    invoke-virtual {v5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 11
    invoke-virtual {v5, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SEARCH_TYPE"

    const/16 p2, 0xe

    .line 12
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 14
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "intentWithExtras"

    invoke-static {v5, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q4/v;->k:Le/a/q4/x;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p2, v3, :cond_1

    .line 3
    invoke-virtual {v0}, Le/a/q4/x;->Kj()V

    goto :goto_0

    .line 4
    :cond_1
    check-cast v1, Lcom/truecaller/referral/BulkSmsView;

    iget-object p1, v0, Le/a/q4/x;->h:Le/a/p5/c0;

    const p2, 0x7f120e8a

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/truecaller/referral/BulkSmsView;->Nf(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v3, :cond_2

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Le/a/q4/x;->Ij(Z)V

    goto :goto_0

    .line 6
    :cond_2
    check-cast v1, Lcom/truecaller/referral/BulkSmsView;

    iget-object p1, v0, Le/a/q4/x;->h:Le/a/p5/c0;

    const p2, 0x7f120e89

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/truecaller/referral/BulkSmsView;->Nf(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-ne p2, v3, :cond_3

    .line 7
    check-cast v1, Lcom/truecaller/referral/BulkSmsView;

    invoke-interface {v1, p3}, Lcom/truecaller/referral/BulkSmsView;->p8(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Le/a/q4/x;->Hj(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ln3/r/a/k;->setStyle(II)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "SHARE_TEXT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CONTACT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    new-array v0, v0, [Ljava/lang/String;

    .line 5
    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Le/a/q4/w;

    invoke-direct {v2, p1, v1}, Le/a/q4/w;-><init>(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;)V

    .line 9
    new-instance p1, Le/a/q4/n0;

    const/16 v1, 0xa

    invoke-direct {p1, v1}, Le/a/q4/n0;-><init>(I)V

    .line 10
    const-class v1, Le/a/q4/n0;

    invoke-static {p1, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    const-class v1, Le/a/q4/w;

    invoke-static {v2, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    const-class v1, Le/a/j2;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    new-instance v1, Le/a/q4/a0;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v0, v3}, Le/a/q4/a0;-><init>(Le/a/q4/n0;Le/a/q4/w;Le/a/j2;Le/a/q4/a0$a;)V

    .line 14
    iget-object p1, v1, Le/a/q4/a0;->l:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Le/a/q4/x;

    iput-object p1, p0, Le/a/q4/v;->k:Le/a/q4/x;

    .line 16
    new-instance v0, Le/a/q4/t;

    invoke-direct {v0, p1}, Le/a/q4/t;-><init>(Le/a/q4/x;)V

    iput-object v0, p0, Le/a/q4/v;->b:Le/a/q4/t;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0432

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/a/q4/v;->k:Le/a/q4/x;

    invoke-virtual {v0}, Le/a/q4/x;->c()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p2, p3}, Le/a/p5/s0/g;->M0([Ljava/lang/String;[I)V

    .line 3
    iget-object v0, p0, Le/a/q4/v;->k:Le/a/q4/x;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x66

    if-eq p1, v1, :cond_0

    const/16 v2, 0x67

    if-ne p1, v2, :cond_3

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 5
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_3

    .line 6
    aget-object v4, p2, v3

    const-string v5, "android.permission.SEND_SMS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    aget v4, p3, v3

    if-nez v4, :cond_2

    if-ne p1, v1, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Le/a/q4/x;->Ij(Z)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Le/a/q4/x;->Kj()V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Le/a/q4/v;->k:Le/a/q4/x;

    .line 3
    iget-object v1, v0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    const-string v2, "contacts"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4
    iget-boolean v1, v0, Le/a/q4/x;->r:Z

    const-string v2, "CONTACT_HAS_WHATSAPP_PROFILE"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object v1, v0, Le/a/q4/x;->m:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v2, "LAUNCH_CONTEXT"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    iget-object v1, v0, Le/a/q4/x;->q:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "CAMPAIGN_ID"

    .line 7
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, v0, Le/a/q4/x;->l:Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    if-eqz v0, :cond_1

    const-string v1, "LAYOUT_RES"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln3/r/a/k;->onStart()V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a08de

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Le/a/q4/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0a5d

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Le/a/q4/v;->c:Landroid/widget/Button;

    const v0, 0x7f0a0624

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le/a/q4/v;->e:Landroid/view/View;

    const v0, 0x7f0a0b3c

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le/a/q4/v;->d:Landroid/view/View;

    const v0, 0x7f0a0e67

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le/a/q4/v;->f:Landroid/view/View;

    const v0, 0x7f0a0dae

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Le/a/q4/v;->g:Landroid/view/ViewGroup;

    .line 8
    iget-object v0, p0, Le/a/q4/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object v0, p0, Le/a/q4/v;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    const v0, 0x7f0a005f

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0a63

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/q4/v;->i:Landroid/widget/TextView;

    .line 11
    iget-object p1, p0, Le/a/q4/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Le/a/q4/v;->b:Le/a/q4/t;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 12
    new-instance p1, Le/a/q4/v$a;

    invoke-direct {p1, p0}, Le/a/q4/v$a;-><init>(Le/a/q4/v;)V

    iput-object p1, p0, Le/a/q4/v;->l:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 13
    iget-object v1, p0, Le/a/q4/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 14
    iget-object p1, p0, Le/a/q4/v;->c:Landroid/widget/Button;

    new-instance v1, Le/a/q4/f;

    invoke-direct {v1, p0}, Le/a/q4/f;-><init>(Le/a/q4/v;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Le/a/q4/v;->f:Landroid/view/View;

    new-instance v1, Le/a/q4/e;

    invoke-direct {v1, p0}, Le/a/q4/e;-><init>(Le/a/q4/v;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance p1, Le/a/q4/d;

    invoke-direct {p1, p0}, Le/a/q4/d;-><init>(Le/a/q4/v;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Le/a/q4/v;->k:Le/a/q4/x;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, "LAUNCH_CONTEXT"

    .line 18
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    new-array v1, v0, [Ljava/lang/String;

    .line 19
    invoke-static {v5, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 20
    new-instance v1, Lcom/truecaller/referral/BulkSmsView$a;

    const-string v2, "contacts"

    .line 21
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v2, "LAYOUT_RES"

    .line 22
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    const-string v2, "CAMPAIGN_ID"

    .line 23
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "CONTACT_HAS_WHATSAPP_PROFILE"

    .line 24
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/truecaller/referral/BulkSmsView$a;-><init>(Ljava/util/List;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 26
    iget-object p2, v1, Lcom/truecaller/referral/BulkSmsView$a;->a:Ljava/util/List;

    .line 27
    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    .line 28
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 29
    invoke-virtual {p1, p2}, Le/a/q4/x;->Hj(Ljava/util/List;)V

    .line 30
    :cond_2
    iget-object p2, v1, Lcom/truecaller/referral/BulkSmsView$a;->b:Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    .line 31
    iput-object p2, p1, Le/a/q4/x;->l:Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    .line 32
    iget-object p2, v1, Lcom/truecaller/referral/BulkSmsView$a;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 33
    iput-object p2, p1, Le/a/q4/x;->m:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 34
    iget-object p2, v1, Lcom/truecaller/referral/BulkSmsView$a;->d:Ljava/lang/String;

    .line 35
    iput-object p2, p1, Le/a/q4/x;->q:Ljava/lang/String;

    .line 36
    iget-boolean p2, v1, Lcom/truecaller/referral/BulkSmsView$a;->e:Z

    .line 37
    iput-boolean p2, p1, Le/a/q4/x;->r:Z

    .line 38
    :cond_3
    iget-object p1, p0, Le/a/q4/v;->k:Le/a/q4/x;

    .line 39
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 40
    iget-object p2, p1, Le/a/q4/x;->l:Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    if-eqz p2, :cond_4

    .line 41
    iget v2, p2, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->a:I

    iget-object v3, p2, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->b:[I

    iget-object v4, p2, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->c:[Ljava/lang/String;

    iget-object v5, p2, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->d:[I

    iget-object v6, p2, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->e:[I

    iget-object v7, p2, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->f:[I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Le/a/q4/v;->QA(I[I[Ljava/lang/String;[I[I[I)V

    .line 42
    :cond_4
    iget-object p2, p1, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    .line 43
    iget-object v2, p1, Le/a/q4/x;->f:Le/a/o5/f0;

    iget-wide v3, p2, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object p2, p2, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p2, v1}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object p2

    .line 44
    iget-object v2, p1, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v2}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    .line 45
    invoke-static {v3}, Le/a/c/p/a;->J0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {p0, p2, v2, v3}, Le/a/q4/v;->RA(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_5
    invoke-virtual {p1}, Le/a/q4/x;->Jj()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 48
    invoke-virtual {p1, v0}, Le/a/q4/x;->Nj(Z)V

    .line 49
    invoke-virtual {p0, v0}, Le/a/q4/v;->f(Z)V

    .line 50
    invoke-virtual {p0, v0}, Le/a/q4/v;->Uo(Z)V

    .line 51
    invoke-virtual {p0, v1}, Le/a/q4/v;->xt(Z)V

    .line 52
    invoke-virtual {p0, v0}, Le/a/q4/v;->SA(Z)V

    goto :goto_3

    .line 53
    :cond_6
    iget-object p2, p1, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    if-nez p2, :cond_8

    iget-object p2, p1, Le/a/q4/x;->l:Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    move p2, v0

    goto :goto_2

    :cond_8
    :goto_1
    move p2, v1

    :goto_2
    invoke-virtual {p0, p2}, Le/a/q4/v;->SA(Z)V

    .line 54
    iget-object p2, p1, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 55
    invoke-virtual {p1, v0}, Le/a/q4/x;->Nj(Z)V

    .line 56
    invoke-virtual {p0, v1}, Le/a/q4/v;->f(Z)V

    .line 57
    invoke-virtual {p0, v0}, Le/a/q4/v;->Uo(Z)V

    .line 58
    iget-object p2, p1, Le/a/q4/x;->n:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q4/h0;

    invoke-interface {p2}, Le/a/q4/h0;->c()Le/a/r2/x;

    move-result-object p2

    iget-object v0, p1, Le/a/q4/x;->o:Le/a/r2/j;

    new-instance v1, Le/a/q4/g;

    invoke-direct {v1, p1}, Le/a/q4/g;-><init>(Le/a/q4/x;)V

    invoke-virtual {p2, v0, v1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object p2

    iput-object p2, p1, Le/a/q4/x;->p:Le/a/r2/a;

    goto :goto_3

    .line 59
    :cond_9
    invoke-virtual {p0}, Le/a/q4/v;->ih()V

    .line 60
    invoke-virtual {p1, p0}, Le/a/q4/x;->Pj(Lcom/truecaller/referral/BulkSmsView;)V

    :goto_3
    return-void
.end method

.method public p8(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RESULT_PARTICIPANTS"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q0(I)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "android.permission.SEND_SMS"

    .line 1
    invoke-static {p0, v1, p1, v0}, Le/a/p5/s0/g;->d1(Landroidx/fragment/app/Fragment;Ljava/lang/String;IZ)Z

    return-void
.end method

.method public tw(Z)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le/a/q4/v;->Uo(Z)V

    .line 2
    iget-object p1, p0, Le/a/q4/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Le/a/q4/v;->l:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    return-void
.end method

.method public xt(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/v;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
