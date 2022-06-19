.class public Lcom/google/firebase/inappmessaging/display/internal/q/f;
.super Lcom/google/firebase/inappmessaging/display/internal/q/c;
.source "SourceFile"


# instance fields
.field private d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/display/internal/q/c;-><init>(Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/i;)V

    return-void
.end method


# virtual methods
.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public e()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    return-object v0
.end method

.method public g(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/model/a;",
            "Landroid/view/View$OnClickListener;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/firebase/inappmessaging/display/g;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->m:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    .line 3
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->e:Landroid/view/ViewGroup;

    .line 4
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->f:Landroid/widget/ImageView;

    .line 5
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->g:Landroid/widget/Button;

    .line 6
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->b:Lcom/google/firebase/inappmessaging/display/internal/j;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/display/internal/j;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 7
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->b:Lcom/google/firebase/inappmessaging/display/internal/j;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/display/internal/j;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 8
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->a:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/i;->c()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->IMAGE_ONLY:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->a:Lcom/google/firebase/inappmessaging/model/i;

    check-cast v0, Lcom/google/firebase/inappmessaging/model/h;

    .line 10
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->f:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/h;->b()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/h;->b()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v3, 0x8

    .line 12
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/h;->e()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    invoke-virtual {p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;->setDismissListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/f;->g:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method
