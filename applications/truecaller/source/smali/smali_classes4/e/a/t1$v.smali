.class public final Le/a/t1$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation


# instance fields
.field public final a:Le/a/t1;


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/t1$v;->a:Le/a/t1;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/transport/sms/SmsReceiver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t1$v;->a:Le/a/t1;

    .line 2
    iget-object v0, v0, Le/a/t1;->j:Ljavax/inject/Provider;

    .line 3
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/truecaller/messaging/transport/sms/SmsReceiver;->a:Lo3/a;

    return-void
.end method

.method public b(Lcom/truecaller/messaging/transport/mms/MmsStatusReceiver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t1$v;->a:Le/a/t1;

    .line 2
    iget-object v0, v0, Le/a/t1;->j:Ljavax/inject/Provider;

    .line 3
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/truecaller/messaging/transport/mms/MmsStatusReceiver;->a:Lo3/a;

    return-void
.end method

.method public c(Lcom/truecaller/messaging/transport/mms/MmsWapPushDeliverReceiver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t1$v;->a:Le/a/t1;

    .line 2
    iget-object v0, v0, Le/a/t1;->j:Ljavax/inject/Provider;

    .line 3
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/truecaller/messaging/transport/mms/MmsWapPushDeliverReceiver;->a:Lo3/a;

    return-void
.end method

.method public d(Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t1$v;->a:Le/a/t1;

    .line 2
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 3
    invoke-interface {v0}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object v0, p1, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->a:Ls1/w/f;

    .line 6
    iget-object v0, p0, Le/a/t1$v;->a:Le/a/t1;

    .line 7
    iget-object v0, v0, Le/a/t1;->h:Ljavax/inject/Provider;

    .line 8
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 9
    iput-object v0, p1, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->b:Lo3/a;

    .line 10
    iget-object v0, p0, Le/a/t1$v;->a:Le/a/t1;

    .line 11
    iget-object v0, v0, Le/a/t1;->i:Ljavax/inject/Provider;

    .line 12
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->c:Lo3/a;

    .line 14
    iget-object v0, p0, Le/a/t1$v;->a:Le/a/t1;

    .line 15
    iget-object v0, v0, Le/a/t1;->j:Ljavax/inject/Provider;

    .line 16
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->d:Lo3/a;

    .line 18
    iget-object v0, p0, Le/a/t1$v;->a:Le/a/t1;

    .line 19
    iget-object v0, v0, Le/a/t1;->k:Ljavax/inject/Provider;

    .line 20
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->e:Lo3/a;

    .line 22
    iget-object v0, p0, Le/a/t1$v;->a:Le/a/t1;

    .line 23
    iget-object v0, v0, Le/a/t1;->l:Ljavax/inject/Provider;

    .line 24
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 25
    iput-object v0, p1, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->f:Lo3/a;

    .line 26
    iget-object v0, p0, Le/a/t1$v;->a:Le/a/t1;

    .line 27
    iget-object v0, v0, Le/a/t1;->m:Ljavax/inject/Provider;

    .line 28
    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    .line 29
    iput-object v0, p1, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->g:Lo3/a;

    return-void
.end method
