.class public final synthetic Le/a/q4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/q4/t$a;

.field public final synthetic b:Le/a/q4/x;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/t$a;Le/a/q4/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/c;->a:Le/a/q4/t$a;

    iput-object p2, p0, Le/a/q4/c;->b:Le/a/q4/x;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Le/a/q4/c;->a:Le/a/q4/t$a;

    iget-object v0, p0, Le/a/q4/c;->b:Le/a/q4/x;

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/referral/BulkSmsView;

    invoke-interface {v1, p1}, Lcom/truecaller/referral/BulkSmsView;->Cu(I)V

    .line 6
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/referral/BulkSmsView;

    invoke-virtual {v0, p1}, Le/a/q4/x;->Pj(Lcom/truecaller/referral/BulkSmsView;)V

    :goto_0
    return-void
.end method
