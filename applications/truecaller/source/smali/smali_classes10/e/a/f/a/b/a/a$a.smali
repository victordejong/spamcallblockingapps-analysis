.class public final Le/a/f/a/b/a/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final synthetic b:Le/a/f/a/b/a/a;


# direct methods
.method public constructor <init>(Le/a/f/a/b/a/a;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/f/a/b/a/a$a;->b:Le/a/f/a/b/a/a;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 3
    new-instance p1, Le/a/f/a/b/a/a$a$b;

    invoke-direct {p1, p2}, Le/a/f/a/b/a/a$a$b;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/f/a/b/a/a$a;->a:Ls1/g;

    .line 4
    invoke-virtual {p0}, Le/a/f/a/b/a/a$a;->N4()Le/a/f/x/h;

    move-result-object p1

    .line 5
    iget-object p2, p1, Le/a/f/x/h;->b:Landroid/widget/ImageButton;

    new-instance v0, Le/a/f/a/b/a/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Le/a/f/a/b/a/a$a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p1, Le/a/f/x/h;->a:Landroid/widget/ImageButton;

    new-instance p2, Le/a/f/a/b/a/a$a$a;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Le/a/f/a/b/a/a$a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final N4()Le/a/f/x/h;
    .locals 1

    iget-object v0, p0, Le/a/f/a/b/a/a$a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/x/h;

    return-object v0
.end method
