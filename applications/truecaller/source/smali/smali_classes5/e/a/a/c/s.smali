.class public final synthetic Le/a/a/c/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/s;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Le/a/a/c/s;->a:Le/a/a/c/y3;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a0bbf

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/views/MediaEditText;

    iput-object v0, p1, Le/a/a/c/y3;->g0:Lcom/truecaller/messaging/views/MediaEditText;

    .line 3
    new-instance v1, Le/a/a/c/a0;

    invoke-direct {v1, p1}, Le/a/a/c/a0;-><init>(Le/a/a/c/y3;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    iget-object v0, p1, Le/a/a/c/y3;->g0:Lcom/truecaller/messaging/views/MediaEditText;

    new-instance v1, Le/a/a/c/f0;

    invoke-direct {v1, p1}, Le/a/a/c/f0;-><init>(Le/a/a/c/y3;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5
    iget-object v0, p1, Le/a/a/c/y3;->g0:Lcom/truecaller/messaging/views/MediaEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTextDirection(I)V

    const v0, 0x7f0a11dc

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Le/a/a/c/y3;->i0:Landroid/widget/TextView;

    .line 7
    iget-object v0, p1, Le/a/a/c/y3;->g0:Lcom/truecaller/messaging/views/MediaEditText;

    iget-object v1, p1, Le/a/a/c/y3;->o1:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a101c

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Le/a/a/c/y3;->l0:Landroid/widget/ImageView;

    .line 9
    new-instance v1, Le/a/a/c/k1;

    invoke-direct {v1, p1}, Le/a/a/c/k1;-><init>(Le/a/a/c/y3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a069c

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/conversation/EmojiPokeButton;

    iput-object v0, p1, Le/a/a/c/y3;->o0:Lcom/truecaller/messaging/conversation/EmojiPokeButton;

    const v0, 0x7f0a0eab

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Le/a/a/c/y3;->p0:Landroid/view/View;

    const v0, 0x7f0a03bc

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/views/ChatSwitchView;

    iput-object v0, p1, Le/a/a/c/y3;->N0:Lcom/truecaller/messaging/views/ChatSwitchView;

    .line 13
    new-instance v1, Le/a/a/c/n2;

    invoke-direct {v1, p1}, Le/a/a/c/n2;-><init>(Le/a/a/c/y3;)V

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "onSelected"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object v1, v0, Lcom/truecaller/messaging/views/ChatSwitchView;->x:Ls1/z/b/l;

    .line 16
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f15000d

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->U0(I)V

    const v0, 0x7f0a05b9

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e1(III)V

    .line 18
    iget-object p2, p1, Le/a/a/c/y3;->N0:Lcom/truecaller/messaging/views/ChatSwitchView;

    new-instance v0, Le/a/a/c/n0;

    invoke-direct {v0, p1}, Le/a/a/c/n0;-><init>(Le/a/a/c/y3;)V

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onDeActivatedSwitchClicked"

    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object v0, p2, Lcom/truecaller/messaging/views/ChatSwitchView;->y:Ls1/z/b/l;

    return-void
.end method
