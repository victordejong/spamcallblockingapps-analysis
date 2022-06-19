.class public final Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;->onVisibilityChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView$a;->b:Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView$a;->b:Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;

    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;->getPresenter$video_caller_id_release()Le/a/k/a/i/b;

    move-result-object v0

    check-cast v0, Le/a/k/a/i/f;

    .line 2
    iget-object v1, v0, Le/a/k/a/i/f;->e:Le/a/k/c/r0;

    invoke-interface {v1}, Le/a/k/c/r0;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Le/a/k/a/i/e;

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1}, Le/a/k/a/i/e;-><init>(Le/a/k/a/i/f;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 4
    :cond_0
    iget-object v1, v0, Le/a/k/a/i/f;->h:Le/a/k/c/h0;

    invoke-interface {v1}, Le/a/k/c/h0;->e()Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    move-result-object v1

    .line 5
    iget-object v2, v0, Le/a/k/a/i/f;->e:Le/a/k/c/r0;

    invoke-interface {v2}, Le/a/k/c/r0;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Everyone:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    if-ne v1, v2, :cond_1

    .line 6
    sget v1, Lcom/truecaller/videocallerid/R$string;->vid_settings_everyone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/truecaller/videocallerid/R$string;->vid_settings_everyone_desc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, v0, Le/a/k/a/i/f;->e:Le/a/k/c/r0;

    invoke-interface {v2}, Le/a/k/c/r0;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Contacts:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    if-ne v1, v2, :cond_2

    .line 9
    sget v1, Lcom/truecaller/videocallerid/R$string;->vid_settings_contacts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/truecaller/videocallerid/R$string;->vid_settings_contacts_desc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    sget v1, Lcom/truecaller/videocallerid/R$string;->vid_settings_no_one:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/truecaller/videocallerid/R$string;->vid_settings_no_one_desc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    :goto_0
    iget-object v1, v0, Le/a/k/a/i/f;->k:Le/a/p5/c0;

    .line 14
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/i/c;

    if-eqz v0, :cond_3

    .line 15
    iget-object v2, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 16
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "getString(receiveVideoSettings.first)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 18
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sget v6, Lcom/truecaller/videocallerid/R$string;->video_caller_id:I

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v1, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v1, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(receiveVideoSe\u2026.string.video_caller_id))"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v0, v2, v1}, Le/a/k/a/i/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
