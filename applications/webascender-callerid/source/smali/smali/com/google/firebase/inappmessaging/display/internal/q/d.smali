.class public Lcom/google/firebase/inappmessaging/display/internal/q/d;
.super Lcom/google/firebase/inappmessaging/display/internal/q/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/q/d$a;
    }
.end annotation


# instance fields
.field private d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;

.field private e:Lcom/google/firebase/inappmessaging/display/internal/layout/a;

.field private f:Landroid/widget/ScrollView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/google/firebase/inappmessaging/model/f;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/display/internal/q/c;-><init>(Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/i;)V

    .line 2
    new-instance p1, Lcom/google/firebase/inappmessaging/display/internal/q/d$a;

    invoke-direct {p1, p0}, Lcom/google/firebase/inappmessaging/display/internal/q/d$a;-><init>(Lcom/google/firebase/inappmessaging/display/internal/q/d;)V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic l(Lcom/google/firebase/inappmessaging/display/internal/q/d;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method private m(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/model/a;",
            "Landroid/view/View$OnClickListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->l:Lcom/google/firebase/inappmessaging/model/f;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/f;->i()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->l:Lcom/google/firebase/inappmessaging/model/f;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/f;->j()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->g:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/a;->c()Lcom/google/firebase/inappmessaging/model/d;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->k(Landroid/widget/Button;Lcom/google/firebase/inappmessaging/model/d;)V

    .line 4
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->g:Landroid/widget/Button;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2, v0}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->h(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->g:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/a;->c()Lcom/google/firebase/inappmessaging/model/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->h:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/a;->c()Lcom/google/firebase/inappmessaging/model/d;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->k(Landroid/widget/Button;Lcom/google/firebase/inappmessaging/model/d;)V

    .line 8
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->h:Landroid/widget/Button;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->h(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->h:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->h:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private n(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->m:Landroid/view/View$OnClickListener;

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;->setDismissListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private o(Lcom/google/firebase/inappmessaging/model/f;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->h()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->g()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->i:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->i:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private p(Lcom/google/firebase/inappmessaging/display/internal/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/j;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/j;->s()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    return-void
.end method

.method private q(Lcom/google/firebase/inappmessaging/model/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->k()Lcom/google/firebase/inappmessaging/model/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->k()Lcom/google/firebase/inappmessaging/model/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->f()Lcom/google/firebase/inappmessaging/model/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->f()Lcom/google/firebase/inappmessaging/model/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/n;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->f:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->f()Lcom/google/firebase/inappmessaging/model/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/f;->f()Lcom/google/firebase/inappmessaging/model/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/n;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->f:Landroid/widget/ScrollView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/display/internal/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->b:Lcom/google/firebase/inappmessaging/display/internal/j;

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->e:Lcom/google/firebase/inappmessaging/display/internal/layout/a;

    return-object v0
.end method

.method public d()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->m:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public e()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;

    return-object v0
.end method

.method public g(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 3
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

    sget v1, Lcom/google/firebase/inappmessaging/display/g;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->f:Landroid/widget/ScrollView;

    .line 3
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->s:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->g:Landroid/widget/Button;

    .line 4
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->t:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->h:Landroid/widget/Button;

    .line 5
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->i:Landroid/widget/ImageView;

    .line 6
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->o:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->j:Landroid/widget/TextView;

    .line 7
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->k:Landroid/widget/TextView;

    .line 8
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->j:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;

    .line 9
    sget v1, Lcom/google/firebase/inappmessaging/display/f;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/internal/layout/a;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->e:Lcom/google/firebase/inappmessaging/display/internal/layout/a;

    .line 10
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->a:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/i;->c()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->CARD:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->a:Lcom/google/firebase/inappmessaging/model/i;

    check-cast v0, Lcom/google/firebase/inappmessaging/model/f;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->l:Lcom/google/firebase/inappmessaging/model/f;

    .line 12
    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/q/d;->q(Lcom/google/firebase/inappmessaging/model/f;)V

    .line 13
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->l:Lcom/google/firebase/inappmessaging/model/f;

    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/q/d;->o(Lcom/google/firebase/inappmessaging/model/f;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/q/d;->m(Ljava/util/Map;)V

    .line 15
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->b:Lcom/google/firebase/inappmessaging/display/internal/j;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/q/d;->p(Lcom/google/firebase/inappmessaging/display/internal/j;)V

    .line 16
    invoke-direct {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/q/d;->n(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->e:Lcom/google/firebase/inappmessaging/display/internal/layout/a;

    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->l:Lcom/google/firebase/inappmessaging/model/f;

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->j(Landroid/view/View;Ljava/lang/String;)V

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/d;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method
