.class public final Le/a/d/c0/f$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/f;->b(Lq3/a/i0;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;)Ljava/util/Map;
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
    c = "com.truecaller.voip.util.CallUserResolverImpl$resolve$searchAsync$1"
    f = "CallUserResolver.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/f;

.field public final synthetic g:Ljava/util/Set;

.field public final synthetic h:Lcom/truecaller/voip/util/VoipSearchDirection;


# direct methods
.method public constructor <init>(Le/a/d/c0/f;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/f$c;->f:Le/a/d/c0/f;

    iput-object p2, p0, Le/a/d/c0/f$c;->g:Ljava/util/Set;

    iput-object p3, p0, Le/a/d/c0/f$c;->h:Lcom/truecaller/voip/util/VoipSearchDirection;

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

    new-instance p1, Le/a/d/c0/f$c;

    iget-object v0, p0, Le/a/d/c0/f$c;->f:Le/a/d/c0/f;

    iget-object v1, p0, Le/a/d/c0/f$c;->g:Ljava/util/Set;

    iget-object v2, p0, Le/a/d/c0/f$c;->h:Lcom/truecaller/voip/util/VoipSearchDirection;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/f$c;-><init>(Le/a/d/c0/f;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/f$c;

    iget-object v0, p0, Le/a/d/c0/f$c;->f:Le/a/d/c0/f;

    iget-object v1, p0, Le/a/d/c0/f$c;->g:Ljava/util/Set;

    iget-object v2, p0, Le/a/d/c0/f$c;->h:Lcom/truecaller/voip/util/VoipSearchDirection;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/f$c;-><init>(Le/a/d/c0/f;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/f$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/f$c;->e:I

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
    sget-wide v3, Le/a/d/c0/i;->a:J

    .line 5
    new-instance p1, Le/a/d/c0/f$c$a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Le/a/d/c0/f$c$a;-><init>(Le/a/d/c0/f$c;Ls1/w/d;)V

    iput v2, p0, Le/a/d/c0/f$c;->e:I

    invoke-static {v3, v4, p1, p0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    :goto_1
    return-object p1
.end method
