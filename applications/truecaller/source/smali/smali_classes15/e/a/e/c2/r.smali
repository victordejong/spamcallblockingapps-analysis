.class public Le/a/e/c2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c2/t$b;

.field public final synthetic b:Le/a/e/c2/t;


# direct methods
.method public constructor <init>(Le/a/e/c2/t;Le/a/e/c2/t$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c2/r;->b:Le/a/e/c2/t;

    iput-object p2, p0, Le/a/e/c2/r;->a:Le/a/e/c2/t$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/e/c2/r;->b:Le/a/e/c2/t;

    iget-object v0, p0, Le/a/e/c2/r;->a:Le/a/e/c2/t$b;

    iget v0, v0, Le/a/e/c2/t$b;->a:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemId(I)J

    move-result-wide v1

    .line 2
    iget-object p1, p1, Le/a/e/c2/t;->a:Le/a/e/c2/t$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, v0, v1, v2}, Le/a/e/c2/t$a;->a(IJ)V

    :cond_0
    return-void
.end method
