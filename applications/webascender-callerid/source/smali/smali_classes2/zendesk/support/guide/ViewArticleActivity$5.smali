.class Lzendesk/support/guide/ViewArticleActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/guide/ViewArticleActivity;->showLoadingErrorState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/guide/ViewArticleActivity;


# direct methods
.method constructor <init>(Lzendesk/support/guide/ViewArticleActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$5;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$5;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {p1}, Lzendesk/support/guide/ViewArticleActivity;->access$500(Lzendesk/support/guide/ViewArticleActivity;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$5;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {p1}, Lzendesk/support/guide/ViewArticleActivity;->access$100(Lzendesk/support/guide/ViewArticleActivity;)Lzendesk/support/guide/ArticleViewModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$5;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {p1}, Lzendesk/support/guide/ViewArticleActivity;->access$500(Lzendesk/support/guide/ViewArticleActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lzendesk/support/guide/ViewArticleActivity;->access$600(Lzendesk/support/guide/ViewArticleActivity;J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$5;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {p1}, Lzendesk/support/guide/ViewArticleActivity;->access$100(Lzendesk/support/guide/ViewArticleActivity;)Lzendesk/support/guide/ArticleViewModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$5;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {p1}, Lzendesk/support/guide/ViewArticleActivity;->access$100(Lzendesk/support/guide/ViewArticleActivity;)Lzendesk/support/guide/ArticleViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/guide/ArticleViewModel;->getId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lzendesk/support/guide/ViewArticleActivity;->access$300(Lzendesk/support/guide/ViewArticleActivity;J)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$5;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {p1}, Lzendesk/support/guide/ViewArticleActivity;->access$700(Lzendesk/support/guide/ViewArticleActivity;)V

    return-void
.end method
