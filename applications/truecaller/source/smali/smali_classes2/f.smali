.class public final Lf;
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

    iput p1, p0, Lf;->a:I

    iput-object p2, p0, Lf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lf;->a:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Lf;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getPresenter$video_caller_id_release()Le/a/k/a/e/m/d;

    move-result-object p1

    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->NoOne:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    check-cast p1, Le/a/k/a/e/m/f;

    invoke-virtual {p1, v1, v0}, Le/a/k/a/e/m/f;->Hj(Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lf;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getPresenter$video_caller_id_release()Le/a/k/a/e/m/d;

    move-result-object p1

    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Contacts:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    check-cast p1, Le/a/k/a/e/m/f;

    invoke-virtual {p1, v1, v0}, Le/a/k/a/e/m/f;->Hj(Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;Z)V

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lf;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getPresenter$video_caller_id_release()Le/a/k/a/e/m/d;

    move-result-object p1

    sget-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Everyone:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    check-cast p1, Le/a/k/a/e/m/f;

    invoke-virtual {p1, v1, v0}, Le/a/k/a/e/m/f;->Hj(Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;Z)V

    return-void
.end method
