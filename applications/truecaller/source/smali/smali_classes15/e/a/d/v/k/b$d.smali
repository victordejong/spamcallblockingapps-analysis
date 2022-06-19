.class public final Le/a/d/v/k/b$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/b;->g()Lq3/a/p1;
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
    c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl$toggleMute$1"
    f = "ChangeCallSetting.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/v/k/b;


# direct methods
.method public constructor <init>(Le/a/d/v/k/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/b$d;->e:Le/a/d/v/k/b;

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

    new-instance p1, Le/a/d/v/k/b$d;

    iget-object v0, p0, Le/a/d/v/k/b$d;->e:Le/a/d/v/k/b;

    invoke-direct {p1, v0, p2}, Le/a/d/v/k/b$d;-><init>(Le/a/d/v/k/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/v/k/b$d;->e:Le/a/d/v/k/b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 5
    invoke-virtual {p2}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d/v/a;

    .line 6
    iget-boolean p2, p2, Le/a/d/v/a;->a:Z

    xor-int/lit8 p2, p2, 0x1

    .line 7
    invoke-virtual {v0, p2}, Le/a/d/v/k/b;->e(Z)Lq3/a/p1;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/v/k/b$d;->e:Le/a/d/v/k/b;

    .line 3
    iget-object v0, p1, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 4
    invoke-virtual {v0}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/a;

    .line 5
    iget-boolean v0, v0, Le/a/d/v/a;->a:Z

    xor-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Le/a/d/v/k/b;->e(Z)Lq3/a/p1;

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
