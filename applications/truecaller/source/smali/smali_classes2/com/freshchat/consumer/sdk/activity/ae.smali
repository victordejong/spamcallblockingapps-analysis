.class public Lcom/freshchat/consumer/sdk/activity/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ae;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ae;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p1, p4, p5}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(J)V

    return-void
.end method
