.class public final Le/a/d/c0/a2/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/a2/c;->e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/b0/b/e;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.crossdc.VoipTargetDomainResolverImpl$resolveByNumber$2"
    f = "VoipTargetDomainResolver.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/c0/a2/c;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/c0/a2/c;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/a2/c$a;->e:Le/a/d/c0/a2/c;

    iput-object p2, p0, Le/a/d/c0/a2/c$a;->f:Ljava/lang/String;

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

    new-instance p1, Le/a/d/c0/a2/c$a;

    iget-object v0, p0, Le/a/d/c0/a2/c$a;->e:Le/a/d/c0/a2/c;

    iget-object v1, p0, Le/a/d/c0/a2/c$a;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/a2/c$a;-><init>(Le/a/d/c0/a2/c;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/d/c0/a2/c$a;->e:Le/a/d/c0/a2/c;

    iget-object v0, p0, Le/a/d/c0/a2/c$a;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/d/c0/a2/c;->d:Le/a/d/c0/b2/a;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p2, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p1, Le/a/d/c0/b2/a;->a:Le/a/b0/q/z;

    invoke-interface {v1, v0}, Le/a/b0/q/z;->f(Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p1, Le/a/d/c0/b2/a;->b:Le/a/b0/q/w;

    invoke-interface {p1, v0}, Le/a/b0/q/w;->b(Le/m/f/a/o;)Le/a/b0/b/e;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/c0/a2/c$a;->e:Le/a/d/c0/a2/c;

    .line 3
    iget-object p1, p1, Le/a/d/c0/a2/c;->d:Le/a/d/c0/b2/a;

    .line 4
    iget-object v0, p0, Le/a/d/c0/a2/c$a;->f:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p1, Le/a/d/c0/b2/a;->a:Le/a/b0/q/z;

    invoke-interface {v2, v0}, Le/a/b0/q/z;->f(Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p1, Le/a/d/c0/b2/a;->b:Le/a/b0/q/w;

    invoke-interface {p1, v0}, Le/a/b0/q/w;->b(Le/m/f/a/o;)Le/a/b0/b/e;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method
