.class public final Le/a/d/c0/x1/f$h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f;->j(Le/a/d/c0/x1/a;Le/a/d/x/l;)V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$changeAudioRouteAsync$1"
    f = "VoipAudioUtil.kt"
    l = {
        0xd1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/x1/f;

.field public final synthetic g:Le/a/d/c0/x1/a;

.field public final synthetic h:Le/a/d/x/l;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f;Le/a/d/c0/x1/a;Le/a/d/x/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$h;->f:Le/a/d/c0/x1/f;

    iput-object p2, p0, Le/a/d/c0/x1/f$h;->g:Le/a/d/c0/x1/a;

    iput-object p3, p0, Le/a/d/c0/x1/f$h;->h:Le/a/d/x/l;

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

    new-instance p1, Le/a/d/c0/x1/f$h;

    iget-object v0, p0, Le/a/d/c0/x1/f$h;->f:Le/a/d/c0/x1/f;

    iget-object v1, p0, Le/a/d/c0/x1/f$h;->g:Le/a/d/c0/x1/a;

    iget-object v2, p0, Le/a/d/c0/x1/f$h;->h:Le/a/d/x/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/x1/f$h;-><init>(Le/a/d/c0/x1/f;Le/a/d/c0/x1/a;Le/a/d/x/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/x1/f$h;

    iget-object v0, p0, Le/a/d/c0/x1/f$h;->f:Le/a/d/c0/x1/f;

    iget-object v1, p0, Le/a/d/c0/x1/f$h;->g:Le/a/d/c0/x1/a;

    iget-object v2, p0, Le/a/d/c0/x1/f$h;->h:Le/a/d/x/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/x1/f$h;-><init>(Le/a/d/c0/x1/f;Le/a/d/c0/x1/a;Le/a/d/x/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/x1/f$h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/x1/f$h;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/x1/f$h;->g:Le/a/d/c0/x1/a;

    sget-object v1, Le/a/d/c0/x1/a$c;->a:Le/a/d/c0/x1/a$c;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Le/a/d/c0/x1/f$h;->h:Le/a/d/x/l;

    check-cast p1, Le/a/d/x/d;

    .line 6
    invoke-virtual {p1}, Le/a/d/x/d;->b()Lio/agora/rtc/RtcEngine;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lio/agora/rtc/RtcEngine;->setEnableSpeakerphone(Z)I

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/d/c0/x1/f$h;->h:Le/a/d/x/l;

    const/4 v1, 0x0

    check-cast p1, Le/a/d/x/d;

    .line 8
    invoke-virtual {p1}, Le/a/d/x/d;->b()Lio/agora/rtc/RtcEngine;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lio/agora/rtc/RtcEngine;->setEnableSpeakerphone(Z)I

    .line 9
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/d/c0/x1/f$h;->f:Le/a/d/c0/x1/f;

    iget-object v1, p0, Le/a/d/c0/x1/f$h;->g:Le/a/d/c0/x1/a;

    iput v2, p0, Le/a/d/c0/x1/f$h;->e:I

    invoke-virtual {p1, v1, p0}, Le/a/d/c0/x1/f;->l(Le/a/d/c0/x1/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 10
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
