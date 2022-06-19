.class public final Le/a/d/c0/x1/f$d$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/p5/r0/d;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$audioStatesFlow$1$1"
    f = "VoipAudioUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ls1/z/c/c0;

.field public final synthetic g:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Ls1/z/c/c0;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$d$a;->f:Ls1/z/c/c0;

    iput-object p2, p0, Le/a/d/c0/x1/f$d$a;->g:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c0/x1/f$d$a;

    iget-object v1, p0, Le/a/d/c0/x1/f$d$a;->f:Ls1/z/c/c0;

    iget-object v2, p0, Le/a/d/c0/x1/f$d$a;->g:Ls1/z/b/l;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/c0/x1/f$d$a;-><init>(Ls1/z/c/c0;Ls1/z/b/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c0/x1/f$d$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d/c0/x1/f$d$a;->f:Ls1/z/c/c0;

    iget-object v2, p0, Le/a/d/c0/x1/f$d$a;->g:Ls1/z/b/l;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/p5/r0/d;

    .line 4
    iget-object p2, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/c0/x1/b;

    if-eqz p2, :cond_2

    .line 5
    iget-object v1, p2, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p1, Le/a/p5/r0/d;->a:Le/a/p5/r0/a;

    .line 8
    iget-object p1, p1, Le/a/p5/r0/d;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 9
    new-instance v3, Le/a/d/c0/x1/a$a;

    invoke-direct {v3, v1}, Le/a/d/c0/x1/a$a;-><init>(Le/a/p5/r0/a;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, p2, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 11
    :goto_0
    invoke-virtual {p2, v3, p1}, Le/a/d/c0/x1/b;->a(Le/a/d/c0/x1/a;Ljava/util/List;)Le/a/d/c0/x1/b;

    move-result-object p1

    .line 12
    invoke-interface {v2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/c0/x1/f$d$a;->e:Ljava/lang/Object;

    check-cast p1, Le/a/p5/r0/d;

    .line 2
    iget-object v1, p0, Le/a/d/c0/x1/f$d$a;->f:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/x1/b;

    if-eqz v1, :cond_2

    .line 3
    iget-object v2, v1, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    .line 4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v2, p1, Le/a/p5/r0/d;->a:Le/a/p5/r0/a;

    .line 6
    iget-object p1, p1, Le/a/p5/r0/d;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 7
    new-instance v3, Le/a/d/c0/x1/a$a;

    invoke-direct {v3, v2}, Le/a/d/c0/x1/a$a;-><init>(Le/a/p5/r0/a;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, v1, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 9
    :goto_0
    invoke-virtual {v1, v3, p1}, Le/a/d/c0/x1/b;->a(Le/a/d/c0/x1/a;Ljava/util/List;)Le/a/d/c0/x1/b;

    move-result-object p1

    .line 10
    iget-object v1, p0, Le/a/d/c0/x1/f$d$a;->g:Ls1/z/b/l;

    invoke-interface {v1, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
