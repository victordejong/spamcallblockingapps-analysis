.class public Le/a/e/a/k3$c;
.super Le/a/e/a/k3$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/k3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Le/a/e/a/k3;


# direct methods
.method public varargs constructor <init>(Le/a/e/a/k3;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/a/e/a/k3$c;->e:Le/a/e/a/k3;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Le/a/e/a/k3$i;-><init>(Le/a/e/a/k3;[Ljava/lang/String;Le/a/e/a/k3$a;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/notifications/enhancing/SourcedContact;",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/notifications/enhancing/SourcedContact;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/truecaller/data/entity/Contact;

    .line 4
    iget-object p1, p0, Le/a/e/a/k3$c;->e:Le/a/e/a/k3;

    invoke-virtual {p1}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    iget-object v3, v0, Lcom/truecaller/notifications/enhancing/SourcedContact;->f:Ljava/lang/String;

    const/4 v4, 0x1

    .line 6
    sget-object v6, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;

    const-string v5, "callMeBackPopupOutApp"

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/truecaller/ui/CallMeBackActivity;->qa(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ILjava/lang/String;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
