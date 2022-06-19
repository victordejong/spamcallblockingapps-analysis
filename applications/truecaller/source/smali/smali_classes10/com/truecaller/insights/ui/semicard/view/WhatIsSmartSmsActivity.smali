.class public final Lcom/truecaller/insights/ui/semicard/view/WhatIsSmartSmsActivity;
.super Le/a/c/a/e/a/e;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/semicard/view/WhatIsSmartSmsActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/b0/o/a;",
        "d",
        "Le/a/b0/o/a;",
        "getCoreSettings",
        "()Le/a/b0/o/a;",
        "setCoreSettings",
        "(Le/a/b0/o/a;)V",
        "coreSettings",
        "<init>",
        "()V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/b0/o/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/c/a/e/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/truecaller/insights/ui/R$layout;->activity_what_is_smart_sms:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/insights/ui/semicard/view/WhatIsSmartSmsActivity;->d:Le/a/b0/o/a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "smart_notifications_clicked"

    invoke-interface {p1, v1, v0}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    sget-object p1, Le/a/c/a/e/a/i;->f:Le/a/c/a/e/a/i$b;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p1, Le/a/c/a/e/a/i;

    invoke-direct {p1}, Le/a/c/a/e/a/i;-><init>()V

    .line 7
    iput-boolean v0, p1, Le/a/c/a/e/a/i;->a:Z

    .line 8
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 9
    sget-object v1, Le/a/c/a/e/a/i;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "coreSettings"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
