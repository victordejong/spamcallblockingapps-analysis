.class public final Le/a/l/c/a/b;
.super Le/a/l/c/a/g;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/g1;


# instance fields
.field public final d:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/EditText;

.field public final h:Lcom/google/android/material/textfield/TextInputLayout;

.field public final i:Lcom/google/android/material/textfield/TextInputLayout;

.field public final j:Landroid/widget/EditText;

.field public final k:Landroid/widget/EditText;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/widget/TextView;

.field public final n:Landroid/widget/TextView;

.field public final o:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/ghost_call/ScheduleDuration;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;Landroidx/fragment/app/FragmentManager;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemEventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/l/c/a/g;-><init>(Landroid/view/View;Le/a/o2/m;)V

    iput-object p2, p0, Le/a/l/c/a/b;->p:Le/a/o2/m;

    const p2, 0x7f0a0375

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    iput-object p2, p0, Le/a/l/c/a/b;->d:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    const v0, 0x7f0a01b7

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/l/c/a/b;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a0675

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/l/c/a/b;->f:Landroid/widget/ImageView;

    const v1, 0x7f0a066c

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Le/a/l/c/a/b;->g:Landroid/widget/EditText;

    const v2, 0x7f0a0459

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v2, p0, Le/a/l/c/a/b;->h:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f0a0454

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v2, p0, Le/a/l/c/a/b;->i:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f0a0453

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Le/a/l/c/a/b;->j:Landroid/widget/EditText;

    const v2, 0x7f0a0458

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Le/a/l/c/a/b;->k:Landroid/widget/EditText;

    const v3, 0x7f0a0ea9

    .line 10
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Le/a/l/c/a/b;->l:Landroid/widget/TextView;

    const v4, 0x7f0a0382

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Le/a/l/c/a/b;->m:Landroid/widget/TextView;

    const v5, 0x7f0a0d1f

    .line 12
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/l/c/a/b;->n:Landroid/widget/TextView;

    .line 13
    new-instance v5, Le/a/l/c/a/b$d;

    invoke-direct {v5, p0}, Le/a/l/c/a/b$d;-><init>(Le/a/l/c/a/b;)V

    iput-object v5, p0, Le/a/l/c/a/b;->o:Ls1/z/b/l;

    const-string v5, "contactPhone"

    .line 14
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 15
    new-instance v2, Le/a/l/c/a/b$a;

    const/4 v5, 0x0

    invoke-direct {v2, v5, p0}, Le/a/l/c/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v2, Le/a/l/c/a/b$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Le/a/l/c/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v2, Le/a/l/c/a/b$a;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Le/a/l/c/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance p1, Le/a/l/c/a/b$a;

    const/4 v2, 0x3

    invoke-direct {p1, v2, p0}, Le/a/l/c/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance p1, Le/a/l/c/a/b$b;

    invoke-direct {p1, p0, p3}, Le/a/l/c/a/b$b;-><init>(Le/a/l/c/a/b;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "durationPicker"

    .line 20
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/truecaller/ghost_call/ScheduleDuration;->IMMEDIATE:Lcom/truecaller/ghost_call/ScheduleDuration;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 21
    new-instance p1, Le/a/l/c/a/b$c;

    invoke-direct {p1, p0}, Le/a/l/c/a/b$c;-><init>(Le/a/l/c/a/b;)V

    invoke-virtual {p2, p1}, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->setOnCountDownTimerStateListener(Ls1/z/b/l;)V

    const-string p1, "sans-serif-medium"

    .line 22
    invoke-static {p1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->setTimerFontFamily(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public B3(J)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/l/c/a/b;->l:Landroid/widget/TextView;

    const-string v1, "btnScheduleCall"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/l/c/a/b;->n:Landroid/widget/TextView;

    const-string v1, "btnPickContact"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Le/a/l/c/a/b;->m:Landroid/widget/TextView;

    const-string v1, "btnCancelCall"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Le/a/l/c/a/b;->d:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    const-string v1, "callingTimer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Le/a/l/c/a/b;->d:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    .line 6
    new-instance v7, Lw3/b/a/i0/n;

    invoke-direct {v7}, Lw3/b/a/i0/n;-><init>()V

    const/4 v8, 0x4

    .line 7
    iput v8, v7, Lw3/b/a/i0/n;->b:I

    const/4 v9, 0x2

    .line 8
    iput v9, v7, Lw3/b/a/i0/n;->a:I

    const/4 v1, 0x5

    .line 9
    invoke-virtual {v7, v1}, Lw3/b/a/i0/n;->b(I)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v3, ":"

    move-object v1, v7

    move-object v2, v3

    .line 10
    invoke-virtual/range {v1 .. v6}, Lw3/b/a/i0/n;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lw3/b/a/i0/n;

    .line 11
    iput v8, v7, Lw3/b/a/i0/n;->b:I

    .line 12
    iput v9, v7, Lw3/b/a/i0/n;->a:I

    const/4 v1, 0x6

    .line 13
    invoke-virtual {v7, v1}, Lw3/b/a/i0/n;->b(I)V

    .line 14
    invoke-virtual {v7}, Lw3/b/a/i0/n;->g()Lw3/b/a/i0/m;

    move-result-object v1

    const-string v2, "PeriodFormatterBuilder()\u2026ndSeconds().toFormatter()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->setPeriodFormatter(Lw3/b/a/i0/m;)V

    .line 16
    iget-object v0, p0, Le/a/l/c/a/b;->d:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    invoke-virtual {v0, p1, p2}, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->h1(J)V

    return-void
.end method

.method public D4(Lcom/truecaller/ghost_call/ScheduleDuration;)V
    .locals 4

    const-string v0, "scheduledDuration"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/c/a/b;->g:Landroid/widget/EditText;

    const-string v1, "durationPicker"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/l/c/a/b;->g:Landroid/widget/EditText;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/truecaller/ghost_call/ScheduleDuration;->getTitleRes()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Le/a/l/c/a/b;->g:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestLayout()V

    return-void
.end method

.method public L4(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    const-string v1, "avatar"

    if-eqz p1, :cond_0

    .line 1
    iget-object v2, p0, Le/a/l/c/a/b;->e:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Le/a/l/c/a/b;->p:Le/a/o2/m;

    new-instance v3, Le/a/o2/h;

    iget-object v4, p0, Le/a/l/c/a/b;->k:Landroid/widget/EditText;

    const-string v5, "contactPhone"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Le/a/l/c/a/b0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v6

    invoke-direct {v5, p1, v6}, Le/a/l/c/a/b0;-><init>(Ljava/lang/String;I)V

    const-string v6, "ItemEvent.PICTURE_CHANGED"

    invoke-direct {v3, v6, p0, v4, v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 3
    :cond_0
    iget-object v2, p0, Le/a/l/c/a/b;->e:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Le/a/l/c/a/b;->f:Landroid/widget/ImageView;

    const-string v2, "editAvatar"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Le/a/l/c/a/b;->e:Landroid/widget/ImageView;

    const v0, 0x7f0803d8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p0, Le/a/l/c/a/b;->e:Landroid/widget/ImageView;

    new-instance v0, Le/a/l/c/a/b$g;

    invoke-direct {v0, p0}, Le/a/l/c/a/b$g;-><init>(Le/a/l/c/a/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    const-string v1, "GlideApp.with(itemView.context)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Le/a/m0/a1$k;->O0(Le/f/a/i;Landroid/net/Uri;Ljava/lang/Integer;)Le/f/a/h;

    move-result-object p1

    const v0, 0x7f0806f4

    .line 9
    invoke-virtual {p1, v0}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 10
    invoke-virtual {p1, v0}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 11
    iget-object v0, p0, Le/a/l/c/a/b;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 12
    iget-object p1, p0, Le/a/l/c/a/b;->e:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public q3()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/c/a/b;->l:Landroid/widget/TextView;

    const-string v1, "btnScheduleCall"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/l/c/a/b;->n:Landroid/widget/TextView;

    const-string v1, "btnPickContact"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Le/a/l/c/a/b;->d:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    const-string v1, "callingTimer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Le/a/l/c/a/b;->d:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    .line 5
    iget-object v1, v0, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->y:Ls1/z/b/l;

    if-eqz v1, :cond_0

    sget-object v2, Le/a/l/v2/f/b$a;->a:Le/a/l/v2/f/b$a;

    invoke-interface {v1, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/s;

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->g1()V

    .line 7
    iget-object v0, p0, Le/a/l/c/a/b;->m:Landroid/widget/TextView;

    const-string v1, "btnCancelCall"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 3

    const-string v0, "contactPhone"

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Le/a/l/c/a/b;->k:Landroid/widget/EditText;

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/l/c/a/b;->k:Landroid/widget/EditText;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/c/a/b$e;

    invoke-direct {v0, p0}, Le/a/l/c/a/b$e;-><init>(Le/a/l/c/a/b;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "contactName"

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Le/a/l/c/a/b;->j:Landroid/widget/EditText;

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/l/c/a/b;->j:Landroid/widget/EditText;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/c/a/b$f;

    invoke-direct {v0, p0}, Le/a/l/c/a/b$f;-><init>(Le/a/l/c/a/b;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    return-void
.end method

.method public t2()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/c/a/b;->d:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->z:J

    return-void
.end method
