.class public final Le/a/m4/c/e$d$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m4/c/e$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.profile.data.ProfileRepositoryImpl$saveProfileAsync$1$1"
    f = "ProfileRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/m4/c/e$d;

.field public final synthetic f:Le/a/b0/n/h;


# direct methods
.method public constructor <init>(Le/a/m4/c/e$d;Le/a/b0/n/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/m4/c/e$d$a;->e:Le/a/m4/c/e$d;

    iput-object p2, p0, Le/a/m4/c/e$d$a;->f:Le/a/b0/n/h;

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

    new-instance p1, Le/a/m4/c/e$d$a;

    iget-object v0, p0, Le/a/m4/c/e$d$a;->e:Le/a/m4/c/e$d;

    iget-object v1, p0, Le/a/m4/c/e$d$a;->f:Le/a/b0/n/h;

    invoke-direct {p1, v0, v1, p2}, Le/a/m4/c/e$d$a;-><init>(Le/a/m4/c/e$d;Le/a/b0/n/h;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/m4/c/e$d$a;->e:Le/a/m4/c/e$d;

    iget-object v0, p0, Le/a/m4/c/e$d$a;->f:Le/a/b0/n/h;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p1, Le/a/m4/c/e$d;->m:Le/a/b0/n/i;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Le/a/b0/n/i;->a(Le/a/b0/n/h;)V

    :cond_0
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/m4/c/e$d$a;->e:Le/a/m4/c/e$d;

    iget-object p1, p1, Le/a/m4/c/e$d;->m:Le/a/b0/n/i;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/m4/c/e$d$a;->f:Le/a/b0/n/h;

    invoke-interface {p1, v0}, Le/a/b0/n/i;->a(Le/a/b0/n/h;)V

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
