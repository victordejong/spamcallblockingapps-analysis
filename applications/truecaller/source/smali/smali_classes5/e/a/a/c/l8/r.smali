.class public final Le/a/a/c/l8/r;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b;

.field public final c:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

.field public final d:Ln3/e/b/c1;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b;Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;Ln3/e/b/c1;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b;",
            "Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;",
            "Ln3/e/b/c1;",
            "Z)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraCallback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileCallback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preview"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/a/c/l8/r;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Le/a/a/c/l8/r;->b:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b;

    iput-object p3, p0, Le/a/a/c/l8/r;->c:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    iput-object p4, p0, Le/a/a/c/l8/r;->d:Ln3/e/b/c1;

    iput-boolean p5, p0, Le/a/a/c/l8/r;->e:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/l8/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/l8/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Le/a/a/c/l8/g;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Le/a/a/c/l8/d;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Le/a/a/c/l8/k;

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    .line 5
    :cond_2
    instance-of p1, p1, Le/a/a/c/l8/n;

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    :goto_0
    return p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Item type not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 9

    const-string v0, "viewholder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const-string v3, "fileCallback"

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    const/4 p2, 0x4

    if-ne v0, p2, :cond_0

    .line 2
    check-cast p1, Le/a/a/c/l8/o;

    const p2, 0x7f1202a6

    .line 3
    iget-object v0, p1, Le/a/a/c/l8/o;->b:Le/a/p5/x0/b;

    sget-object v1, Le/a/a/c/l8/o;->c:[Ls1/a/l;

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/m3/p0;

    .line 4
    iget-object v0, v0, Le/a/m3/p0;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.text"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Le/a/a/c/l8/o;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewType not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    check-cast p1, Le/a/a/c/l8/l;

    iget-object p2, p0, Le/a/a/c/l8/r;->c:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    .line 7
    invoke-static {p2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Le/a/a/c/l8/l;->N4()Le/a/m3/o0;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/o0;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.permissionRequestText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "binding.permissionRequestText.layoutParams"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget v2, p1, Le/a/a/c/l8/l;->e:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    invoke-virtual {p1}, Le/a/a/c/l8/l;->N4()Le/a/m3/o0;

    move-result-object v2

    iget-object v2, v2, Le/a/m3/o0;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {p1}, Le/a/a/c/l8/l;->N4()Le/a/m3/o0;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/o0;->a:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Le/a/a/c/l8/m;

    invoke-direct {v0, p2}, Le/a/a/c/l8/m;-><init>(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 12
    :cond_2
    check-cast p1, Le/a/a/c/l8/p;

    iget-object v0, p0, Le/a/a/c/l8/r;->c:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    iget-object v6, p0, Le/a/a/c/l8/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v6, "null cannot be cast to non-null type com.truecaller.messaging.conversation.atttachmentPicker.GalleryItem"

    invoke-static {p2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/a/c/l8/g;

    .line 13
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "galleryItem"

    invoke-static {p2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v3, p1, Le/a/a/c/l8/p;->b:Landroid/content/Context;

    invoke-static {v3}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v3

    .line 15
    iget-object v6, p2, Le/a/a/c/l8/g;->b:Landroid/net/Uri;

    .line 16
    invoke-virtual {v3, v6}, Le/a/z3/e;->z(Landroid/net/Uri;)Le/a/z3/d;

    move-result-object v3

    const v6, 0x7f0805f1

    .line 17
    invoke-virtual {v3, v6}, Le/a/z3/d;->h0(I)Le/a/z3/d;

    move-result-object v3

    .line 18
    new-instance v6, Le/f/a/n/g;

    new-array v5, v5, [Le/f/a/n/q/d/f;

    new-instance v7, Le/f/a/n/q/d/i;

    invoke-direct {v7}, Le/f/a/n/q/d/i;-><init>()V

    aput-object v7, v5, v2

    new-instance v7, Le/f/a/n/q/d/y;

    iget v8, p1, Le/a/a/c/l8/p;->c:I

    invoke-direct {v7, v8}, Le/f/a/n/q/d/y;-><init>(I)V

    aput-object v7, v5, v1

    invoke-static {v5}, Lcom/google/common/collect/Collections2;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v6, v5}, Le/f/a/n/g;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v3, v6, v1}, Le/f/a/r/a;->C(Le/f/a/n/m;Z)Le/f/a/r/a;

    move-result-object v3

    .line 20
    check-cast v3, Le/a/z3/d;

    .line 21
    invoke-virtual {p1}, Le/a/a/c/l8/p;->N4()Le/a/m3/n0;

    move-result-object v5

    iget-object v5, v5, Le/a/m3/n0;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 22
    iget v3, p2, Le/a/a/c/l8/g;->a:I

    const-string v5, "binding.videoDurationText"

    if-ne v3, v4, :cond_3

    .line 23
    invoke-virtual {p1}, Le/a/a/c/l8/p;->N4()Le/a/m3/n0;

    move-result-object v2

    iget-object v2, v2, Le/a/m3/n0;->b:Landroid/widget/TextView;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 24
    invoke-virtual {p1}, Le/a/a/c/l8/p;->N4()Le/a/m3/n0;

    move-result-object v1

    iget-object v1, v1, Le/a/m3/n0;->b:Landroid/widget/TextView;

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v2, p2, Le/a/a/c/l8/g;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p1}, Le/a/a/c/l8/p;->N4()Le/a/m3/n0;

    move-result-object v1

    iget-object v1, v1, Le/a/m3/n0;->b:Landroid/widget/TextView;

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 28
    :goto_0
    invoke-virtual {p1}, Le/a/a/c/l8/p;->N4()Le/a/m3/n0;

    move-result-object v1

    iget-object v1, v1, Le/a/m3/n0;->a:Landroid/widget/ImageView;

    new-instance v2, Le/a/a/c/l8/q;

    invoke-direct {v2, p1, v0, p2}, Le/a/a/c/l8/q;-><init>(Le/a/a/c/l8/p;Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;Le/a/a/c/l8/g;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 29
    :cond_4
    check-cast p1, Le/a/a/c/l8/e;

    iget-object p2, p0, Le/a/a/c/l8/r;->b:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b;

    iget-object v0, p0, Le/a/a/c/l8/r;->d:Ln3/e/b/c1;

    const-string v1, "cameraCallback"

    .line 30
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "preview"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v1, p2

    check-cast v1, Le/a/a/c/v5;

    .line 32
    iget-object v1, v1, Le/a/a/c/v5;->f:Le/a/p5/a0;

    const-string v3, "android.permission.CAMERA"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    iget-object v1, p1, Le/a/a/c/l8/e;->a:Le/a/p5/x0/b;

    sget-object v3, Le/a/a/c/l8/e;->b:[Ls1/a/l;

    aget-object v3, v3, v2

    invoke-virtual {v1, p1, v3}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v1

    check-cast v1, Le/a/m3/r;

    .line 34
    iget-object v1, v1, Le/a/m3/r;->c:Landroidx/camera/view/PreviewView;

    const-string v3, "binding.previewView"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Ln3/e/b/c1$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/e/b/c1;->r(Ln3/e/b/c1$d;)V

    .line 35
    :cond_5
    iget-object v0, p1, Le/a/a/c/l8/e;->a:Le/a/p5/x0/b;

    sget-object v1, Le/a/a/c/l8/e;->b:[Ls1/a/l;

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object p1

    check-cast p1, Le/a/m3/r;

    .line 36
    iget-object p1, p1, Le/a/m3/r;->b:Landroidx/cardview/widget/CardView;

    new-instance v0, Le/a/a/c/l8/f;

    invoke-direct {v0, p2}, Le/a/a/c/l8/f;-><init>(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string v0, "viewgroup"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1
    new-instance p2, Le/a/a/c/l8/o;

    const v0, 0x7f0d023b

    invoke-static {p1, v0, v1}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Le/a/a/c/l8/o;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewType not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p2, Le/a/a/c/l8/l;

    const v0, 0x7f0d023a

    .line 4
    invoke-static {p1, v0, v1}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Le/a/a/c/l8/r;->e:Z

    .line 5
    invoke-direct {p2, p1, v0}, Le/a/a/c/l8/l;-><init>(Landroid/view/View;Z)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance p2, Le/a/a/c/l8/p;

    const v0, 0x7f0d0239

    invoke-static {p1, v0, v1}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Le/a/a/c/l8/p;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_3
    new-instance p2, Le/a/a/c/l8/e;

    const v0, 0x7f0d00c7

    invoke-static {p1, v0, v1}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Le/a/a/c/l8/e;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
