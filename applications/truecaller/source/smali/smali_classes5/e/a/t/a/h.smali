.class public final Le/a/t/a/h;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Ln3/k/i/n;
.implements Le/a/t/a/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t/a/h$a;,
        Le/a/t/a/h$b;,
        Le/a/t/a/h$e;,
        Le/a/t/a/h$d;,
        Le/a/t/a/h$c;
    }
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

.field public final c:Lcom/truecaller/android/truemoji/gifs/GifView;

.field public final d:Landroid/view/View;

.field public final e:Landroid/widget/RadioButton;

.field public final f:Landroid/widget/RadioButton;

.field public final g:Le/a/t/a/v/i;

.field public final h:Le/a/t/a/a/d;

.field public i:Le/a/t/a/a/k;

.field public j:I

.field public final k:Le/a/t/a/o;

.field public final l:Landroid/widget/EditText;

.field public final m:Le/a/t/a/p;

.field public n:Z

.field public o:I

.field public final p:Le/a/t/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/t/a/a/g<",
            "Le/a/t/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Le/a/t/a/h$a;

.field public final r:Le/a/t/a/h$b;

.field public final s:Le/a/t/a/h$d;

.field public final t:Le/a/t/a/h$c;

.field public final u:Le/a/t/a/h$e;

.field public final v:Le/a/a/c/w;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Le/a/t/a/p;ZILe/a/t/a/a/g;Le/a/t/a/h$a;Le/a/t/a/h$b;Le/a/t/a/h$d;Le/a/t/a/h$c;Le/a/t/a/h$e;Le/a/a/c/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            "Le/a/t/a/p;",
            "ZI",
            "Le/a/t/a/a/g<",
            "-",
            "Le/a/t/a/a/h;",
            ">;",
            "Le/a/t/a/h$a;",
            "Le/a/t/a/h$b;",
            "Le/a/t/a/h$d;",
            "Le/a/t/a/h$c;",
            "Le/a/t/a/h$e;",
            "Le/a/a/c/w;",
            ")V"
        }
    .end annotation

    const-string p6, "editText"

    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "recentEmoji"

    invoke-static {p2, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "gifPresenter"

    invoke-static {p5, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "onEmojiPopupDismissListener"

    invoke-static {p7, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "onTabClickedListener"

    invoke-static {p8, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "onEmojiPopupShownListener"

    invoke-static {p9, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "onTenorConsentDismissListener"

    invoke-static {p10, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "onGifClickListener"

    invoke-static {p11, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object p1, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    iput-object p2, p0, Le/a/t/a/h;->m:Le/a/t/a/p;

    iput-boolean p3, p0, Le/a/t/a/h;->n:Z

    iput p4, p0, Le/a/t/a/h;->o:I

    iput-object p5, p0, Le/a/t/a/h;->p:Le/a/t/a/a/g;

    const/4 p3, 0x0

    iput-object p3, p0, Le/a/t/a/h;->q:Le/a/t/a/h$a;

    iput-object p7, p0, Le/a/t/a/h;->r:Le/a/t/a/h$b;

    iput-object p8, p0, Le/a/t/a/h;->s:Le/a/t/a/h$d;

    iput-object p9, p0, Le/a/t/a/h;->t:Le/a/t/a/h$c;

    iput-object p10, p0, Le/a/t/a/h;->u:Le/a/t/a/h$e;

    iput-object p11, p0, Le/a/t/a/h;->v:Le/a/a/c/w;

    .line 2
    new-instance p4, Le/a/t/a/v/i;

    invoke-direct {p4, p1}, Le/a/t/a/v/i;-><init>(Landroid/view/View;)V

    iput-object p4, p0, Le/a/t/a/h;->g:Le/a/t/a/v/i;

    .line 3
    new-instance p4, Le/a/t/a/a/d;

    new-instance p6, Le/a/t/a/j;

    invoke-direct {p6, p0}, Le/a/t/a/j;-><init>(Le/a/t/a/h;)V

    invoke-direct {p4, p6}, Le/a/t/a/a/d;-><init>(Le/a/t/a/a/e;)V

    iput-object p4, p0, Le/a/t/a/h;->h:Le/a/t/a/a/d;

    .line 4
    new-instance p6, Le/a/t/a/i;

    invoke-direct {p6, p0}, Le/a/t/a/i;-><init>(Le/a/t/a/h;)V

    iput-object p6, p0, Le/a/t/a/h;->k:Le/a/t/a/o;

    .line 5
    invoke-interface {p5, p0}, Le/a/t/a/a/g;->Y0(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p5, Lcom/truecaller/android/truemoji/R$layout;->container:I

    const/4 p6, 0x0

    invoke-virtual {p1, p5, p3, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p3, "LayoutInflater.from(edit\u2026t.container, null, false)"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/t/a/h;->a:Landroid/view/View;

    .line 7
    sget p3, Lcom/truecaller/android/truemoji/R$id;->emojiKeyboardView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p5, "view.findViewById(R.id.emojiKeyboardView)"

    invoke-static {p3, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

    iput-object p3, p0, Le/a/t/a/h;->b:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

    .line 8
    sget p5, Lcom/truecaller/android/truemoji/R$id;->gifView:I

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    const-string p7, "view.findViewById(R.id.gifView)"

    invoke-static {p5, p7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/truecaller/android/truemoji/gifs/GifView;

    iput-object p5, p0, Le/a/t/a/h;->c:Lcom/truecaller/android/truemoji/gifs/GifView;

    .line 9
    sget p7, Lcom/truecaller/android/truemoji/R$id;->img_search:I

    invoke-virtual {p1, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    const-string p8, "view.findViewById(R.id.img_search)"

    invoke-static {p7, p8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p7, p0, Le/a/t/a/h;->d:Landroid/view/View;

    .line 10
    sget p8, Lcom/truecaller/android/truemoji/R$id;->radio_emojis:I

    invoke-virtual {p1, p8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p8

    const-string p9, "view.findViewById(R.id.radio_emojis)"

    invoke-static {p8, p9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p8, Landroid/widget/RadioButton;

    iput-object p8, p0, Le/a/t/a/h;->e:Landroid/widget/RadioButton;

    .line 11
    sget p9, Lcom/truecaller/android/truemoji/R$id;->radio_gifs:I

    invoke-virtual {p1, p9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p9

    const-string p10, "view.findViewById(R.id.radio_gifs)"

    invoke-static {p9, p10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p9, Landroid/widget/RadioButton;

    iput-object p9, p0, Le/a/t/a/h;->f:Landroid/widget/RadioButton;

    .line 12
    invoke-virtual {p5, p4}, Lcom/truecaller/android/truemoji/gifs/GifView;->setAdapter(Le/a/t/a/a/d;)V

    .line 13
    new-instance p4, Le/a/t/a/g;

    invoke-direct {p4, p0}, Le/a/t/a/g;-><init>(Le/a/t/a/h;)V

    invoke-virtual {p5, p4}, Lcom/truecaller/android/truemoji/gifs/GifView;->setonNoInternetClicked(Ls1/z/b/a;)V

    .line 14
    new-instance p4, Ll1;

    invoke-direct {p4, p6, p0}, Ll1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p7, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    sget p4, Lcom/truecaller/android/truemoji/R$id;->button_keyboard:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    new-instance p5, Ll1;

    const/4 p6, 0x1

    invoke-direct {p5, p6, p0}, Ll1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance p4, Ll1;

    const/4 p5, 0x2

    invoke-direct {p4, p5, p0}, Ll1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p8, p4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance p4, Ll1;

    const/4 p5, 0x3

    invoke-direct {p4, p5, p0}, Ll1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p9, p4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p3, p2}, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;->setRecentEmoji(Le/a/t/a/p;)V

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static final j(Le/a/t/a/h;I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/t/a/h;->n:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/t/a/h;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Le/a/t/a/h;->o:I

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/t/a/h;->p:Le/a/t/a/a/g;

    iget-object v2, p0, Le/a/t/a/h;->h:Le/a/t/a/a/d;

    invoke-virtual {v2}, Le/a/t/a/a/d;->getItemCount()I

    move-result v2

    invoke-interface {v0, v2}, Le/a/t/a/a/g;->Ke(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 5
    iget-object p0, p0, Le/a/t/a/h;->e:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Le/a/t/a/h;->k(I)V

    .line 7
    iget-object p0, p0, Le/a/t/a/h;->s:Le/a/t/a/h$d;

    check-cast p0, Le/a/a/c/b1;

    .line 8
    iget-object p0, p0, Le/a/a/c/b1;->a:Le/a/a/c/y3;

    .line 9
    iget-object p0, p0, Le/a/a/c/y3;->z:Le/a/a/c/y5;

    invoke-interface {p0, p1}, Le/a/a/c/y5;->Xh(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public M(Le/a/t/a/a/f;)V
    .locals 1

    const-string v0, "gif"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t/a/h;->v:Le/a/a/c/w;

    .line 2
    iget-object v0, v0, Le/a/a/c/w;->a:Le/a/a/c/y3;

    .line 3
    iget-object v0, v0, Le/a/a/c/y3;->z:Le/a/a/c/y5;

    invoke-interface {v0, p1}, Le/a/a/c/y5;->e0(Le/a/t/a/a/f;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p2, v0}, Ln3/k/i/d0;->b(I)Ln3/k/c/b;

    move-result-object v0

    iget v0, v0, Ln3/k/c/b;->d:I

    if-lez v0, :cond_0

    const/high16 v0, 0x42000000    # 32.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/t/a/h;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 3
    invoke-static {p1, p2}, Ln3/k/i/s;->k(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;

    move-result-object p1

    const-string p2, "ViewCompat.onApplyWindowInsets(v, insets)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/t/a/h;->dismiss()V

    .line 2
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    .line 3
    new-instance v0, Le/a/t/a/a/a;

    iget-object v1, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "editText.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le/a/t/a/h$g;

    invoke-direct {v2, p0}, Le/a/t/a/h$g;-><init>(Le/a/t/a/h;)V

    invoke-direct {v0, v1, v2}, Le/a/t/a/a/a;-><init>(Landroid/content/Context;Le/a/t/a/a/b;)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/h;->i:Le/a/t/a/a/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln3/b/a/p;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ln3/k/i/s;->r(Landroid/view/View;Ln3/k/i/n;)V

    .line 2
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    iget-object v0, p0, Le/a/t/a/h;->b:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

    invoke-virtual {v0, v1}, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;->setOnEmojiClickListener(Le/a/t/a/o;)V

    .line 4
    iget-object v0, p0, Le/a/t/a/h;->g:Le/a/t/a/v/i;

    .line 5
    iput-object v1, v0, Le/a/t/a/v/i;->b:Le/a/t/a/o;

    .line 6
    iget-object v0, p0, Le/a/t/a/h;->m:Le/a/t/a/p;

    invoke-interface {v0}, Le/a/t/a/p;->a()V

    .line 7
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/a/h;->h:Le/a/t/a/a/d;

    .line 2
    iget-object v1, v0, Le/a/t/a/a/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/h;->c:Lcom/truecaller/android/truemoji/gifs/GifView;

    invoke-virtual {v0, p1}, Lcom/truecaller/android/truemoji/gifs/GifView;->c(Z)V

    .line 2
    iget-object v0, p0, Le/a/t/a/h;->i:Le/a/t/a/a/k;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/t/a/a/k;->h()Lcom/truecaller/android/truemoji/gifs/GifView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/android/truemoji/gifs/GifView;->c(Z)V

    :cond_0
    return-void
.end method

.method public g(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/t/a/a/f;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "gifs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/t/a/h;->h:Le/a/t/a/a/d;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 3
    iget-object p2, v1, Le/a/t/a/a/d;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    :cond_0
    iget-object p2, v1, Le/a/t/a/a/d;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 6
    iget-object p1, p0, Le/a/t/a/h;->i:Le/a/t/a/a/k;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p1, Le/a/t/a/a/k;->u:Z

    :cond_1
    return-void
.end method

.method public h()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/t/a/h;->dismiss()V

    .line 2
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    .line 3
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "editText.context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "currentContext.baseContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 8
    :goto_0
    new-instance v1, Le/a/t/a/a/k;

    invoke-direct {v1, v0}, Le/a/t/a/a/k;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v0, p0, Le/a/t/a/h;->h:Le/a/t/a/a/d;

    const-string v2, "adapter"

    .line 10
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Le/a/t/a/a/k;->h()Lcom/truecaller/android/truemoji/gifs/GifView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/truecaller/android/truemoji/gifs/GifView;->setAdapter(Le/a/t/a/a/d;)V

    .line 12
    new-instance v0, Le/a/t/a/h$f;

    invoke-direct {v0, p0}, Le/a/t/a/h$f;-><init>(Le/a/t/a/h;)V

    const-string v2, "gifSearchListener"

    .line 13
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object v0, v1, Le/a/t/a/a/k;->p:Le/a/t/a/a/q;

    .line 15
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 16
    iput-object v1, p0, Le/a/t/a/h;->i:Le/a/t/a/a/k;

    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context does not implement "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Activity;

    invoke-static {v2, v1}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/h;->c:Lcom/truecaller/android/truemoji/gifs/GifView;

    invoke-virtual {v0, p1}, Lcom/truecaller/android/truemoji/gifs/GifView;->d(Z)V

    .line 2
    iget-object v0, p0, Le/a/t/a/h;->i:Le/a/t/a/a/k;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/t/a/a/k;->h()Lcom/truecaller/android/truemoji/gifs/GifView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/android/truemoji/gifs/GifView;->d(Z)V

    :cond_0
    return-void
.end method

.method public final k(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput v1, p0, Le/a/t/a/h;->j:I

    .line 2
    iget-object p1, p0, Le/a/t/a/h;->b:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

    invoke-static {p1, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 3
    iget-object p1, p0, Le/a/t/a/h;->c:Lcom/truecaller/android/truemoji/gifs/GifView;

    invoke-static {p1, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 4
    iget-object p1, p0, Le/a/t/a/h;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iput v0, p0, Le/a/t/a/h;->j:I

    .line 6
    iget-object p1, p0, Le/a/t/a/h;->b:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

    invoke-static {p1, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 7
    iget-object p1, p0, Le/a/t/a/h;->c:Lcom/truecaller/android/truemoji/gifs/GifView;

    invoke-static {p1, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 8
    iget-object p1, p0, Le/a/t/a/h;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/t/a/h;->dismiss()V

    .line 3
    iget-object v0, p0, Le/a/t/a/h;->r:Le/a/t/a/h$b;

    iget v1, p0, Le/a/t/a/h;->j:I

    check-cast v0, Le/a/a/c/h2;

    .line 4
    iget-object v0, v0, Le/a/a/c/h2;->a:Le/a/a/c/y3;

    .line 5
    iget-object v0, v0, Le/a/a/c/y3;->z:Le/a/a/c/y5;

    invoke-interface {v0, v1}, Le/a/a/c/y5;->ta(I)V

    return-void

    .line 6
    :cond_0
    iget v0, p0, Le/a/t/a/h;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Le/a/t/a/h;->n:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Le/a/t/a/h;->p:Le/a/t/a/a/g;

    iget-object v2, p0, Le/a/t/a/h;->h:Le/a/t/a/a/d;

    invoke-virtual {v2}, Le/a/t/a/a/d;->getItemCount()I

    move-result v2

    invoke-interface {v0, v2}, Le/a/t/a/a/g;->Ke(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Le/a/t/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Ln3/k/i/s;->r(Landroid/view/View;Ln3/k/i/n;)V

    .line 9
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    iget-object v0, p0, Le/a/t/a/h;->b:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;

    iget-object v2, p0, Le/a/t/a/h;->k:Le/a/t/a/o;

    invoke-virtual {v0, v2}, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;->setOnEmojiClickListener(Le/a/t/a/o;)V

    .line 11
    iget-object v0, p0, Le/a/t/a/h;->g:Le/a/t/a/v/i;

    iget-object v2, p0, Le/a/t/a/h;->k:Le/a/t/a/o;

    .line 12
    iput-object v2, v0, Le/a/t/a/v/i;->b:Le/a/t/a/o;

    .line 13
    iget-object v0, p0, Le/a/t/a/h;->t:Le/a/t/a/h$c;

    iget v2, p0, Le/a/t/a/h;->j:I

    check-cast v0, Le/a/a/c/q;

    .line 14
    iget-object v0, v0, Le/a/a/c/q;->a:Le/a/a/c/y3;

    .line 15
    iget-object v0, v0, Le/a/a/c/y3;->z:Le/a/a/c/y5;

    invoke-interface {v0, v2, v1}, Le/a/a/c/y5;->y2(IZ)V

    .line 16
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 17
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 18
    iget-object v1, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 19
    invoke-virtual {p0}, Le/a/t/a/h;->m()V

    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    const-string v1, "$this$isInMultiWindowMode"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-static {v0}, Le/m/d/y/n;->k1(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "editText.resources"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$isHardwareKeyboardAvailable"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-static {v0}, Le/m/d/y/n;->k1(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 9
    :cond_5
    :goto_2
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    sget v1, Le/a/b0/q/n;->a:I

    if-gtz v1, :cond_6

    const-string v1, "window"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 12
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 13
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 15
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 16
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Le/a/b0/q/n;->a:I

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Le/a/b0/q/n;->b:I

    .line 19
    :cond_6
    sget v0, Le/a/b0/q/n;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 21
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    .line 22
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Le/a/t/a/h;->dismiss()V

    goto :goto_4

    .line 23
    :cond_7
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 24
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "editText.rootView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 25
    iget-object v0, p0, Le/a/t/a/h;->l:Landroid/widget/EditText;

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/PopupWindow;->update(II)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/t/a/h;->m()V

    return-void
.end method
