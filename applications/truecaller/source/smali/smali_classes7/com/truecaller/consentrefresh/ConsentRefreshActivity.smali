.class public final Lcom/truecaller/consentrefresh/ConsentRefreshActivity;
.super Le/a/m/y;
.source "SourceFile"

# interfaces
.implements Le/a/m/r;
.implements Le/a/m/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/consentrefresh/ConsentRefreshActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00172\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\nJ\u000f\u0010\u0011\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\nJ\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/truecaller/consentrefresh/ConsentRefreshActivity;",
        "Ln3/b/a/h;",
        "Le/a/m/r;",
        "Le/a/m/g;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "l1",
        "()V",
        "",
        "url",
        "b",
        "(Ljava/lang/String;)V",
        "h0",
        "C3",
        "close",
        "Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;",
        "config",
        "pa",
        "(Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;)V",
        "<init>",
        "d",
        "a",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final d:Lcom/truecaller/consentrefresh/ConsentRefreshActivity$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/consentrefresh/ConsentRefreshActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/consentrefresh/ConsentRefreshActivity$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/consentrefresh/ConsentRefreshActivity;->d:Lcom/truecaller/consentrefresh/ConsentRefreshActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/m/y;-><init>()V

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 1

    .line 1
    new-instance v0, Le/a/e/s0;

    invoke-direct {v0, p0}, Le/a/e/s0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Le/a/e/a2;->S(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public h0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/truecaller/ui/TruecallerInit;->Ua(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public l1()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->CONSENT_REFRESH:Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    invoke-virtual {p0, v0}, Lcom/truecaller/consentrefresh/ConsentRefreshActivity;->pa(Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "SettingsAdsChoices"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->SETTINGS:Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    invoke-virtual {p0, p1}, Lcom/truecaller/consentrefresh/ConsentRefreshActivity;->pa(Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 5
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p1, 0x1020002

    .line 6
    new-instance v2, Le/a/m/a;

    invoke-direct {v2}, Le/a/m/a;-><init>()V

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, p1, v2, v0, v3}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v1}, Ln3/r/a/f0;->j()Ln3/r/a/f0;

    .line 9
    invoke-virtual {v1}, Ln3/r/a/a;->f()I

    :goto_1
    return-void
.end method

.method public final pa(Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x1020002

    const-string v2, "config"

    .line 3
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->getValue()I

    move-result p1

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    new-instance p1, Le/a/m/d;

    invoke-direct {p1}, Le/a/m/d;-><init>()V

    .line 7
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v1, v0, p1, v2, v3}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 9
    invoke-virtual {v1}, Ln3/r/a/a;->f()I

    return-void
.end method
