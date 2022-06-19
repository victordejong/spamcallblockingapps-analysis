.class public final Le/a/c/a/c/h/l/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/c/h/l/g;

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Le/a/c/a/c/h/l/g;J)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/l/h;->a:Le/a/c/a/c/h/l/g;

    iput-wide p2, p0, Le/a/c/a/c/h/l/h;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/c/a/c/h/l/h;->a:Le/a/c/a/c/h/l/g;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Le/a/c/a/c/h/l/h;->a:Le/a/c/a/c/h/l/g;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView.context"

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Le/a/c/a/c/h/l/h;->b:J

    invoke-static {v0, v1, v2}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$c;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
