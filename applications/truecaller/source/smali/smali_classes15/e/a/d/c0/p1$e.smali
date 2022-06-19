.class public final Le/a/d/c0/p1$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/p1;->f(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipTokenProviderImpl$rtmToken$2"
    f = "VoipTokenProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/c0/p1;


# direct methods
.method public constructor <init>(Le/a/d/c0/p1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/p1$e;->e:Le/a/d/c0/p1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/p1$e;

    iget-object v0, p0, Le/a/d/c0/p1$e;->e:Le/a/d/c0/p1;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/p1$e;-><init>(Le/a/d/c0/p1;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/d/c0/p1$e;->e:Le/a/d/c0/p1;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 5
    :try_start_0
    iget-object v0, p1, Le/a/d/c0/p1;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-object p2, p1, Le/a/d/c0/p1;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p1, Le/a/d/c0/p1;->g:Lo3/a;

    .line 8
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/p/a;

    invoke-interface {v0}, Le/a/d/p/a;->c()Lx3/b;

    move-result-object v0

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :try_start_1
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object p1, p2

    .line 13
    :goto_0
    check-cast p1, Lcom/truecaller/voip/api/RtmTokenDto;

    if-nez p1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fetched rtm token:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/truecaller/voip/api/RtmTokenDto;->getToken()Ljava/lang/String;

    move-result-object p2

    :goto_1
    return-object p2

    :catchall_0
    move-exception v0

    .line 16
    iput-object p2, p1, Le/a/d/c0/p1;->a:Ljava/lang/String;

    throw v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/c0/p1$e;->e:Le/a/d/c0/p1;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p1, Le/a/d/c0/p1;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v0, p1, Le/a/d/c0/p1;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/d/c0/p1$e;->e:Le/a/d/c0/p1;

    .line 6
    iget-object p1, p1, Le/a/d/c0/p1;->g:Lo3/a;

    .line 7
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/p/a;

    invoke-interface {p1}, Le/a/d/p/a;->c()Lx3/b;

    move-result-object p1

    .line 8
    :try_start_1
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 11
    :goto_0
    check-cast p1, Lcom/truecaller/voip/api/RtmTokenDto;

    if-nez p1, :cond_1

    return-object v0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetched rtm token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/voip/api/RtmTokenDto;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v1

    .line 14
    iput-object v0, p1, Le/a/d/c0/p1;->a:Ljava/lang/String;

    throw v1
.end method
