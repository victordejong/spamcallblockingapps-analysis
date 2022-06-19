.class public final Le/a/d/c0/p1$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/p1;->h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/voip/api/RtcTokenDto;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipTokenProviderImpl$rtcToken$2"
    f = "VoipTokenProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/c0/p1;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/c0/p1;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/p1$c;->e:Le/a/d/c0/p1;

    iput-object p2, p0, Le/a/d/c0/p1$c;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/d/c0/p1$c;

    iget-object v0, p0, Le/a/d/c0/p1$c;->e:Le/a/d/c0/p1;

    iget-object v1, p0, Le/a/d/c0/p1$c;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/p1$c;-><init>(Le/a/d/c0/p1;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/p1$c;

    iget-object v0, p0, Le/a/d/c0/p1$c;->e:Le/a/d/c0/p1;

    iget-object v1, p0, Le/a/d/c0/p1$c;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/p1$c;-><init>(Le/a/d/c0/p1;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/p1$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcom/truecaller/voip/api/RtcTokenRequestDto;

    iget-object v0, p0, Le/a/d/c0/p1$c;->f:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/truecaller/voip/api/RtcTokenRequestDto;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/d/c0/p1$c;->e:Le/a/d/c0/p1;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    iget-object v1, v0, Le/a/d/c0/p1;->b:Ls1/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    iget-object v3, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 7
    check-cast v3, Lcom/truecaller/voip/api/RtcTokenRequestDto;

    invoke-static {v3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 9
    check-cast v1, Lcom/truecaller/voip/api/RtcTokenDto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 10
    :goto_1
    invoke-virtual {v0}, Le/a/d/c0/p1;->j()V

    if-eqz v1, :cond_2

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cache is found. Returning cached rtc token:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v1

    .line 12
    :cond_2
    iget-object v0, p0, Le/a/d/c0/p1$c;->e:Le/a/d/c0/p1;

    .line 13
    iget-object v0, v0, Le/a/d/c0/p1;->g:Lo3/a;

    .line 14
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/p/a;

    invoke-interface {v0, p1}, Le/a/d/p/a;->m(Lcom/truecaller/voip/api/RtcTokenRequestDto;)Lx3/b;

    move-result-object p1

    .line 15
    :try_start_1
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 16
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object p1, v2

    .line 18
    :goto_2
    check-cast p1, Lcom/truecaller/voip/api/RtcTokenDto;

    if-nez p1, :cond_3

    return-object v2

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetched rtc token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {v0}, Le/a/d/c0/p1;->j()V

    throw p1
.end method
