.class public final Le/a/a/c/c7;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/r<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;",
        "Landroid/text/style/ClickableSpan;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/d$c0;


# direct methods
.method public constructor <init>(Le/a/a/c/d$c0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/c7;->b:Le/a/a/c/d$c0;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    check-cast p4, Landroid/text/style/ClickableSpan;

    const-string v0, "linkText"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p4, Le/a/a/c/p8/b;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Le/a/a/c/c7;->b:Le/a/a/c/d$c0;

    iget-object p1, p1, Le/a/a/c/d$c0;->b:Le/a/a/c/d;

    .line 5
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 6
    check-cast p4, Le/a/a/c/p8/b;

    .line 7
    iget-object p2, p4, Le/a/a/c/p8/b;->a:Ljava/lang/String;

    .line 8
    invoke-interface {p1, p2}, Le/a/a/c/k/a/j;->v1(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 9
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_c

    const/4 p4, 0x1

    if-eq p3, p4, :cond_b

    const/4 v0, 0x2

    if-eq p3, v0, :cond_a

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p3, v0, :cond_7

    const/4 p2, 0x4

    if-eq p3, p2, :cond_6

    .line 10
    iget-object p1, p0, Le/a/a/c/c7;->b:Le/a/a/c/d$c0;

    iget-object p1, p1, Le/a/a/c/d$c0;->b:Le/a/a/c/d;

    .line 11
    sget p2, Le/a/a/c/d;->j0:I

    .line 12
    invoke-virtual {p1}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 13
    instance-of p3, p2, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    if-nez p3, :cond_1

    goto/16 :goto_2

    .line 14
    :cond_1
    check-cast p2, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    invoke-virtual {p2}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getCurrentLayoutStyle()Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    move-result-object p3

    sget-object v0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;->EXPANDABLE:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    if-ne p3, v0, :cond_3

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object p3, p2, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    sget-object p4, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;->EXPANDED:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, p4, v2, v0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->h(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;ZLjava/lang/Integer;)V

    .line 17
    iget-object p3, p2, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->m:Ls1/z/b/l;

    if-eqz p3, :cond_2

    invoke-interface {p3, p4}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls1/s;

    .line 18
    :cond_2
    invoke-virtual {p1, p2}, Le/a/a/c/d;->v5(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;)V

    goto/16 :goto_2

    .line 19
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-ne p3, v3, :cond_4

    goto :goto_0

    :cond_4
    move p4, v2

    :goto_0
    if-nez p4, :cond_5

    move-object v1, p2

    :cond_5
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    invoke-interface {p1, p2}, Le/a/a/c/k/a/j;->n(I)V

    goto :goto_2

    .line 20
    :cond_6
    iget-object p2, p0, Le/a/a/c/c7;->b:Le/a/a/c/d$c0;

    iget-object p2, p2, Le/a/a/c/d$c0;->b:Le/a/a/c/d;

    .line 21
    iget-object p2, p2, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 22
    invoke-interface {p2, p1}, Le/a/a/c/k/a/j;->Z0(Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_7
    iget-object p1, p0, Le/a/a/c/c7;->b:Le/a/a/c/d$c0;

    iget-object p1, p1, Le/a/a/c/d$c0;->b:Le/a/a/c/d;

    .line 24
    sget p3, Le/a/a/c/d;->j0:I

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_8

    goto :goto_1

    :cond_8
    move p4, v2

    :goto_1
    if-nez p4, :cond_9

    move-object v1, p3

    :cond_9
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p3

    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    invoke-interface {p1, p2, p3}, Le/a/a/c/k/a/j;->l(II)V

    goto :goto_2

    .line 26
    :cond_a
    iget-object p2, p0, Le/a/a/c/c7;->b:Le/a/a/c/d$c0;

    iget-object p2, p2, Le/a/a/c/d$c0;->b:Le/a/a/c/d;

    .line 27
    iget-object p2, p2, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 28
    invoke-interface {p2, p1}, Le/a/a/c/k/a/j;->P0(Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :cond_b
    iget-object p2, p0, Le/a/a/c/c7;->b:Le/a/a/c/d$c0;

    iget-object p2, p2, Le/a/a/c/d$c0;->b:Le/a/a/c/d;

    .line 30
    iget-object p2, p2, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 31
    invoke-interface {p2, p1}, Le/a/a/c/k/a/j;->D(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_c
    iget-object p2, p0, Le/a/a/c/c7;->b:Le/a/a/c/d$c0;

    iget-object p2, p2, Le/a/a/c/d$c0;->b:Le/a/a/c/d;

    .line 33
    iget-object p2, p2, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 34
    invoke-interface {p2, p1}, Le/a/a/c/k/a/j;->V0(Ljava/lang/String;)V

    .line 35
    :cond_d
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
