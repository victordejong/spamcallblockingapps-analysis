.class public final Le/a/d/x/r/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtm/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/r/f;->b(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmMsg;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/agora/rtm/ResultCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;


# direct methods
.method public constructor <init>(Lq3/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d/x/r/f$c;->a:Lq3/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lio/agora/rtm/ErrorInfo;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot send Rtm message. Error info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object p1, p0, Le/a/d/x/r/f$c;->a:Lq3/a/n;

    invoke-interface {p1}, Lq3/a/n;->j()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/d/x/r/f$c;->a:Lq3/a/n;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Le/a/d/x/r/f$c;->a:Lq3/a/n;

    invoke-interface {p1}, Lq3/a/n;->j()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/d/x/r/f$c;->a:Lq3/a/n;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
