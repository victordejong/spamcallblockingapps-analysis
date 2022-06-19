.class public final Le/a/s/r/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s/r/a;


# instance fields
.field public final a:Le/a/s/r/c;

.field public final b:Le/a/d/f;


# direct methods
.method public constructor <init>(Le/a/s/r/c;Le/a/d/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "serviceValidationHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/s/r/b;->a:Le/a/s/r/c;

    iput-object p2, p0, Le/a/s/r/b;->b:Le/a/d/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "push_type"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6355c14c

    if-eq v1, v2, :cond_2

    const p1, 0x26a40443

    if-eq v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "service_validation"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/s/r/b;->a:Le/a/s/r/c;

    invoke-interface {p1}, Le/a/s/r/c;->j1()V

    goto :goto_1

    :cond_2
    const-string v1, "screen_response"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/s/r/b;->b:Le/a/d/f;

    .line 4
    new-instance v1, Lcom/truecaller/voip/debug/VoipAssistantPushNotification;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "fromPhone"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    .line 6
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    const-string v3, "https://call-hero.s3.amazonaws.com/tracks/e7b57f4b969c9341c7206c34763f59e1.png"

    .line 7
    invoke-direct {v1, v2, p1, v3}, Lcom/truecaller/voip/debug/VoipAssistantPushNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v1}, Le/a/d/f;->o(Lcom/truecaller/voip/debug/VoipAssistantPushNotification;)V

    :cond_4
    :goto_1
    return-void
.end method
