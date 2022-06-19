.class public abstract Le/a/a/c/a/b;
.super Le/a/a/c/r8/c;
.source "SourceFile"


# instance fields
.field public final b:Ls1/g;

.field public c:Le/a/c/c0/k;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/a/c/a/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final e:Landroidx/constraintlayout/widget/Group;

.field public final f:Landroid/widget/TextView;

.field public final g:Lcom/airbnb/lottie/LottieAnimationView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/ImageView;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroidx/constraintlayout/widget/Group;

.field public final m:Ls1/g;

.field public final n:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/c/r8/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/c/a/b;->n:Landroid/view/View;

    .line 2
    new-instance v0, Le/a/a/c/a/b$b;

    invoke-direct {v0, p0}, Le/a/a/c/a/b$b;-><init>(Le/a/a/c/a/b;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/a/b;->b:Ls1/g;

    const v0, 0x7f0a0743

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Le/a/a/c/a/b;->e:Landroidx/constraintlayout/widget/Group;

    const v0, 0x7f0a0748

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/a/c/a/b;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0749

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Le/a/a/c/a/b;->g:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a144f

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/a/c/a/b;->h:Landroid/widget/TextView;

    const v0, 0x7f0a0c3c

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/a/c/a/b;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0621

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/a/c/a/b;->j:Landroid/widget/ImageView;

    const v0, 0x7f0a0747

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/a/c/a/b;->k:Landroid/widget/TextView;

    const v0, 0x7f0a0744

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Le/a/a/c/a/b;->l:Landroidx/constraintlayout/widget/Group;

    const v0, 0x7f0a0f13

    .line 11
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/a/b;->m:Ls1/g;

    return-void
.end method

.method public static final a(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;Le/a/c/r/j/s;)V
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Le/a/c/a/b/a/a;->h:Le/a/c/a/b/a/a$c;

    new-instance v8, Le/a/a/c/a/d;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Le/a/a/c/a/d;-><init>(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;Le/a/c/r/j/s;)V

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "consentListener"

    invoke-static {v8, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Le/a/c/a/b/a/a;

    invoke-direct {p1}, Le/a/c/a/b/a/a;-><init>()V

    .line 5
    iput-object v8, p1, Le/a/c/a/b/a/a;->a:Ls1/z/b/l;

    .line 6
    iget-object p0, p0, Le/a/a/c/a/b;->n:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.truecaller.messaging.conversation.ConversationActivity"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 7
    sget-object p2, Le/a/c/a/b/a/a;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p0, p2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;ZLjava/lang/String;Le/a/c/r/j/s;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p9, p8, 0x20

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_1

    move-object p7, v0

    .line 1
    :cond_1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p8, "onFeedbackGiven"

    invoke-static {p1, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "cardFeedBackType"

    invoke-static {p2, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "message"

    invoke-static {p3, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "infoCardCategory"

    invoke-static {p4, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackSubclass()Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    move-result-object p8

    sget-object p9, Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;->DISMISS:Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    if-eq p8, p9, :cond_2

    .line 3
    invoke-virtual {p0, p2, p1}, Le/a/a/c/a/b;->e(Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Ls1/z/b/l;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p1, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :cond_3
    :goto_0
    if-eqz p7, :cond_4

    .line 6
    new-instance p0, Le/a/c/r/j/o;

    invoke-direct {p0, p2}, Le/a/c/r/j/o;-><init>(Lcom/truecaller/insights/models/smartcards/CardFeedBackType;)V

    const-string p1, "<set-?>"

    .line 7
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p0, p7, Le/a/c/r/j/s;->g:Le/a/c/r/j/o;

    .line 9
    :cond_4
    new-instance p0, Le/a/c/r/j/k;

    .line 10
    invoke-static {p3, p6}, Le/a/c/p/a;->c3(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)Le/a/c/h/m/c;

    move-result-object v1

    .line 11
    iget p1, p3, Lcom/truecaller/messaging/data/types/Message;->t:I

    invoke-static {p1}, Le/a/m0/e;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Le/a/c/r/j/k;-><init>(Le/a/c/h/m/c;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Le/a/c/r/j/p;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Le/a/c/r/j/f;->d()V

    return-void
.end method


# virtual methods
.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/a/a/c/a/b;->m:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final d(Le/a/c/i/e/b;Le/a/c/r/j/h;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Lcom/truecaller/messaging/data/types/Message;Ls1/z/b/l;Le/a/c/r/j/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/i/e/b;",
            "Le/a/c/r/j/h;",
            "Le/a/c/r/j/p;",
            "Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/insights/models/smartcards/CardFeedBackType;",
            "Ls1/s;",
            ">;",
            "Le/a/c/r/j/s;",
            ")V"
        }
    .end annotation

    const-string v0, "infoCardCategory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackGiven"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFeedbackGiven"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    .line 1
    sget-object p1, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->NOT_GIVEN:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    if-ne p4, p1, :cond_5

    .line 2
    invoke-virtual {p0}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/a/c/a/b;->l:Landroidx/constraintlayout/widget/Group;

    if-eqz p1, :cond_1

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/a/c/a/b;->e:Landroidx/constraintlayout/widget/Group;

    if-eqz p1, :cond_2

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/a/c/a/b;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    new-instance p4, Le/a/a/c/a/b$a;

    const/4 v1, 0x0

    move-object v0, p4

    move-object v2, p0

    move-object v3, p6

    move-object v4, p2

    move-object v5, p5

    move-object v6, p3

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Le/a/a/c/a/b$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/a/c/a/b;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    new-instance p4, Le/a/a/c/a/b$a;

    const/4 v1, 0x1

    move-object v0, p4

    move-object v2, p0

    move-object v3, p6

    move-object v4, p2

    move-object v5, p5

    move-object v6, p3

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Le/a/a/c/a/b$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/a/c/a/b;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    new-instance p4, Le/a/a/c/a/b$a;

    const/4 v1, 0x2

    move-object v0, p4

    move-object v2, p0

    move-object v3, p6

    move-object v4, p2

    move-object v5, p5

    move-object v6, p3

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Le/a/a/c/a/b$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final e(Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/smartcards/CardFeedBackType;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/insights/models/smartcards/CardFeedBackType;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "feedbackType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFeedbackGiven"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/b;->l:Landroidx/constraintlayout/widget/Group;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/c/a/b;->e:Landroidx/constraintlayout/widget/Group;

    if-eqz v0, :cond_1

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    :cond_1
    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/a/c/a/b;->g:Lcom/airbnb/lottie/LottieAnimationView;

    const-string p2, "feedbackThanksAnimationView"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/a/c/a/b$c;

    invoke-direct {p2, p0}, Le/a/a/c/a/b$c;-><init>(Le/a/a/c/a/b;)V

    invoke-static {p1, p2}, Le/a/e/a2;->O(Lcom/airbnb/lottie/LottieAnimationView;Ls1/z/b/l;)V

    .line 5
    iget-object p1, p0, Le/a/a/c/a/b;->n:Landroid/view/View;

    new-instance p2, Le/a/a/c/a/b$d;

    invoke-direct {p2, p0}, Le/a/a/c/a/b$d;-><init>(Le/a/a/c/a/b;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Le/a/a/c/a/c;

    invoke-direct {v0, p2}, Le/a/a/c/a/c;-><init>(Ls1/z/b/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
