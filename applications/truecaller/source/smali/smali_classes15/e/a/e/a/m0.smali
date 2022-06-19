.class public final synthetic Le/a/e/a/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ui/components/ComboBase$a;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/m0;->a:Le/a/e/a/k3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 3

    iget-object v0, p0, Le/a/e/a/m0;->a:Le/a/e/a/k3;

    .line 1
    iget-object v0, v0, Le/a/e/a/k3;->r:Le/a/c3/d;

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object v1

    invoke-virtual {v1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUILD_KEY"

    invoke-interface {v0, v2, v1}, Le/a/c3/d;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    sget v0, Lcom/truecaller/service/WidgetListProvider;->a:I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.truecaller.widget.UPDATE_HEADER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/truecaller/service/WidgetListProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
