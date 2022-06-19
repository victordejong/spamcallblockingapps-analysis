.class public final Le/a/d/a/v$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/v;->c(Le/a/d/c0/x1/a;)Lq3/a/p1;
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
    c = "com.truecaller.voip.debug.MockGroupCall$changeAudioRoute$1"
    f = "MockGroupCall.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/a/v;

.field public final synthetic f:Le/a/d/c0/x1/a;


# direct methods
.method public constructor <init>(Le/a/d/a/v;Le/a/d/c0/x1/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/v$a;->e:Le/a/d/a/v;

    iput-object p2, p0, Le/a/d/a/v$a;->f:Le/a/d/c0/x1/a;

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

    new-instance p1, Le/a/d/a/v$a;

    iget-object v0, p0, Le/a/d/a/v$a;->e:Le/a/d/a/v;

    iget-object v1, p0, Le/a/d/a/v$a;->f:Le/a/d/c0/x1/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/v$a;-><init>(Le/a/d/a/v;Le/a/d/c0/x1/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/a/v$a;->e:Le/a/d/a/v;

    iget-object v1, p0, Le/a/d/a/v$a;->f:Le/a/d/c0/x1/a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/d/a/v;->d:Lq3/a/x2/a1;

    .line 5
    invoke-interface {p2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c0/x1/b;

    .line 6
    iget-object v2, v0, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Le/a/d/c0/x1/b;->a(Le/a/d/c0/x1/a;Ljava/util/List;)Le/a/d/c0/x1/b;

    move-result-object v0

    .line 7
    invoke-interface {p2, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/a/v$a;->e:Le/a/d/a/v;

    .line 3
    iget-object p1, p1, Le/a/d/a/v;->d:Lq3/a/x2/a1;

    .line 4
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c0/x1/b;

    iget-object v1, p0, Le/a/d/a/v$a;->f:Le/a/d/c0/x1/a;

    .line 5
    iget-object v2, v0, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Le/a/d/c0/x1/b;->a(Le/a/d/c0/x1/a;Ljava/util/List;)Le/a/d/c0/x1/b;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
