.class Lzendesk/commonui/ResponseOptionsView$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/commonui/ResponseOptionsView$a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lzendesk/commonui/m;

.field final synthetic g:Landroidx/recyclerview/widget/RecyclerView$d0;

.field final synthetic h:Lzendesk/commonui/ResponseOptionsView$a;


# direct methods
.method constructor <init>(Lzendesk/commonui/ResponseOptionsView$a;Lzendesk/commonui/m;Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/commonui/ResponseOptionsView$a$b;->h:Lzendesk/commonui/ResponseOptionsView$a;

    iput-object p2, p0, Lzendesk/commonui/ResponseOptionsView$a$b;->f:Lzendesk/commonui/m;

    iput-object p3, p0, Lzendesk/commonui/ResponseOptionsView$a$b;->g:Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/commonui/ResponseOptionsView$a$b;->h:Lzendesk/commonui/ResponseOptionsView$a;

    invoke-static {p1}, Lzendesk/commonui/ResponseOptionsView$a;->f(Lzendesk/commonui/ResponseOptionsView$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lzendesk/commonui/ResponseOptionsView$a$b;->h:Lzendesk/commonui/ResponseOptionsView$a;

    iget-object v0, p0, Lzendesk/commonui/ResponseOptionsView$a$b;->f:Lzendesk/commonui/m;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/n;->e(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lzendesk/commonui/ResponseOptionsView$a$b;->h:Lzendesk/commonui/ResponseOptionsView$a;

    invoke-static {p1}, Lzendesk/commonui/ResponseOptionsView$a;->h(Lzendesk/commonui/ResponseOptionsView$a;)Lzendesk/commonui/n;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lzendesk/commonui/ResponseOptionsView$a$b;->g:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lzendesk/commonui/ResponseOptionsView$a$b$a;

    invoke-direct {v0, p0}, Lzendesk/commonui/ResponseOptionsView$a$b$a;-><init>(Lzendesk/commonui/ResponseOptionsView$a$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lzendesk/commonui/ResponseOptionsView$a$b;->h:Lzendesk/commonui/ResponseOptionsView$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzendesk/commonui/ResponseOptionsView$a;->g(Lzendesk/commonui/ResponseOptionsView$a;Z)Z

    :cond_1
    return-void
.end method
