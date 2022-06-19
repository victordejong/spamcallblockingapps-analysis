.class public final Le/a/d/x/r/k$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtm/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/r/k;->m(Ls1/w/d;)Ljava/lang/Object;
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

.field public final synthetic b:Le/a/d/x/r/k;

.field public final synthetic c:Ls1/w/d;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/d/x/r/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/r/k$h;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/d/x/r/k$h;->b:Le/a/d/x/r/k;

    iput-object p3, p0, Le/a/d/x/r/k$h;->c:Ls1/w/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lio/agora/rtm/ErrorInfo;)V
    .locals 2

    const-string v0, "Cannot leave rtm channel: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/d/x/r/k$h;->b:Le/a/d/x/r/k;

    .line 2
    iget-object v1, v1, Le/a/d/x/r/k;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/agora/rtm/ErrorInfo;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/agora/rtm/ErrorInfo;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    iget-object p1, p0, Le/a/d/x/r/k$h;->a:Lq3/a/n;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Le/a/p5/s0/g;->d(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Le/a/d/x/r/k$h;->b:Le/a/d/x/r/k;

    .line 3
    iget-object v0, p1, Le/a/d/x/r/k;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Le/a/d/x/r/k;->c:Lio/agora/rtm/RtmChannel;

    .line 5
    iget-object p1, p0, Le/a/d/x/r/k$h;->a:Lq3/a/n;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Le/a/p5/s0/g;->d(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method
