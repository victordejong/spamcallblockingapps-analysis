.class public final Le/a/d/c0/f$c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/f$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Le/a/d/c0/k1;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.CallUserResolverImpl$resolve$searchAsync$1$1"
    f = "CallUserResolver.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/f$c;


# direct methods
.method public constructor <init>(Le/a/d/c0/f$c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/f$c$a;->f:Le/a/d/c0/f$c;

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

    new-instance p1, Le/a/d/c0/f$c$a;

    iget-object v0, p0, Le/a/d/c0/f$c$a;->f:Le/a/d/c0/f$c;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/f$c$a;-><init>(Le/a/d/c0/f$c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/f$c$a;

    iget-object v0, p0, Le/a/d/c0/f$c$a;->f:Le/a/d/c0/f$c;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/f$c$a;-><init>(Le/a/d/c0/f$c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/f$c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/f$c$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performing search for numbers: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/c0/f$c$a;->f:Le/a/d/c0/f$c;

    iget-object v1, v1, Le/a/d/c0/f$c;->g:Ljava/util/Set;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    iget-object p1, p0, Le/a/d/c0/f$c$a;->f:Le/a/d/c0/f$c;

    iget-object v1, p1, Le/a/d/c0/f$c;->f:Le/a/d/c0/f;

    .line 6
    iget-object v1, v1, Le/a/d/c0/f;->d:Le/a/d/c0/j1;

    .line 7
    iget-object v3, p1, Le/a/d/c0/f$c;->g:Ljava/util/Set;

    iget-object p1, p1, Le/a/d/c0/f$c;->h:Lcom/truecaller/voip/util/VoipSearchDirection;

    iput v2, p0, Le/a/d/c0/f$c$a;->e:I

    invoke-interface {v1, v3, p1, p0}, Le/a/d/c0/j1;->u(Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
