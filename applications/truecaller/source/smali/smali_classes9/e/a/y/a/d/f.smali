.class public final Le/a/y/a/d/f;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/d/e;
.implements Le/m/a/j/a/c$a;


# instance fields
.field public a:Le/m/a/j/a/c;

.field public b:Ljava/lang/String;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:Le/a/z3/e;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/z3/e;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glideRequests"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/y/a/d/f;->g:Le/a/z3/e;

    .line 2
    sget p2, Lcom/truecaller/flashsdk/R$id;->image:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->u(Landroidx/recyclerview/widget/RecyclerView$c0;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/y/a/d/f;->c:Ls1/g;

    .line 3
    sget p2, Lcom/truecaller/flashsdk/R$id;->youtubeContainer:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->u(Landroidx/recyclerview/widget/RecyclerView$c0;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/y/a/d/f;->d:Ls1/g;

    .line 4
    sget p2, Lcom/truecaller/flashsdk/R$id;->headerText:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->u(Landroidx/recyclerview/widget/RecyclerView$c0;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/y/a/d/f;->e:Ls1/g;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    sget p2, Lcom/truecaller/flashsdk/R$drawable;->flash_friend_popup:I

    .line 7
    sget v0, Lcom/truecaller/flashsdk/R$attr;->theme_incoming_text:I

    .line 8
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 9
    invoke-static {p1, p2}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 10
    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    .line 11
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 12
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 13
    iput-object p2, p0, Le/a/y/a/d/f;->f:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {p0}, Le/a/y/a/d/f;->N4()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public B1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/d/f;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "headerText"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public E2(Le/a/y/a/d/e$a;)V
    .locals 3

    const-string v0, "youtubeInitHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/d/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    sget v1, Lcom/truecaller/flashsdk/R$id;->youtubeContainer:I

    invoke-interface {p1, v1}, Le/a/y/a/d/e$a;->E(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Le/m/a/j/a/d;

    invoke-direct {v0}, Le/m/a/j/a/d;-><init>()V

    .line 4
    invoke-interface {p1, v1, v0}, Le/a/y/a/d/e$a;->C(ILe/m/a/j/a/d;)V

    const-string p1, "AIzaSyCd6tpLEKJi-5w6SDpTpzj6UTZpS47j7fw"

    const-string v1, "Developer key cannot be null or empty"

    .line 5
    invoke-static {p1, v1}, Ln3/g0/y;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, v0, Le/m/a/j/a/d;->d:Ljava/lang/String;

    iput-object p0, v0, Le/m/a/j/a/d;->e:Le/m/a/j/a/c$a;

    invoke-virtual {v0}, Le/m/a/j/a/d;->OA()V

    :cond_1
    return-void
.end method

.method public G1(Le/m/a/j/a/c$c;Le/m/a/j/a/b;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "youTubeInitializationResult"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    sget p2, Lcom/truecaller/flashsdk/R$string;->error_youtube_player:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final N4()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Le/a/y/a/d/f;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public c3()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/y/a/d/f;->a:Le/m/a/j/a/c;

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Le/m/a/j/a/h/l;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    iget-object v1, v1, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v1}, Le/m/a/j/a/h/e;->c()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    :try_start_2
    check-cast v0, Le/m/a/j/a/h/l;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Le/m/a/j/a/h/l;->a(Z)V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Le/m/a/j/a/h/j;

    invoke-direct {v1, v0}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 6
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public k1(Le/m/a/j/a/c$c;Le/m/a/j/a/c;Z)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "youTubePlayer"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Le/a/y/a/d/f;->a:Le/m/a/j/a/c;

    if-nez p3, :cond_0

    .line 2
    sget-object p1, Le/m/a/j/a/c$b;->b:Le/m/a/j/a/c$b;

    check-cast p2, Le/m/a/j/a/h/l;

    .line 3
    :try_start_0
    iget-object p3, p2, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Le/m/a/j/a/h/e;->p1(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    iget-object p1, p0, Le/a/y/a/d/f;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    :try_start_1
    iget-object p2, p2, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Le/m/a/j/a/h/e;->t1(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Le/m/a/j/a/h/j;

    invoke-direct {p2, p1}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6
    new-instance p2, Le/m/a/j/a/h/j;

    invoke-direct {p2, p1}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public m2(Ljava/lang/String;)V
    .locals 2

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/y/a/d/f;->N4()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "image"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Le/a/y/a/d/f;->g:Le/a/z3/e;

    .line 3
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 4
    check-cast v0, Le/a/z3/d;

    .line 5
    iget-object p1, p0, Le/a/y/a/d/f;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Le/a/z3/d;->p0(Landroid/graphics/drawable/Drawable;)Le/a/z3/d;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Le/a/y/a/d/f;->N4()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public r1(Ljava/lang/String;Le/a/y/a/d/e$a;)V
    .locals 1

    const-string v0, "videoUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "youtubeInitHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/y/a/d/f;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/a/y/a/d/f;->N4()Landroid/widget/ImageView;

    move-result-object p1

    const-string p2, "image"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Le/a/y/a/d/f;->d:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string p2, "youtubeContainer"

    .line 4
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
