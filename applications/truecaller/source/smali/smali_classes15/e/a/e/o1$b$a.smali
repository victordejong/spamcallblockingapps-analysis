.class public Le/a/e/o1$b$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/o1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lcom/truecaller/ui/view/ThemeSelectorView;

.field public c:I

.field public d:I

.field public final synthetic e:Le/a/e/o1$b;


# direct methods
.method public constructor <init>(Le/a/e/o1$b;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/o1$b$a;->e:Le/a/e/o1$b;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a1206

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/e/o1$b$a;->a:Landroid/widget/TextView;

    const p1, 0x7f0a0f10

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ui/view/ThemeSelectorView;

    iput-object p1, p0, Le/a/e/o1$b$a;->b:Lcom/truecaller/ui/view/ThemeSelectorView;

    .line 5
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Le/a/e/o1$b$a;->c:I

    const/high16 p1, -0x1000000

    .line 7
    iput p1, p0, Le/a/e/o1$b$a;->d:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e/o1$b$a;->e:Le/a/e/o1$b;

    .line 3
    iget v1, v0, Le/a/e/o1$b;->c:I

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    .line 5
    iget-object v0, p0, Le/a/e/o1$b$a;->e:Le/a/e/o1$b;

    .line 6
    iput p1, v0, Le/a/e/o1$b;->c:I

    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
