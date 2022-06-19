.class public final Le/a/a/e/f$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/f;->a6(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.inboxcleanup.InboxCleanupShareHelperImpl$share$1"
    f = "InboxCleanupShareHelper.kt"
    l = {
        0x57
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/e/f;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public constructor <init>(Le/a/a/e/f;Landroid/content/Context;IIILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/f$b;->g:Le/a/a/e/f;

    iput-object p2, p0, Le/a/a/e/f$b;->h:Landroid/content/Context;

    iput p3, p0, Le/a/a/e/f$b;->i:I

    iput p4, p0, Le/a/a/e/f$b;->j:I

    iput p5, p0, Le/a/a/e/f$b;->k:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/e/f$b;

    iget-object v1, p0, Le/a/a/e/f$b;->g:Le/a/a/e/f;

    iget-object v2, p0, Le/a/a/e/f$b;->h:Landroid/content/Context;

    iget v3, p0, Le/a/a/e/f$b;->i:I

    iget v4, p0, Le/a/a/e/f$b;->j:I

    iget v5, p0, Le/a/a/e/f$b;->k:I

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/a/e/f$b;-><init>(Le/a/a/e/f;Landroid/content/Context;IIILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/e/f$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/e/f$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/e/f$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/e/f$b;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/a/e/f$b;->e:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/e/f$b;->g:Le/a/a/e/f;

    iget-object v1, p0, Le/a/a/e/f$b;->h:Landroid/content/Context;

    iget v3, p0, Le/a/a/e/f$b;->i:I

    iget v4, p0, Le/a/a/e/f$b;->j:I

    iget v5, p0, Le/a/a/e/f$b;->k:I

    .line 5
    iget-object v6, p1, Le/a/a/e/f;->c:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "layout_inflater"

    .line 7
    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/LayoutInflater;

    const v7, 0x7f0d0254

    const/4 v8, 0x0

    .line 8
    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v7, "inflater.inflate(R.layou\u2026cleaner_share_view, null)"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f0a1305

    .line 9
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "view.findViewById<TextView>(R.id.txtOtpCount)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0a1304

    .line 10
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "view.findViewById<TextView>(R.id.txtOtp)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p1, Le/a/a/e/f;->i:Le/a/p5/c0;

    const v9, 0x7f10003e

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v3, v11}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f0a130a

    const-string v9, "view.findViewById<TextVi\u2026R.id.txtPromotionalCount)"

    invoke-static {v7, v3, v1, v8, v9}, Le/d/c/a/a;->f1(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 11
    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a1309

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v7, "view.findViewById<TextView>(R.id.txtPromotional)"

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 13
    iget-object v7, p1, Le/a/a/e/f;->i:Le/a/p5/c0;

    const v8, 0x7f10003f

    new-array v9, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v4, v9}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f0a1311

    const-string v8, "view.findViewById<TextView>(R.id.txtSpamCount)"

    invoke-static {v3, v4, v1, v7, v8}, Le/d/c/a/a;->f1(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 14
    check-cast v3, Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a1310

    .line 15
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "view.findViewById<TextView>(R.id.txtSpam)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Le/a/a/e/f;->i:Le/a/p5/c0;

    const v7, 0x7f100040

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v4, v7, v5, v8}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a1315

    const-string v7, "view.findViewById<TextView>(R.id.txtSubtitle)"

    invoke-static {v3, v4, v1, v5, v7}, Le/d/c/a/a;->f1(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 16
    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a1179

    const-string v5, "view.findViewById<TextView>(R.id.text)"

    invoke-static {v3, v6, v1, v4, v5}, Le/d/c/a/a;->f1(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 17
    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Le/a/a/e/f;->i:Le/a/p5/c0;

    const v5, 0x7f120c53

    new-array v6, v10, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a08d8

    .line 18
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "view.findViewById<Group>(R.id.groupPromotional)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Le/a/a/e/f;->h:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    invoke-static {v3, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 19
    iget-object p1, p0, Le/a/a/e/f$b;->g:Le/a/a/e/f;

    .line 20
    iget-object v3, p1, Le/a/a/e/f;->j:Le/a/b0/q/q;

    .line 21
    iput-object p1, p0, Le/a/a/e/f$b;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/a/e/f$b;->f:I

    const/16 v2, 0x294

    invoke-interface {v3, v1, v2, v2, p0}, Le/a/b0/q/q;->a(Landroid/view/View;IILs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Landroid/net/Uri;

    .line 22
    iput-object p1, v0, Le/a/a/e/f;->d:Landroid/net/Uri;

    .line 23
    iget-object p1, p0, Le/a/a/e/f$b;->g:Le/a/a/e/f;

    .line 24
    iget-object v0, p1, Le/a/a/e/f;->d:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {p1}, Le/a/a/e/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v2, p1, Le/a/a/e/f;->e:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {p1, v0}, Le/a/a/e/f;->b(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Le/a/a/e/f;->f(Landroid/content/Intent;)Z

    move-result v3

    const-string v4, "com.whatsapp"

    .line 28
    invoke-virtual {p1, v1, v0, v4}, Le/a/a/e/f;->c(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1, v4}, Le/a/a/e/f;->f(Landroid/content/Intent;)Z

    move-result v4

    const-string v5, "com.facebook.orca"

    .line 29
    invoke-virtual {p1, v1, v0, v5}, Le/a/a/e/f;->c(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p1, v5}, Le/a/a/e/f;->f(Landroid/content/Intent;)Z

    move-result v5

    const-string v6, "com.twitter.android"

    .line 30
    invoke-virtual {p1, v1, v0, v6}, Le/a/a/e/f;->c(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/a/e/f;->f(Landroid/content/Intent;)Z

    move-result p1

    .line 31
    invoke-static {v2, v3, v4, v5, p1}, Le/a/u/a;->OA(Landroidx/fragment/app/FragmentManager;ZZZZ)V

    .line 32
    :cond_3
    iget-object p1, p0, Le/a/a/e/f$b;->g:Le/a/a/e/f;

    .line 33
    iget-object p1, p1, Le/a/a/e/f;->k:Le/a/q2/a;

    const-string v0, "Ci4-ShareDialogOpened"

    const-string v1, "type"

    .line 34
    invoke-static {v0, v1}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 35
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 36
    invoke-static {v0, v2, v1, v3, p1}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    .line 37
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
