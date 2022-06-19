.class public final Le/a/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/e/h0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public d:Landroid/net/Uri;

.field public e:Landroidx/fragment/app/Fragment;

.field public final f:Landroid/content/Context;

.field public final g:Ls1/w/f;

.field public final h:Le/a/u3/g;

.field public final i:Le/a/p5/c0;

.field public final j:Le/a/b0/q/q;

.field public final k:Le/a/q2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Le/a/u3/g;Le/a/p5/c0;Le/a/b0/q/q;Le/a/q2/a;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ui"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageRenderer"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/e/f;->f:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/e/f;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/a/e/f;->h:Le/a/u3/g;

    iput-object p4, p0, Le/a/a/e/f;->i:Le/a/p5/c0;

    iput-object p5, p0, Le/a/a/e/f;->j:Le/a/b0/q/q;

    iput-object p6, p0, Le/a/a/e/f;->k:Le/a/q2/a;

    .line 2
    new-instance p1, Le/a/a/e/f$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/a/e/f$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/f;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/a/e/f$a;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Le/a/a/e/f$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/f;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/a/e/f$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/a/e/f$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/e/f;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public A5()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/e/f;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/a/e/f;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Le/a/a/e/f;->g(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    const-string v0, "other"

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/e/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method public U3()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/e/f;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/a/e/f;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.whatsapp"

    invoke-virtual {p0, v1, v0, v2}, Le/a/a/e/f;->g(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    const-string v0, "whatsapp"

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/e/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method public Y5()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/e/f;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v2, p0, Le/a/a/e/f;->b:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Le/a/a/e/f;->c:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.twitter.android"

    invoke-virtual {p0, v1, v0, v2}, Le/a/a/e/f;->g(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    const-string v0, "twitter"

    .line 6
    invoke-virtual {p0, v0}, Le/a/a/e/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method public Z5(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/e/f;->e:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/a/e/f;->e:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public a6(Landroid/content/Context;III)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/a/e/f;->g:Ls1/w/f;

    new-instance v0, Le/a/a/e/f$b;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v9}, Le/a/a/e/f$b;-><init>(Le/a/a/e/f;Landroid/content/Context;IIILs1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final b(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.share.ADD_TO_STORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/a/e/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_application"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/jpg"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "interactive_asset_uri"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "top_background_color"

    const-string v1, "#0087FF"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "bottom_background_color"

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final c(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TEXT"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "image/png"

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "android.intent.extra.STREAM"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/a/e/f;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public d5()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/e/f;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/a/e/f;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.orca"

    invoke-virtual {p0, v1, v0, v2}, Le/a/a/e/f;->g(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    const-string v0, "facebook"

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/e/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/e/f;->k:Le/a/q2/a;

    const-string v1, "Ci5-Share"

    const-string v2, "type"

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v8, "platform"

    const-string v4, "name"

    const-string v6, "value"

    move-object v3, v8

    move-object v5, p1

    move-object v7, v2

    move-object v9, p1

    .line 3
    invoke-static/range {v3 .. v9}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v1, p1, v2, v3, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public final f(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/e/f;->e:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fragment?.activity ?: return false"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/e/f;->e:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fragment?.activity ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Le/a/a/e/f;->c(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-static {p2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public o5()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/e/f;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/a/e/f;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/a/e/f;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Le/a/a/e/f;->g(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    const-string v0, "tc"

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/e/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method public r4()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/e/f;->e:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fragment?.activity ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/a/e/f;->d:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Le/a/a/e/f;->b(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Le/a/a/e/f;->d()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x1

    const-string v4, "com.instagram.android"

    .line 5
    invoke-virtual {v0, v4, v1, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, v2, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
