.class public Le/h/a/c/r0/c;
.super Ln3/k0/a/a;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;

.field public final e:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

.field public f:Landroid/view/LayoutInflater;

.field public final g:Landroid/widget/LinearLayout$LayoutParams;

.field public final h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/h/a/c/r0/i;",
            ">;"
        }
    .end annotation
.end field

.field public final i:I

.field public j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/h/a/c/r0/i;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/k0/a/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/r0/c;->d:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/h/a/c/r0/c;->h:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object p2, p3, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 7
    iget-object v0, v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Le/h/a/c/r0/c;->c:Ljava/util/ArrayList;

    .line 10
    iput-object p4, p0, Le/h/a/c/r0/c;->g:Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    iput-object p3, p0, Le/h/a/c/r0/c;->e:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 12
    iput p5, p0, Le/h/a/c/r0/c;->i:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public f(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/c;->d:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Le/h/a/c/r0/c;->f:Landroid/view/LayoutInflater;

    .line 2
    sget v1, Lcom/clevertap/android/sdk/R$layout;->inbox_carousel_image_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le/h/a/c/r0/c;->j:Landroid/view/View;

    .line 3
    :try_start_0
    iget-object v0, p0, Le/h/a/c/r0/c;->e:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 4
    iget-object v0, v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->m:Ljava/lang/String;

    const-string v1, "l"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Le/h/a/c/r0/c;->j:Landroid/view/View;

    sget v1, Lcom/clevertap/android/sdk/R$id;->imageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 7
    iget-object v1, p0, Le/h/a/c/r0/c;->j:Landroid/view/View;

    invoke-virtual {p0, v0, v1, p2, p1}, Le/h/a/c/r0/c;->m(Landroid/widget/ImageView;Landroid/view/View;ILandroid/view/ViewGroup;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/h/a/c/r0/c;->e:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 9
    iget-object v0, v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->m:Ljava/lang/String;

    const-string v1, "p"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Le/h/a/c/r0/c;->j:Landroid/view/View;

    sget v1, Lcom/clevertap/android/sdk/R$id;->squareImageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 12
    iget-object v1, p0, Le/h/a/c/r0/c;->j:Landroid/view/View;

    invoke-virtual {p0, v0, v1, p2, p1}, Le/h/a/c/r0/c;->m(Landroid/widget/ImageView;Landroid/view/View;ILandroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_1
    :goto_0
    iget-object p1, p0, Le/h/a/c/r0/c;->j:Landroid/view/View;

    return-object p1
.end method

.method public g(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Landroid/widget/ImageView;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "ct_image"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/r0/c;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v1

    new-instance v2, Le/f/a/r/h;

    invoke-direct {v2}, Le/f/a/r/h;-><init>()V

    iget-object v3, p0, Le/h/a/c/r0/c;->d:Landroid/content/Context;

    .line 4
    invoke-static {v3, v0}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/r/h;

    iget-object v3, p0, Le/h/a/c/r0/c;->d:Landroid/content/Context;

    .line 5
    invoke-static {v3, v0}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/r0/c;->c:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 11
    :goto_0
    iget-object p1, p0, Le/h/a/c/r0/c;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p4, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    new-instance p1, Le/h/a/c/r0/c$a;

    invoke-direct {p1, p0, p3}, Le/h/a/c/r0/c$a;-><init>(Le/h/a/c/r0/c;I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
