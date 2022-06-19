.class public final Le/a/r/z/l$g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/l;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/z/l;


# direct methods
.method public constructor <init>(Le/a/r/z/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/r/z/l$g;->a:Le/a/r/z/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/r/z/l$g;->a:Le/a/r/z/l;

    invoke-virtual {p1}, Le/a/r/z/l;->SA()Le/a/r/z/r;

    move-result-object p1

    .line 2
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsMessage;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    check-cast p1, Le/a/r/z/s;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "intent"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v1, p1, Le/a/r/z/s;->o:Ls1/f0/h;

    invoke-virtual {v1, v0}, Ls1/f0/h;->c(Ljava/lang/CharSequence;)Ls1/f0/f;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ls1/f0/g;

    invoke-virtual {v0}, Ls1/f0/g;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 6
    iput-object v0, p1, Le/a/r/z/s;->l:Ljava/lang/String;

    .line 7
    iget-object v1, p1, Le/a/r/z/s;->e:Ljava/lang/String;

    const-string v2, "sms"

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p1, Le/a/r/z/s;->x:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p1, Le/a/r/z/s;->V:Le/a/e4/p;

    invoke-interface {v1, p2}, Le/a/e4/p;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Le/a/r/z/s;->m:Ljava/lang/String;

    .line 10
    :cond_3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/z/y;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Le/a/r/z/y;->jc(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
