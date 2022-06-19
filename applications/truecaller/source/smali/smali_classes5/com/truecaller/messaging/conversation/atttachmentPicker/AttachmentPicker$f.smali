.class public final Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$f;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$f;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$t;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$f;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-static {p2}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->a(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    move-result-object p2

    invoke-interface {p2}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;->h4()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$f;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 4
    iput-boolean p1, p2, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->o:Z

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$f;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->b(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const-string p3, "recyclerViewPreview"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result p2

    .line 3
    iput p2, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->p:I

    .line 4
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$f;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->b(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getItemCount()I

    move-result p2

    .line 5
    iput p2, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->q:I

    .line 6
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$f;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->b(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 7
    iput p2, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->r:I

    .line 8
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$f;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 9
    iget-boolean p2, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->o:Z

    if-eqz p2, :cond_2

    .line 10
    iget p2, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->p:I

    .line 11
    iget p3, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->r:I

    add-int/2addr p2, p3

    .line 12
    iget p1, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->q:I

    add-int/lit8 p1, p1, -0x19

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p2, p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$f;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->o:Z

    .line 16
    iget p2, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->q:I

    .line 17
    iget-object p3, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->m:Le/a/r2/f;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/a/c/l8/i;

    add-int/lit8 p2, p2, 0x32

    iget-boolean v1, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->u:Z

    iget-boolean v2, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->v:Z

    invoke-interface {p3, p2, v1, v2}, Le/a/a/c/l8/i;->a(IZZ)Le/a/r2/x;

    move-result-object p2

    .line 18
    iget-object p3, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->n:Le/a/r2/j;

    if-eqz p3, :cond_0

    new-instance v0, Le/a/a/c/l8/b;

    invoke-direct {v0, p1}, Le/a/a/c/l8/b;-><init>(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)V

    invoke-virtual {p2, p3, v0}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    goto :goto_0

    :cond_0
    const-string p1, "uiThread"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "galleryItemsLoader"

    .line 19
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
