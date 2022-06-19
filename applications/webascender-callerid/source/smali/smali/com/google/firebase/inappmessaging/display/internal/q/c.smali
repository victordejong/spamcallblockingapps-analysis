.class public abstract Lcom/google/firebase/inappmessaging/display/internal/q/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/firebase/inappmessaging/model/i;

.field final b:Lcom/google/firebase/inappmessaging/display/internal/j;

.field final c:Landroid/view/LayoutInflater;


# direct methods
.method protected constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->b:Lcom/google/firebase/inappmessaging/display/internal/j;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->c:Landroid/view/LayoutInflater;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->a:Lcom/google/firebase/inappmessaging/model/i;

    return-void
.end method

.method public static i(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error parsing background color: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/display/internal/k;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static k(Landroid/widget/Button;Lcom/google/firebase/inappmessaging/model/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/d;->c()Lcom/google/firebase/inappmessaging/model/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->i(Landroid/widget/Button;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/d;->c()Lcom/google/firebase/inappmessaging/model/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/n;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/firebase/inappmessaging/display/internal/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/c;->b:Lcom/google/firebase/inappmessaging/display/internal/j;

    return-object v0
.end method

.method public abstract c()Landroid/view/View;
.end method

.method public d()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract e()Landroid/widget/ImageView;
.end method

.method public abstract f()Landroid/view/ViewGroup;
.end method

.method public abstract g(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
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
.end method

.method protected h(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected j(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing background color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " color: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/k;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
