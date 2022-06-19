.class Lcom/google/firebase/messaging/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/c<",
        "Lcom/google/firebase/messaging/o;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/firebase/messaging/o;

    check-cast p2, Lcom/google/firebase/encoders/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/o$a;->b(Lcom/google/firebase/messaging/o;Lcom/google/firebase/encoders/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/messaging/o;Lcom/google/firebase/encoders/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/encoders/EncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/o;->b()Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->q(Landroid/content/Intent;)I

    move-result v1

    const-string v2, "ttl"

    invoke-interface {p2, v2, v1}, Lcom/google/firebase/encoders/d;->d(Ljava/lang/String;I)Lcom/google/firebase/encoders/d;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/o;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "event"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 4
    invoke-static {}, Lcom/google/firebase/messaging/s;->e()Ljava/lang/String;

    move-result-object p1

    const-string v1, "instanceId"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 5
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->n(Landroid/content/Intent;)I

    move-result p1

    const-string v1, "priority"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->d(Ljava/lang/String;I)Lcom/google/firebase/encoders/d;

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/s;->m()Ljava/lang/String;

    move-result-object p1

    const-string v1, "packageName"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    const-string p1, "sdkPlatform"

    const-string v1, "ANDROID"

    .line 7
    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 8
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "messageType"

    .line 9
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 10
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->g(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "messageId"

    .line 11
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->p(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "topic"

    .line 13
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 14
    :cond_1
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "collapseKey"

    .line 15
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 16
    :cond_2
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "analyticsLabel"

    .line 18
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 19
    :cond_3
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 20
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "composerLabel"

    .line 21
    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 22
    :cond_4
    invoke-static {}, Lcom/google/firebase/messaging/s;->o()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "projectNumber"

    .line 23
    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    :cond_5
    return-void
.end method
