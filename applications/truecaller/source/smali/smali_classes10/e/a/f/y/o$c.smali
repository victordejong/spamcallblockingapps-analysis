.class public final Le/a/f/y/o$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/y/o;->Oj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/f/z/n0/a;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.service.InCallUIServicePresenter$maybeListenToAudioStateChanges$1"
    f = "InCallUIServicePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/f/y/o;


# direct methods
.method public constructor <init>(Le/a/f/y/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/o$c;->f:Le/a/f/y/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/y/o$c;

    iget-object v1, p0, Le/a/f/y/o$c;->f:Le/a/f/y/o;

    invoke-direct {v0, v1, p2}, Le/a/f/y/o$c;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/y/o$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/f/y/o$c;->f:Le/a/f/y/o;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/f/z/n0/a;

    .line 4
    iget-object p2, p1, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, v1, Le/a/f/y/o;->x:Le/a/f/z/l0;

    .line 7
    invoke-virtual {p2}, Le/a/f/z/l0;->a()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Le/a/f/y/o;->Nj()V

    .line 9
    :goto_0
    invoke-virtual {v1, p1}, Le/a/f/y/o;->Yj(Le/a/f/z/n0/a;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/y/o$c;->e:Ljava/lang/Object;

    check-cast p1, Le/a/f/z/n0/a;

    .line 2
    iget-object v0, p1, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/f/y/o$c;->f:Le/a/f/y/o;

    .line 5
    iget-object v0, v0, Le/a/f/y/o;->x:Le/a/f/z/l0;

    .line 6
    invoke-virtual {v0}, Le/a/f/z/l0;->a()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/f/y/o$c;->f:Le/a/f/y/o;

    .line 8
    invoke-virtual {v0}, Le/a/f/y/o;->Nj()V

    .line 9
    :goto_0
    iget-object v0, p0, Le/a/f/y/o$c;->f:Le/a/f/y/o;

    .line 10
    invoke-virtual {v0, p1}, Le/a/f/y/o;->Yj(Le/a/f/z/n0/a;)V

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
