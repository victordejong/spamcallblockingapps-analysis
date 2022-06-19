.class Lcom/google/firebase/inappmessaging/display/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/b;->v(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/q/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic d:Lcom/google/firebase/inappmessaging/display/b;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/b;Lcom/google/firebase/inappmessaging/display/internal/q/c;Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/b$d;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/b$d;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/display/b$d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    const-string p1, "Image download failure "

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/k;->e(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->e()Landroid/widget/ImageView;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/b;->f(Lcom/google/firebase/inappmessaging/display/b;)V

    .line 8
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/inappmessaging/display/b;->l(Lcom/google/firebase/inappmessaging/display/b;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/model/i;

    .line 9
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {p1, v0}, Lcom/google/firebase/inappmessaging/display/b;->d(Lcom/google/firebase/inappmessaging/display/b;Lcom/google/firebase/inappmessaging/t;)Lcom/google/firebase/inappmessaging/t;

    return-void
.end method

.method public onSuccess()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->b()Lcom/google/firebase/inappmessaging/display/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/j;->p()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->f()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/display/b$d$a;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/display/b$d$a;-><init>(Lcom/google/firebase/inappmessaging/display/b$d;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/b;->m(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/display/internal/n;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/display/b$d$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/inappmessaging/display/b$d$b;-><init>(Lcom/google/firebase/inappmessaging/display/b$d;)V

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/inappmessaging/display/internal/n;->b(Lcom/google/firebase/inappmessaging/display/internal/n$b;JJ)V

    .line 6
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d;->a:Lcom/google/firebase/inappmessaging/display/internal/q/c;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/q/c;->b()Lcom/google/firebase/inappmessaging/display/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/j;->o()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d;->d:Lcom/google/firebase/inappmessaging/display/b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/b;->n(Lcom/google/firebase/inappmessaging/display/b;)Lcom/google/firebase/inappmessaging/display/internal/n;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/display/b$d$c;

    invoke-direct {v2, p0}, Lcom/google/firebase/inappmessaging/display/b$d$c;-><init>(Lcom/google/firebase/inappmessaging/display/b$d;)V

    const-wide/16 v3, 0x4e20

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/inappmessaging/display/internal/n;->b(Lcom/google/firebase/inappmessaging/display/internal/n$b;JJ)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/b$d;->b:Landroid/app/Activity;

    new-instance v1, Lcom/google/firebase/inappmessaging/display/b$d$d;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/display/b$d$d;-><init>(Lcom/google/firebase/inappmessaging/display/b$d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
