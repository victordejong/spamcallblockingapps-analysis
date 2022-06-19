.class public final Le/a/f/a/b/a/a$a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/a/a$a;-><init>(Le/a/f/a/b/a/a;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/f/a/b/a/a$a$a;->a:I

    iput-object p2, p0, Le/a/f/a/b/a/a$a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/f/a/b/a/a$a$a;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/f/a/b/a/a$a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/a/a$a;

    iget-object v0, p1, Le/a/f/a/b/a/a$a;->b:Le/a/f/a/b/a/a;

    .line 2
    iget-object v0, v0, Le/a/f/a/b/a/a;->a:Le/a/f/a/b/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/f/a/b/a/b;->t9(I)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/f/a/b/a/a$a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/a/a$a;

    iget-object v0, p1, Le/a/f/a/b/a/a$a;->b:Le/a/f/a/b/a/a;

    .line 6
    iget-object v0, v0, Le/a/f/a/b/a/a;->a:Le/a/f/a/b/a/b;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/f/a/b/a/b;->hj(I)V

    :cond_3
    return-void
.end method
