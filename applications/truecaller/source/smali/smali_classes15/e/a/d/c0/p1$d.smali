.class public final Le/a/d/c0/p1$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/p1;->e(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipTokenProviderImpl$rtcTokenWithEncryption$2"
    f = "VoipTokenProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/c0/p1;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/c0/p1;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/p1$d;->e:Le/a/d/c0/p1;

    iput-object p2, p0, Le/a/d/c0/p1$d;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/c0/p1$d;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/d/c0/p1$d;

    iget-object v0, p0, Le/a/d/c0/p1$d;->e:Le/a/d/c0/p1;

    iget-object v1, p0, Le/a/d/c0/p1$d;->f:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/p1$d;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/p1$d;-><init>(Le/a/d/c0/p1;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/p1$d;

    iget-object v0, p0, Le/a/d/c0/p1$d;->e:Le/a/d/c0/p1;

    iget-object v1, p0, Le/a/d/c0/p1$d;->f:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/p1$d;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/p1$d;-><init>(Le/a/d/c0/p1;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/p1$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/c0/p1$d;->e:Le/a/d/c0/p1;

    .line 3
    iget-object p1, p1, Le/a/d/c0/p1;->e:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    iget-object v0, p0, Le/a/d/c0/p1$d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/d/c0/p1$d;->g:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/d/c0/p1$d;->e:Le/a/d/c0/p1;

    iget-object v1, p0, Le/a/d/c0/p1$d;->f:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Le/a/p5/s0/f;->v(Ljava/lang/String;)J

    move-result-wide v2

    .line 9
    new-instance p1, Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;

    invoke-direct {p1, v1, v2, v3}, Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;-><init>(Ljava/lang/String;J)V

    .line 10
    :try_start_0
    iget-object v1, v0, Le/a/d/c0/p1;->c:Ls1/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 11
    iget-object v3, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 12
    check-cast v3, Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;

    invoke-static {v3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 13
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 15
    :goto_2
    invoke-virtual {v0}, Le/a/d/c0/p1;->j()V

    if-eqz v1, :cond_3

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cache is found. Returning cached rtc token:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_3
    move-object v3, v1

    goto :goto_5

    .line 17
    :cond_3
    iget-object v0, v0, Le/a/d/c0/p1;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/p/a;

    invoke-interface {v0, p1}, Le/a/d/p/a;->i(Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;)Lx3/b;

    move-result-object p1

    .line 18
    :try_start_1
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 19
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move-object p1, v2

    .line 21
    :goto_4
    move-object v1, p1

    check-cast v1, Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;

    if-nez v1, :cond_4

    move-object v3, v2

    goto :goto_5

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fetched rtc token:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    :goto_5
    if-eqz v3, :cond_6

    .line 23
    iget-object p1, p0, Le/a/d/c0/p1$d;->e:Le/a/d/c0/p1;

    .line 24
    iget-object p1, p1, Le/a/d/c0/p1;->d:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    iget-object v0, p0, Le/a/d/c0/p1$d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/k;

    if-eqz p1, :cond_5

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cross dc secret and mode is found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Replacing secret and mode with it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 27
    iget-object v7, p1, Le/a/d/c0/k;->a:Ljava/lang/String;

    .line 28
    iget-object v6, p1, Le/a/d/c0/k;->b:Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v9, 0x0

    .line 29
    invoke-static/range {v3 .. v9}, Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;->copy$default(Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;

    move-result-object v3

    :cond_5
    return-object v3

    :cond_6
    return-object v2

    :catchall_0
    move-exception p1

    .line 30
    invoke-virtual {v0}, Le/a/d/c0/p1;->j()V

    throw p1
.end method
