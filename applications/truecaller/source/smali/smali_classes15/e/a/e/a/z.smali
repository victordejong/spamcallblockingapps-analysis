.class public final synthetic Le/a/e/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/z;->a:Le/a/e/a/k3;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Le/a/e/a/z;->a:Le/a/e/a/k3;

    const-string v0, "eu"

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p1, Le/a/e/a/k3;->y:Le/a/f4/b/g/b;

    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->MESSENGER:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v1}, Lcom/truecaller/common/network/util/KnownEndpoints;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "messenger-dev-se1.truecaller.com"

    invoke-interface {p2, v0, v1, v2}, Le/a/f4/b/g/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p1, Le/a/e/a/k3;->y:Le/a/f4/b/g/b;

    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->MESSENGER:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v1}, Lcom/truecaller/common/network/util/KnownEndpoints;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le/a/f4/b/g/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-object p1, p1, Le/a/e/a/k3;->E:Le/a/a/i0;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Le/a/a/i0;->l4(Ljava/lang/String;)V

    return-void
.end method
