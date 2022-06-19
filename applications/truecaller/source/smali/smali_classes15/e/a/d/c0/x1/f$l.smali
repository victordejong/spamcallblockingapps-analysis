.class public final Le/a/d/c0/x1/f$l;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f;->e(Lq3/a/i0;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$requestVoiceAudioFocusScoped$2"
    f = "VoipAudioUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/c0/x1/f;

.field public final synthetic f:Lq3/a/i0;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f;Lq3/a/i0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$l;->e:Le/a/d/c0/x1/f;

    iput-object p2, p0, Le/a/d/c0/x1/f$l;->f:Lq3/a/i0;

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

    new-instance p1, Le/a/d/c0/x1/f$l;

    iget-object v0, p0, Le/a/d/c0/x1/f$l;->e:Le/a/d/c0/x1/f;

    iget-object v1, p0, Le/a/d/c0/x1/f$l;->f:Lq3/a/i0;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/x1/f$l;-><init>(Le/a/d/c0/x1/f;Lq3/a/i0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/c0/x1/f$l;->e:Le/a/d/c0/x1/f;

    iget-object v1, p0, Le/a/d/c0/x1/f$l;->f:Lq3/a/i0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object p2, Le/a/d/c0/x1/f$l$c;->a:Le/a/d/c0/x1/f$l$c;

    .line 5
    sget-object v2, Le/a/d/c0/x1/c;->b:Le/a/d/c0/x1/c;

    .line 6
    invoke-virtual {v0, v2, p2}, Le/a/d/c0/x1/f;->o(Le/a/d/c0/x1/c;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Le/a/d/c0/x1/d;

    move-result-object p2

    .line 7
    iget-object v2, v0, Le/a/d/c0/x1/f;->h:Ls1/w/f;

    const/4 v3, 0x0

    .line 8
    new-instance v4, Le/a/d/c0/x1/f$l$a;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Le/a/d/c0/x1/f$l$a;-><init>(Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    .line 9
    new-instance v1, Le/a/d/c0/x1/f$l$b;

    invoke-direct {v1, p2}, Le/a/d/c0/x1/f$l$b;-><init>(Le/a/d/c0/x1/d;)V

    check-cast v0, Lq3/a/u1;

    const/4 p2, 0x0

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, p2, v2, v1}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Le/a/d/c0/x1/f$l$c;->a:Le/a/d/c0/x1/f$l$c;

    .line 3
    iget-object v0, p0, Le/a/d/c0/x1/f$l;->e:Le/a/d/c0/x1/f;

    sget-object v1, Le/a/d/c0/x1/c;->b:Le/a/d/c0/x1/c;

    .line 4
    invoke-virtual {v0, v1, p1}, Le/a/d/c0/x1/f;->o(Le/a/d/c0/x1/c;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Le/a/d/c0/x1/d;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/d/c0/x1/f$l;->f:Lq3/a/i0;

    iget-object v1, p0, Le/a/d/c0/x1/f$l;->e:Le/a/d/c0/x1/f;

    .line 6
    iget-object v1, v1, Le/a/d/c0/x1/f;->h:Ls1/w/f;

    .line 7
    new-instance v3, Le/a/d/c0/x1/f$l$a;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Le/a/d/c0/x1/f$l$a;-><init>(Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    .line 8
    new-instance v1, Le/a/d/c0/x1/f$l$b;

    invoke-direct {v1, p1}, Le/a/d/c0/x1/f$l$b;-><init>(Le/a/d/c0/x1/d;)V

    check-cast v0, Lq3/a/u1;

    const/4 p1, 0x0

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, p1, v2, v1}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
