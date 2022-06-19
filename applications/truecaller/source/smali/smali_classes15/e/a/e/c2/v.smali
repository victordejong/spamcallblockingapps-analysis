.class public Le/a/e/c2/v;
.super Lcom/truecaller/ui/components/FloatingWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/ui/components/FloatingWindow<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Lcom/truecaller/settings/CallingSettings;

.field public B:Le/a/b0/e/f;

.field public C:Le/a/h3/b/a;

.field public p:Lcom/truecaller/ui/components/AvatarView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Lcom/truecaller/data/entity/Contact;

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public v:Landroid/view/View;

.field public w:Landroid/widget/ImageView;

.field public x:Ljava/lang/String;

.field public y:Lcom/truecaller/blocking/FilterMatch;

.field public z:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/ui/components/FloatingWindow$c;)V
    .locals 1

    .line 1
    const-class p2, Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/truecaller/ui/components/FloatingWindow;-><init>(Landroid/content/Context;Lcom/truecaller/ui/components/FloatingWindow$c;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->m:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/ui/components/FloatingWindow;->d:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/truecaller/ui/components/FloatingWindow;->f:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    iget-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-long v0, v0

    const-string v2, "clipboardSearchLastYPosition"

    .line 5
    invoke-static {v2, v0, v1}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->f:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->b:Lcom/truecaller/ui/components/FloatingWindow$c;

    check-cast v0, Le/a/e/c2/o;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/ui/components/FloatingWindow;->d()V

    .line 10
    :goto_0
    sget-object v0, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->MANUAL:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    if-ne p1, v0, :cond_1

    .line 11
    invoke-virtual {p0}, Le/a/e/c2/v;->e()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/c2/v;->A:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "clipboardSearchHaveAskedOnDismiss"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    .line 4
    const-class v2, Lcom/truecaller/ui/AfterClipboardSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 5
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;)V
    .locals 2

    .line 1
    iput-object p2, p0, Le/a/e/c2/v;->s:Lcom/truecaller/data/entity/Contact;

    .line 2
    iput-object p1, p0, Le/a/e/c2/v;->x:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/a/e/c2/v;->y:Lcom/truecaller/blocking/FilterMatch;

    .line 4
    iget-object p1, p0, Le/a/e/c2/v;->q:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->i()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Le/a/e/c2/v;->r:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Address;->getCountryName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Le/a/e/c2/v;->r:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Le/a/o5/t;->j(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Le/a/e/c2/v;->p:Lcom/truecaller/ui/components/AvatarView;

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/ui/components/AvatarView;->a()V

    .line 14
    iput-boolean p3, p1, Lcom/truecaller/ui/components/AvatarView;->h:Z

    .line 15
    iget-object p1, p1, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    invoke-virtual {p1, p3}, Lcom/truecaller/ui/view/ContactPhoto;->setIsSpam(Z)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {p2, p3}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    .line 17
    invoke-static {p2, p3}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v0

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->u0()Z

    move-result p2

    .line 18
    iget-object v1, p0, Le/a/e/c2/v;->p:Lcom/truecaller/ui/components/AvatarView;

    .line 19
    invoke-virtual {v1, p1, p3, v0, p2}, Lcom/truecaller/ui/components/AvatarView;->b(Landroid/net/Uri;Landroid/net/Uri;ZZ)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/e/c2/v;->w:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/e/c2/v;->e()V

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/e/c2/v;->C:Le/a/h3/b/a;

    invoke-interface {v0}, Le/a/h3/b/a;->a()V

    .line 4
    iget-object v0, p0, Le/a/e/c2/v;->t:Landroid/view/View;

    const/4 v1, 0x1

    const-string v2, "autoSearch"

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object p1

    const-string v0, "key_last_call_origin"

    const-string v3, "clipboard"

    .line 7
    invoke-interface {p1, v0, v3}, Lcom/truecaller/settings/CallingSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_temp_latest_call_made_with_tc"

    .line 8
    invoke-interface {p1, v0, v1}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v3, "lastCallMadeWithTcTime"

    invoke-interface {p1, v3, v0, v1}, Lcom/truecaller/settings/CallingSettings;->putLong(Ljava/lang/String;J)V

    .line 10
    iget-object p1, p0, Le/a/e/c2/v;->s:Lcom/truecaller/data/entity/Contact;

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "tel:"

    .line 12
    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const p1, 0x10008000

    .line 14
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 18
    :goto_0
    iget-object p1, p0, Le/a/e/c2/v;->z:Le/a/r2/f;

    const-string v0, "called"

    invoke-static {p1, v2, v0}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Le/a/e/c2/v;->u:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 20
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Le/a/e/c2/v;->s:Lcom/truecaller/data/entity/Contact;

    .line 22
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Le/a/o5/e1;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Le/a/e/c2/v;->z:Le/a/r2/f;

    const-string v0, "sms"

    invoke-static {p1, v2, v0}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, p0, Le/a/e/c2/v;->v:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 25
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Le/a/e/c2/v;->s:Lcom/truecaller/data/entity/Contact;

    sget-object v3, Lcom/truecaller/details_view/analytics/SourceType;->ClipboardSearch:Lcom/truecaller/details_view/analytics/SourceType;

    iget-object v4, p0, Le/a/e/c2/v;->x:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v4}, Lcom/truecaller/data/entity/Contact;->e1(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v1

    const-string v5, "context"

    .line 28
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "contact"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "source"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ARG_CONTACT"

    .line 30
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x6

    const-string v0, "ARG_SOURCE_TYPE"

    .line 31
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SHOULD_SAVE"

    .line 32
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 33
    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    .line 35
    new-instance v0, Ln3/k/a/c0;

    invoke-direct {v0, p1}, Ln3/k/a/c0;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v0, v3}, Ln3/k/a/c0;->a(Landroid/content/Intent;)Ln3/k/a/c0;

    .line 37
    invoke-virtual {v0}, Ln3/k/a/c0;->e()V

    .line 38
    iget-object p1, p0, Le/a/e/c2/v;->z:Le/a/r2/f;

    const-string v0, "openedDetailView"

    invoke-static {p1, v2, v0}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-wide/16 v0, 0x64

    .line 39
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->g:Landroid/os/Handler;

    if-eqz p1, :cond_4

    const/4 v2, 0x2

    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->g:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method
