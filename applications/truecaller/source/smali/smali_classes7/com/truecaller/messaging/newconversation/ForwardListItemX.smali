.class public final Lcom/truecaller/messaging/newconversation/ForwardListItemX;
.super Lcom/truecaller/common/ui/listitem/ListItemX;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/truecaller/messaging/newconversation/ForwardListItemX;",
        "Lcom/truecaller/common/ui/listitem/ListItemX;",
        "Lcom/truecaller/messaging/views/ChatSwitchView;",
        "K",
        "Lcom/truecaller/messaging/views/ChatSwitchView;",
        "getChatSwitchView",
        "()Lcom/truecaller/messaging/views/ChatSwitchView;",
        "chatSwitchView",
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
.field public final K:Lcom/truecaller/messaging/views/ChatSwitchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "context"

    .line 1
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Lcom/truecaller/messaging/views/ChatSwitchView;

    const/4 v3, 0x6

    invoke-direct {p2, p1, v0, v2, v3}, Lcom/truecaller/messaging/views/ChatSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p2, p0, Lcom/truecaller/messaging/newconversation/ForwardListItemX;->K:Lcom/truecaller/messaging/views/ChatSwitchView;

    .line 4
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/messaging/views/ChatSwitchView;->m1()V

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/messaging/views/ChatSwitchView;->n1()V

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    new-instance p1, Ln3/i/c/d;

    invoke-direct {p1}, Ln3/i/c/d;-><init>()V

    .line 10
    invoke-virtual {p1, p0}, Ln3/i/c/d;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 11
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {p1, v2, v5, v4, v5}, Ln3/i/c/d;->f(IIII)V

    .line 12
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const/4 v4, 0x3

    const v6, 0x7f0a01b7

    invoke-virtual {p1, v2, v4, v6, v4}, Ln3/i/c/d;->f(IIII)V

    .line 13
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {p1, v2, v1, v6, v1}, Ln3/i/c/d;->f(IIII)V

    .line 14
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result p2

    const v1, 0x7f0a1245

    invoke-virtual {p1, v1, v5, p2, v3}, Ln3/i/c/d;->f(IIII)V

    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p0, p2}, Ln3/i/c/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    .line 16
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Ln3/i/c/d;)V

    .line 17
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final getChatSwitchView()Lcom/truecaller/messaging/views/ChatSwitchView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/ForwardListItemX;->K:Lcom/truecaller/messaging/views/ChatSwitchView;

    return-object v0
.end method
