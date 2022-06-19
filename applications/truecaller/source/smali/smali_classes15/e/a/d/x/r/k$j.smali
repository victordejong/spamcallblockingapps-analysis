.class public final Le/a/d/x/r/k$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtm/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/r/k;->d(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/agora/rtm/ResultCallback<",
        "Ljava/util/List<",
        "+",
        "Lio/agora/rtm/RtmChannelAttribute;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/d/x/r/k;

.field public final synthetic c:Ls1/w/d;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/d/x/r/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/r/k$j;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/d/x/r/k$j;->b:Le/a/d/x/r/k;

    iput-object p3, p0, Le/a/d/x/r/k$j;->c:Ls1/w/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lio/agora/rtm/ErrorInfo;)V
    .locals 2

    const-string v0, "Cannot fetch attributes, error code: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 2
    iget-object p1, p0, Le/a/d/x/r/k$j;->a:Lq3/a/n;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Le/a/p5/s0/g;->d(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetched attributes, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lio/agora/rtm/RtmChannelAttribute;

    .line 6
    iget-object v2, p0, Le/a/d/x/r/k$j;->b:Le/a/d/x/r/k;

    invoke-static {v2, v1}, Le/a/d/x/r/k;->b(Le/a/d/x/r/k;Lio/agora/rtm/RtmChannelAttribute;)Le/a/d/x/r/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_1
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    .line 9
    :goto_1
    iget-object v0, p0, Le/a/d/x/r/k$j;->a:Lq3/a/n;

    invoke-static {v0, p1}, Le/a/p5/s0/g;->d(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method
