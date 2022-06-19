.class public final Le/a/d/c/a0/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;

.field public final synthetic b:Le/a/d/c/a0/l/c;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;Le/a/d/c/a0/l/c;Landroid/widget/RadioGroup;Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a0/l/b;->a:Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;

    iput-object p2, p0, Le/a/d/c/a0/l/b;->b:Le/a/d/c/a0/l/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/d/c/a0/l/b;->b:Le/a/d/c/a0/l/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Le/a/d/c/a0/l/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/d/c/a0/l/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/a/d/c/a0/l/b;->a:Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;

    invoke-interface {p1, v0}, Le/a/d/c/a0/l/a;->Er(Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;)V

    :cond_1
    return-void
.end method
