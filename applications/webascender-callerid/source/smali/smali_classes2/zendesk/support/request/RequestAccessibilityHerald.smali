.class Lzendesk/support/request/RequestAccessibilityHerald;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt/a/k<",
        "Lt/a/a<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestAccessibilityHerald;->view:Landroid/view/View;

    return-void
.end method

.method private varargs announce(I[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestAccessibilityHerald;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lzendesk/support/request/RequestAccessibilityHerald;->view:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static create(Lzendesk/support/request/RequestActivity;)Lzendesk/support/request/RequestAccessibilityHerald;
    .locals 1

    .line 1
    sget v0, Lg/k/c/f;->j:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 2
    new-instance v0, Lzendesk/support/request/RequestAccessibilityHerald;

    invoke-direct {v0, p0}, Lzendesk/support/request/RequestAccessibilityHerald;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lt/a/a;

    invoke-virtual {p0, p1}, Lzendesk/support/request/RequestAccessibilityHerald;->update(Lt/a/a;)V

    return-void
.end method

.method public update(Lt/a/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt/a/a<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lt/a/a;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LOAD_COMMENT_INITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "CREATE_COMMENT_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "CREATE_COMMENT_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lt/a/a;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/h/k/c;

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p1, Lf/h/k/c;->a:Ljava/lang/Object;

    if-eqz p1, :cond_3

    check-cast p1, Lzendesk/support/CommentsResponse;

    invoke-virtual {p1}, Lzendesk/support/CommentsResponse;->getComments()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    sget p1, Lg/k/c/j;->O:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lzendesk/support/request/RequestAccessibilityHerald;->announce(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :pswitch_1
    invoke-virtual {p1}, Lt/a/a;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/request/StateMessage;

    .line 7
    sget v0, Lg/k/c/j;->N:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getPlainBody()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-direct {p0, v0, v1}, Lzendesk/support/request/RequestAccessibilityHerald;->announce(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :pswitch_2
    invoke-virtual {p1}, Lt/a/a;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;

    .line 9
    sget v0, Lg/k/c/j;->M:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;->getMessage()Lzendesk/support/request/StateMessage;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getPlainBody()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-direct {p0, v0, v1}, Lzendesk/support/request/RequestAccessibilityHerald;->announce(I[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64184f60 -> :sswitch_2
        -0x4eaa361b -> :sswitch_1
        -0x116a2435 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
