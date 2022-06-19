.class Lzendesk/support/guide/ViewArticleActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/guide/ViewArticleActivity;->loadArticleBody()V
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
    iput-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$4;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/ViewArticleActivity$4;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {v0}, Lzendesk/support/guide/ViewArticleActivity;->access$100(Lzendesk/support/guide/ViewArticleActivity;)Lzendesk/support/guide/ArticleViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/guide/ArticleViewModel;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lzendesk/support/guide/ViewArticleActivity;->access$300(Lzendesk/support/guide/ViewArticleActivity;J)V

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/ViewArticleActivity$4;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {v0}, Lzendesk/support/guide/ViewArticleActivity;->access$400(Lzendesk/support/guide/ViewArticleActivity;)V

    return-void
.end method
