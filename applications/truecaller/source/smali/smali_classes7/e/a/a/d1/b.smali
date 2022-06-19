.class public Le/a/a/d1/b;
.super Le/a/a/d1/a;
.source "SourceFile"


# instance fields
.field public final b:Landroid/content/Intent;

.field public final c:Le/a/b0/q/z;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Le/a/b0/q/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/a/d1/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/d1/b;->b:Landroid/content/Intent;

    .line 3
    iput-object p2, p0, Le/a/a/d1/b;->c:Le/a/b0/q/z;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/a/d1/c;

    .line 2
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/a/a/d1/b;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SENDTO"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "android.intent.action.SEND"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_2

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Le/a/a/d1/b;->b:Landroid/content/Intent;

    const-string v1, "com.truecaller.suggestions.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_2

    .line 7
    :cond_3
    :goto_1
    iget-object v0, p0, Le/a/a/d1/b;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 8
    iget-object v1, p0, Le/a/a/d1/b;->c:Le/a/b0/q/z;

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/truecaller/data/entity/messaging/Participant;->c(Landroid/net/Uri;Le/a/b0/q/z;Ljava/lang/String;)[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    :cond_4
    const/4 v0, 0x1

    if-eqz v2, :cond_5

    .line 9
    array-length v1, v2

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    const-string v3, "send_intent"

    if-eqz v1, :cond_6

    .line 10
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d1/c;

    invoke-interface {v0}, Le/a/a/d1/c;->C7()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "participants"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 12
    iget-object v1, p0, Le/a/a/d1/b;->b:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4

    .line 14
    :cond_6
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/d1/c;

    invoke-interface {v1}, Le/a/a/d1/c;->B1()Landroid/content/Intent;

    move-result-object v1

    .line 15
    iget-object v2, p0, Le/a/a/d1/b;->b:Landroid/content/Intent;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v0, v1

    .line 17
    :goto_4
    iget-object v1, p0, Le/a/a/d1/b;->b:Landroid/content/Intent;

    invoke-static {v1, v0}, Le/a/b0/q/t;->h(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 18
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/d1/c;

    invoke-interface {v1, v0}, Le/a/a/d1/c;->startActivity(Landroid/content/Intent;)V

    .line 19
    invoke-interface {p1}, Le/a/a/d1/c;->finish()V

    return-void
.end method
