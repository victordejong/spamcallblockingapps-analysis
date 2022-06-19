.class public final Le/a/d/c0/x1/f$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f;->l(Le/a/d/c0/x1/a;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$changeAudioRoute$3"
    f = "VoipAudioUtil.kt"
    l = {
        0xee,
        0xf5,
        0xf8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/x1/f;

.field public final synthetic g:Le/a/d/c0/x1/a;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f;Le/a/d/c0/x1/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    iput-object p2, p0, Le/a/d/c0/x1/f$f;->g:Le/a/d/c0/x1/a;

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

    new-instance p1, Le/a/d/c0/x1/f$f;

    iget-object v0, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    iget-object v1, p0, Le/a/d/c0/x1/f$f;->g:Le/a/d/c0/x1/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/x1/f$f;-><init>(Le/a/d/c0/x1/f;Le/a/d/c0/x1/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/x1/f$f;

    iget-object v0, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    iget-object v1, p0, Le/a/d/c0/x1/f$f;->g:Le/a/d/c0/x1/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/x1/f$f;-><init>(Le/a/d/c0/x1/f;Le/a/d/c0/x1/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/x1/f$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/c0/x1/f$f;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing audio route to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/d/c0/x1/f$f;->g:Le/a/d/c0/x1/a;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    iget-object p1, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    .line 6
    iget-object p1, p1, Le/a/d/c0/x1/f;->l:Le/a/d/q/v;

    .line 7
    iget-object v2, p0, Le/a/d/c0/x1/f$f;->g:Le/a/d/c0/x1/a;

    invoke-interface {p1, v2}, Le/a/d/q/v;->c(Le/a/d/c0/x1/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 8
    :cond_4
    iget-object p1, p0, Le/a/d/c0/x1/f$f;->g:Le/a/d/c0/x1/a;

    .line 9
    instance-of v2, p1, Le/a/d/c0/x1/a$b;

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    sget-object v2, Le/a/d/c0/x1/a$d;->a:Le/a/d/c0/x1/a$d;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 10
    :goto_0
    iget-object p1, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    iput v6, p0, Le/a/d/c0/x1/f$f;->e:I

    invoke-virtual {p1, p0}, Le/a/d/c0/x1/f;->r(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 11
    :cond_6
    :goto_1
    iget-object p1, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    .line 12
    invoke-virtual {p1}, Le/a/d/c0/x1/f;->m()Landroid/media/AudioManager;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_3

    .line 14
    :cond_7
    instance-of v2, p1, Le/a/d/c0/x1/a$a;

    if-eqz v2, :cond_8

    .line 15
    iget-object p1, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    .line 16
    invoke-virtual {p1}, Le/a/d/c0/x1/f;->m()Landroid/media/AudioManager;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 18
    iget-object p1, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    iput v5, p0, Le/a/d/c0/x1/f$f;->e:I

    invoke-virtual {p1, p0}, Le/a/d/c0/x1/f;->p(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    .line 19
    :cond_8
    instance-of p1, p1, Le/a/d/c0/x1/a$c;

    if-eqz p1, :cond_a

    .line 20
    iget-object p1, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    iput v4, p0, Le/a/d/c0/x1/f$f;->e:I

    invoke-virtual {p1, p0}, Le/a/d/c0/x1/f;->r(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 21
    :cond_9
    :goto_2
    iget-object p1, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    .line 22
    invoke-virtual {p1}, Le/a/d/c0/x1/f;->m()Landroid/media/AudioManager;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v6}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 24
    :cond_a
    :goto_3
    iget-object p1, p0, Le/a/d/c0/x1/f$f;->f:Le/a/d/c0/x1/f;

    .line 25
    iget-object p1, p1, Le/a/d/c0/x1/f;->e:Ls1/z/b/a;

    if-eqz p1, :cond_b

    .line 26
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_b
    return-object v0
.end method
