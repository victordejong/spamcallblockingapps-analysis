.class public Le/a/e/c2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c2/t$b;

.field public final synthetic b:Le/a/e/c2/t;


# direct methods
.method public constructor <init>(Le/a/e/c2/t;Le/a/e/c2/t$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c2/s;->b:Le/a/e/c2/t;

    iput-object p2, p0, Le/a/e/c2/s;->a:Le/a/e/c2/t$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/e/c2/s;->b:Le/a/e/c2/t;

    iget-object v0, p0, Le/a/e/c2/s;->a:Le/a/e/c2/t$b;

    iget v1, v0, Le/a/e/c2/t$b;->a:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemId()J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method
