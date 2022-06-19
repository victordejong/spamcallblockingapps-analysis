.class public final Le/a/a/n/j/h;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/n/j/p;


# instance fields
.field public final a:Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;

.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 13

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/n/j/h;->b:Landroid/view/View;

    const v0, 0x7f0a0b16

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.messaging.linkpreviews.LinkPreviewMessageView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;

    iput-object v0, p0, Le/a/a/n/j/h;->a:Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    .line 3
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    move-object v7, p1

    move-object v8, p2

    move-object v9, p0

    .line 4
    invoke-static/range {v7 .. v12}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public L3(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/LinkPreviewType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/n/j/h;->a:Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;

    invoke-virtual {v0, p1, p2}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;->g1(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/LinkPreviewType;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/h;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "subtitle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/n/j/h;->a:Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;

    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public g(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/n/j/h;->a:Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/a/n/j/h;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0807a1

    const v2, 0x7f04068f

    invoke-static {p1, v1, v2}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;->setTitleIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/n/j/h;->a:Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;

    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;->setTitle(Ljava/lang/String;)V

    return-void
.end method
