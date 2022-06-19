.class public final Le/a/k0/a/k$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/a/k;-><init>(Le/a/o5/f0;Landroid/content/Context;Le/a/f/b;Lcom/truecaller/settings/CallingSettings;Le/a/p5/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k0/a/k;


# direct methods
.method public constructor <init>(Le/a/k0/a/k;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/k0/a/k$a;->a:Le/a/k0/a/k;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/k0/a/k$a;->a:Le/a/k0/a/k;

    .line 2
    iget-object v0, p1, Le/a/k0/a/k;->b:Lq3/a/x2/a1;

    .line 3
    invoke-virtual {p1}, Le/a/k0/a/k;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k0/a/k$a;->a:Le/a/k0/a/k;

    .line 5
    iget-object p1, p1, Le/a/k0/a/k;->e:Landroid/content/Context;

    const-string v0, "AS is turned "

    .line 6
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/k0/a/k$a;->a:Le/a/k0/a/k;

    invoke-virtual {v1}, Le/a/k0/a/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, " off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
