.class Lzendesk/support/guide/HelpRecyclerViewAdapter$SectionViewHolder;
.super Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/HelpRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SectionViewHolder"
.end annotation


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    sget p1, Lg/k/c/f;->W0:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindTo(Lzendesk/support/HelpItem;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "HelpCenterActivity"

    const-string v0, "Section item was null, cannot bind"

    .line 1
    invoke-static {p2, v0, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;->textView:Landroid/widget/TextView;

    invoke-interface {p1}, Lzendesk/support/HelpItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzendesk/support/UiUtils;->decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
