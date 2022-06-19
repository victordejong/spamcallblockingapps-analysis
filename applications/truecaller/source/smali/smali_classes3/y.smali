.class public final Ly;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ly;->a:I

    iput-object p2, p0, Ly;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Ly;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 1
    iget-object p1, p0, Ly;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;->getPresenter$video_caller_id_release()Le/a/k/a/i/b;

    move-result-object p1

    check-cast p1, Le/a/k/a/i/f;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/i/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/k/a/i/c;->I0()V

    :cond_0
    return-void

    .line 3
    :cond_1
    throw v0

    .line 4
    :cond_2
    iget-object p1, p0, Ly;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;

    invoke-static {p1}, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;->g1(Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;)Le/a/k/m/y;

    move-result-object p1

    iget-object p1, p1, Le/a/k/m/y;->b:Landroid/widget/Button;

    const-string v2, "binding.configureButton"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    check-cast v0, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    if-eqz v0, :cond_6

    .line 5
    iget-object p1, p0, Ly;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;->getPresenter$video_caller_id_release()Le/a/k/a/i/b;

    move-result-object p1

    check-cast p1, Le/a/k/a/i/f;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/i/c;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/k/a/i/c;->L()V

    goto :goto_1

    .line 9
    :cond_5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/i/c;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/k/a/i/c;->i0()V

    :cond_6
    :goto_1
    return-void
.end method
