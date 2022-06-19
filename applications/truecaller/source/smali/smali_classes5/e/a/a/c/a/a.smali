.class public final Le/a/a/c/a/a;
.super Le/a/a/c/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/c/a/b;-><init>(Landroid/view/View;)V

    .line 2
    sget-object p1, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {p1}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/k2;->g(Le/a/a/c/a/a;)V

    return-void
.end method


# virtual methods
.method public final f(Le/a/c/i/e/b;Le/a/c/r/j/h;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Lcom/truecaller/messaging/data/types/Message;Le/a/a/c/a/k$a;)V
    .locals 6

    if-nez p1, :cond_5

    .line 1
    sget-object p1, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->NOT_GIVEN:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    if-ne p3, p1, :cond_5

    .line 2
    invoke-virtual {p0}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/a/c/a/b;->l:Landroidx/constraintlayout/widget/Group;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/a/c/a/b;->e:Landroidx/constraintlayout/widget/Group;

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/a/c/a/b;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 8
    new-instance p3, Le/a/a/c/a/a$a;

    const/4 v1, 0x0

    move-object v0, p3

    move-object v2, p2

    move-object v3, p0

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/a/a/c/a/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/a/c/a/b;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 10
    new-instance p3, Le/a/a/c/a/a$a;

    const/4 v1, 0x1

    move-object v0, p3

    move-object v2, p2

    move-object v3, p0

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/a/a/c/a/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_4
    iget-object p1, p0, Le/a/a/c/a/b;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 12
    new-instance p3, Le/a/a/c/a/a$a;

    const/4 v1, 0x2

    move-object v0, p3

    move-object v2, p2

    move-object v3, p0

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/a/a/c/a/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method
