.class public final Lcom/truecaller/ui/dialogs/QMTracingActivity;
.super Le/a/e/a/s2;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u0017J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR(\u0010\u0018\u001a\u00020\u000f8\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0004\u0008\u0010\u0010\u0011\u0012\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/ui/dialogs/QMTracingActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/h4/n;",
        "d",
        "Le/a/h4/n;",
        "getNotificationManager$truecaller_googlePlayRelease",
        "()Le/a/h4/n;",
        "setNotificationManager$truecaller_googlePlayRelease",
        "(Le/a/h4/n;)V",
        "notificationManager",
        "Ls1/w/f;",
        "e",
        "Ls1/w/f;",
        "getUiCoroutinesContext$truecaller_googlePlayRelease",
        "()Ls1/w/f;",
        "setUiCoroutinesContext$truecaller_googlePlayRelease",
        "(Ls1/w/f;)V",
        "getUiCoroutinesContext$truecaller_googlePlayRelease$annotations",
        "()V",
        "uiCoroutinesContext",
        "Ljava/text/SimpleDateFormat;",
        "f",
        "Ljava/text/SimpleDateFormat;",
        "dateFormat",
        "<init>",
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
.field public static final synthetic g:I


# instance fields
.field public d:Le/a/h4/n;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final f:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/e/a/s2;-><init>()V

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity;->e:Ls1/w/f;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    new-instance v5, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;

    invoke-direct {v5, p0, v0, p1, v3}, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;-><init>(Lcom/truecaller/ui/dialogs/QMTracingActivity;Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)V

    const/4 p1, 0x2

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, v5

    move v5, p1

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string p1, "uiCoroutinesContext"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const p1, 0x7f0d0133

    .line 9
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    const p1, 0x7f0a0e96

    .line 10
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const v0, 0x7f0a0e97

    .line 11
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 12
    new-instance v1, Lcom/truecaller/ui/dialogs/QMTracingActivity$b;

    invoke-direct {v1, v0}, Lcom/truecaller/ui/dialogs/QMTracingActivity$b;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f0a109e

    .line 13
    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/truecaller/ui/dialogs/QMTracingActivity$c;

    invoke-direct {v2, p0, p1, v0}, Lcom/truecaller/ui/dialogs/QMTracingActivity$c;-><init>(Lcom/truecaller/ui/dialogs/QMTracingActivity;Landroid/widget/CheckBox;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
