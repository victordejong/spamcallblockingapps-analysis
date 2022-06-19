.class public final Le/a/d/a/v$g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/v;->g()Lq3/a/p1;
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
    c = "com.truecaller.voip.debug.MockGroupCall$toggleMute$1"
    f = "MockGroupCall.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/a/v;


# direct methods
.method public constructor <init>(Le/a/d/a/v;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/v$g;->e:Le/a/d/a/v;

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

    new-instance p1, Le/a/d/a/v$g;

    iget-object v0, p0, Le/a/d/a/v$g;->e:Le/a/d/a/v;

    invoke-direct {p1, v0, p2}, Le/a/d/a/v$g;-><init>(Le/a/d/a/v;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/a/v$g;->e:Le/a/d/a/v;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/d/a/v;->e:Lq3/a/x2/a1;

    .line 5
    invoke-interface {p2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/a;

    .line 6
    iget-object v0, v0, Le/a/d/a/v;->e:Lq3/a/x2/a1;

    .line 7
    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/a;

    .line 8
    iget-boolean v0, v0, Le/a/d/v/a;->a:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 9
    invoke-static {v1, v0, v3, v3, v2}, Le/a/d/v/a;->a(Le/a/d/v/a;ZZZI)Le/a/d/v/a;

    move-result-object v0

    invoke-interface {p2, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/a/v$g;->e:Le/a/d/a/v;

    .line 3
    iget-object p1, p1, Le/a/d/a/v;->e:Lq3/a/x2/a1;

    .line 4
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/a;

    iget-object v1, p0, Le/a/d/a/v$g;->e:Le/a/d/a/v;

    .line 5
    iget-object v1, v1, Le/a/d/a/v;->e:Lq3/a/x2/a1;

    .line 6
    invoke-interface {v1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/a;

    .line 7
    iget-boolean v1, v1, Le/a/d/v/a;->a:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v1, v3, v3, v2}, Le/a/d/v/a;->a(Le/a/d/v/a;ZZZI)Le/a/d/v/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
