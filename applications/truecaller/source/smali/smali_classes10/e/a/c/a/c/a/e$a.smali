.class public final Le/a/c/a/c/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/a/e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/insights/ui/important/domain/BannerAction;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/c/a/e;


# direct methods
.method public constructor <init>(Le/a/c/a/c/a/e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/a/e$a;->a:Le/a/c/a/c/a/e;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/ui/important/domain/BannerAction;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/truecaller/insights/ui/important/domain/BannerAction;

    .line 2
    sget-object p2, Lcom/truecaller/insights/ui/important/domain/BannerAction;->DOWNLOAD_MODEL_ACTION:Lcom/truecaller/insights/ui/important/domain/BannerAction;

    if-ne p1, p2, :cond_6

    .line 3
    iget-object p1, p0, Le/a/c/a/c/a/e$a;->a:Le/a/c/a/c/a/e;

    iget-object p1, p1, Le/a/c/a/c/a/e;->f:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "childFragmentManager"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Le/a/c/a/c/a/e$a;->a:Le/a/c/a/c/a/e;

    iget-object p2, p2, Le/a/c/a/c/a/e;->f:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 5
    iget-object v0, p2, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->h:Le/a/c/b/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8a2

    const-string v4, "messageTranslationContract"

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "EG"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p2, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->g:Le/a/c/h/i;

    if-eqz p2, :cond_1

    sget-object v0, Lcom/truecaller/insights/commons/LanguageCommonNames;->ARABIC:Lcom/truecaller/insights/commons/LanguageCommonNames;

    invoke-interface {p2, v0}, Le/a/c/h/i;->f(Lcom/truecaller/insights/commons/LanguageCommonNames;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    :goto_0
    iget-object p2, p2, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->g:Le/a/c/h/i;

    if-eqz p2, :cond_4

    sget-object v0, Lcom/truecaller/insights/commons/LanguageCommonNames;->SWEDISH:Lcom/truecaller/insights/commons/LanguageCommonNames;

    invoke-interface {p2, v0}, Le/a/c/h/i;->f(Lcom/truecaller/insights/commons/LanguageCommonNames;)Ljava/lang/String;

    move-result-object p2

    .line 8
    :goto_1
    iget-object v0, p0, Le/a/c/a/c/a/e$a;->a:Le/a/c/a/c/a/e;

    iget-object v0, v0, Le/a/c/a/c/a/e;->f:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 9
    iget-object v0, v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->g:Le/a/c/h/i;

    if-eqz v0, :cond_3

    const-string v2, "fragmentManager"

    .line 10
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "languageCode"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sput-object v0, Le/a/c/a/h/d;->k:Le/a/c/h/i;

    .line 12
    new-instance v0, Le/a/c/a/h/d;

    invoke-direct {v0}, Le/a/c/a/h/d;-><init>()V

    .line 13
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "LANGUAGE_CODE"

    .line 14
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {v0, p1, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_4
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "environmentHelper"

    .line 19
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
