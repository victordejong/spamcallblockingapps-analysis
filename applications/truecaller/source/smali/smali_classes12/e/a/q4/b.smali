.class public final synthetic Le/a/q4/b;
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

    iput-object p1, p0, Le/a/q4/b;->a:Le/a/q4/t$a;

    iput-object p2, p0, Le/a/q4/b;->b:Le/a/q4/x;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Le/a/q4/b;->a:Le/a/q4/t$a;

    iget-object v0, p0, Le/a/q4/b;->b:Le/a/q4/x;

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, v0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/truecaller/referral/BulkSmsView;

    iget-object v0, v0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/truecaller/data/entity/messaging/Participant;

    sget-object v4, Lcom/truecaller/details_view/analytics/SourceType;->BulkSmsReferral:Lcom/truecaller/details_view/analytics/SourceType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/truecaller/referral/BulkSmsView;->mh(Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/details_view/analytics/SourceType;ZZZ)V

    :goto_0
    return-void
.end method
