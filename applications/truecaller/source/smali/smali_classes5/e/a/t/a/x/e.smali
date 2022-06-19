.class public final Le/a/t/a/x/e;
.super Le/m/a/g/e/d;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/x/g;


# instance fields
.field public o:Le/a/t/a/x/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final p:Ls1/g;

.field public final q:Ls1/g;

.field public final r:Ls1/g;

.field public final s:Ls1/g;

.field public final t:Le/a/t/a/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/t/a/o;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/android/truemoji/R$style;->StyleX_FormBottomSheetDialogTheme:I

    invoke-direct {p0, p1, v0}, Le/m/a/g/e/d;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Le/a/t/a/x/e;->t:Le/a/t/a/o;

    .line 2
    sget p1, Lcom/truecaller/android/truemoji/R$id;->closeButton:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/t/a/x/e;->p:Ls1/g;

    .line 3
    sget p1, Lcom/truecaller/android/truemoji/R$id;->emojiList:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/t/a/x/e;->q:Ls1/g;

    .line 4
    sget p1, Lcom/truecaller/android/truemoji/R$id;->emptyView:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/t/a/x/e;->r:Ls1/g;

    .line 5
    sget p1, Lcom/truecaller/android/truemoji/R$id;->searchText:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/t/a/x/e;->s:Ls1/g;

    return-void
.end method


# virtual methods
.method public A1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/a/x/e;->r:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "emptyView"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public B1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/t/a/u/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emojis"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/t/a/x/e;->g()Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;->setEmojis(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Le/a/t/a/x/e;->g()Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/x/e;->o:Le/a/t/a/x/f;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/p;->dismiss()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g()Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;
    .locals 1

    iget-object v0, p0, Le/a/t/a/x/e;->q:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;

    return-object v0
.end method

.method public final h()Le/a/t/a/x/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/x/e;->o:Le/a/t/a/x/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-class v0, Le/a/t/a/d;

    invoke-super {p0, p1}, Le/m/a/g/e/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    sget v1, Lcom/truecaller/android/truemoji/R$layout;->view_emoji_search:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Le/m/a/g/e/d;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    const-string v1, "ApplicationBase.getAppBase()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v3

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Le/a/b0/g/a;->K()Le/a/q2/e;

    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "EntryPointAccessors.from\u2026ojiComponent::class.java)"

    .line 8
    invoke-static {v0, v3}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/t/a/d;

    .line 9
    const-class v4, Le/a/b0/c;

    invoke-static {p1, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    invoke-static {v3, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    const-class v0, Le/a/q2/e;

    invoke-static {v1, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    new-instance v0, Le/a/t/a/x/a;

    invoke-direct {v0, v3}, Le/a/t/a/x/a;-><init>(Le/a/t/a/d;)V

    .line 13
    new-instance v4, Le/a/t/a/x/h;

    invoke-interface {p1}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object p1

    const-string v5, "Cannot return null from a non-@Nullable component method"

    .line 14
    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-interface {v3}, Le/a/t/a/d;->V3()Le/a/t/a/p;

    move-result-object v3

    .line 16
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 18
    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    invoke-direct {v4, p1, v0, v3, v1}, Le/a/t/a/x/h;-><init>(Ls1/w/f;Lo3/a;Le/a/t/a/p;Le/a/q2/a;)V

    .line 20
    iput-object v4, p0, Le/a/t/a/x/e;->o:Le/a/t/a/x/f;

    .line 21
    iget-object p1, p0, Le/a/t/a/x/e;->p:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 22
    new-instance v0, Le/a/t/a/x/e$a;

    invoke-direct {v0, p0}, Le/a/t/a/x/e$a;-><init>(Le/a/t/a/x/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Le/a/t/a/x/e;->s:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 24
    new-instance v0, Le/a/t/a/x/e$b;

    invoke-direct {v0, p0}, Le/a/t/a/x/e$b;-><init>(Le/a/t/a/x/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 25
    invoke-virtual {p0}, Le/a/t/a/x/e;->g()Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;

    move-result-object p1

    new-instance v0, Le/a/t/a/x/e$c;

    invoke-direct {v0, p0}, Le/a/t/a/x/e$c;-><init>(Le/a/t/a/x/e;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;->setEmojiClickListener(Le/a/t/a/o;)V

    .line 26
    iget-object p1, p0, Le/a/t/a/x/e;->o:Le/a/t/a/x/f;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/t/a/x/h;

    invoke-virtual {p1, p0}, Le/a/t/a/x/h;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/t/a/x/e;->s:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "searchText"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    :cond_0
    return-void
.end method
