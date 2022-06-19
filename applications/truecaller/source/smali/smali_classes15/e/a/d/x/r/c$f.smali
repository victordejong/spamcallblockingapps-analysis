.class public final Le/a/d/x/r/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtm/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/r/c;->h(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
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

.field public final synthetic b:Le/a/d/x/r/c;

.field public final synthetic c:Lio/agora/rtm/RtmClient;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/d/x/r/c;Lio/agora/rtm/RtmClient;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/r/c$f;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/d/x/r/c$f;->b:Le/a/d/x/r/c;

    iput-object p3, p0, Le/a/d/x/r/c$f;->c:Lio/agora/rtm/RtmClient;

    iput-object p4, p0, Le/a/d/x/r/c$f;->d:Ljava/lang/String;

    iput-object p5, p0, Le/a/d/x/r/c$f;->e:Ljava/lang/String;

    iput-boolean p6, p0, Le/a/d/x/r/c$f;->f:Z

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lio/agora/rtm/ErrorInfo;)V
    .locals 5

    const-string v0, "Login failed. Error code: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lio/agora/rtm/ErrorInfo;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/d/x/r/c$f;->b:Le/a/d/x/r/c;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/a/d/x/r/c;->a:Z

    .line 4
    iget-object v0, p0, Le/a/d/x/r/c$f;->b:Le/a/d/x/r/c;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Le/a/d/x/r/c;->c:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Le/a/d/x/r/c;->h:Le/a/d/c0/f0;

    .line 7
    iget-object v1, p0, Le/a/d/x/r/c$f;->e:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/x/r/c$f;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lio/agora/rtm/ErrorInfo;->getErrorCode()I

    move-result v3

    iget-boolean v4, p0, Le/a/d/x/r/c$f;->f:Z

    invoke-interface {v0, v1, v2, v3, v4}, Le/a/d/c0/f0;->g(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 8
    iget-object v0, p0, Le/a/d/x/r/c$f;->a:Lq3/a/n;

    invoke-interface {v0}, Lq3/a/n;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/d/x/r/c$f;->a:Lq3/a/n;

    invoke-virtual {p1}, Lio/agora/rtm/ErrorInfo;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Le/a/d/x/r/c$f;->b:Le/a/d/x/r/c;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/d/x/r/c;->a:Z

    .line 4
    iget-object p1, p0, Le/a/d/x/r/c$f;->b:Le/a/d/x/r/c;

    iget-object v0, p0, Le/a/d/x/r/c$f;->e:Ljava/lang/String;

    .line 5
    iput-object v0, p1, Le/a/d/x/r/c;->c:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Le/a/d/x/r/c$f;->a:Lq3/a/n;

    invoke-interface {p1}, Lq3/a/n;->j()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/d/x/r/c$f;->a:Lq3/a/n;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
