.class public abstract Le/a/e/c2/t;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/c2/t$b;,
        Le/a/e/c2/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Le/a/e/c2/t$b;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field public a:Le/a/e/c2/t$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract e(Le/a/e/c2/t$b;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public abstract g(Landroid/view/ViewGroup;I)Le/a/e/c2/t$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Le/a/e/c2/t$b;

    .line 2
    iput p2, p1, Le/a/e/c2/t$b;->a:I

    .line 3
    invoke-virtual {p0, p1, p2}, Le/a/e/c2/t;->e(Le/a/e/c2/t$b;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/e/c2/t;->g(Landroid/view/ViewGroup;I)Le/a/e/c2/t$b;

    move-result-object p1

    .line 2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v0, "This item view can not have an OnClickListener, it will interfere with any OnItemClickListener"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Le/a/e/c2/r;

    invoke-direct {v0, p0, p1}, Le/a/e/c2/r;-><init>(Le/a/e/c2/t;Le/a/e/c2/t$b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Le/a/e/c2/s;

    invoke-direct {v0, p0, p1}, Le/a/e/c2/s;-><init>(Le/a/e/c2/t;Le/a/e/c2/t$b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p1
.end method
