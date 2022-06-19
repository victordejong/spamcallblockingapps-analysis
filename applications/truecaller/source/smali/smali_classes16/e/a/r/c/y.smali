.class public final Le/a/r/c/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/r/c/s;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/r/c/s;Lo3/a;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r/c/s;",
            "Lo3/a<",
            "Le/a/b0/a/p;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "wizardCustomTabsHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewContainerHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/c/y;->a:Le/a/r/c/s;

    iput-object p2, p0, Le/a/r/c/y;->b:Lo3/a;

    iput-object p3, p0, Le/a/r/c/y;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ln3/v/b0;Ljava/lang/String;)V
    .locals 2

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/r/c/y;->a:Le/a/r/c/s;

    iget-object v1, p0, Le/a/r/c/y;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Le/a/r/c/s;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Le/a/r/c/y;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/a/p;

    sget-object v1, Lcom/truecaller/common/ui/constant/WebViewContainerType;->FULLSCREEN_DIALOG:Lcom/truecaller/common/ui/constant/WebViewContainerType;

    invoke-interface {v0, p2, v1}, Le/a/b0/a/p;->b(Ljava/lang/String;Lcom/truecaller/common/ui/constant/WebViewContainerType;)Landroid/content/Intent;

    move-result-object p2

    .line 3
    iget-object v0, p0, Le/a/r/c/y;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/a/p;

    iget-object v1, p0, Le/a/r/c/y;->c:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Le/a/b0/a/p;->a(Landroid/content/Context;Ln3/v/b0;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
