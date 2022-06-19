.class public final Le/a/g/a/a/a$g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/a/a;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/a/a$g;->a:Le/a/g/a/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x15e7c58f

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.truecaller.EVENT_AFTER_CALL_START"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/g/a/a/a$g;->a:Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/a/i;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/h;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/g/a/h;->finish()V

    :cond_3
    :goto_1
    return-void
.end method
