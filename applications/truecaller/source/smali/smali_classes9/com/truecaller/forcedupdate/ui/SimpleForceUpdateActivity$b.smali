.class public final Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$b;->a:Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$b;->a:Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Le/a/p4/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/p4/a;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Le/a/p4/a;->z()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Application class does not implement "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Le/a/p4/a;

    invoke-static {v1, v0}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
