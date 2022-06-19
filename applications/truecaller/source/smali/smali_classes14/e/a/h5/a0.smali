.class public final Le/a/h5/a0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.tcpermissions.TcPermissionsViewImpl$requestPermissions$1"
    f = "TcPermissionsView.kt"
    l = {
        0x19f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/h5/z;

.field public final synthetic h:Ls1/z/b/l;

.field public final synthetic i:Lcom/truecaller/tcpermissions/PermissionRequestOptions;

.field public final synthetic j:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/h5/z;Ls1/z/b/l;Lcom/truecaller/tcpermissions/PermissionRequestOptions;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h5/a0;->g:Le/a/h5/z;

    iput-object p2, p0, Le/a/h5/a0;->h:Ls1/z/b/l;

    iput-object p3, p0, Le/a/h5/a0;->i:Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    iput-object p4, p0, Le/a/h5/a0;->j:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/h5/a0;

    iget-object v1, p0, Le/a/h5/a0;->g:Le/a/h5/z;

    iget-object v2, p0, Le/a/h5/a0;->h:Ls1/z/b/l;

    iget-object v3, p0, Le/a/h5/a0;->i:Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    iget-object v4, p0, Le/a/h5/a0;->j:Ljava/util/List;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/h5/a0;-><init>(Le/a/h5/z;Ls1/z/b/l;Lcom/truecaller/tcpermissions/PermissionRequestOptions;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/h5/a0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/h5/a0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h5/a0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h5/a0;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/h5/a0;->e:Ljava/lang/Object;

    check-cast v0, Ls1/z/b/l;

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
    iget-object p1, p0, Le/a/h5/a0;->h:Ls1/z/b/l;

    iget-object v1, p0, Le/a/h5/a0;->g:Le/a/h5/z;

    iget-object v3, p0, Le/a/h5/a0;->i:Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    iget-object v4, p0, Le/a/h5/a0;->j:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 5
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object p1, p0, Le/a/h5/a0;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/h5/a0;->f:I

    .line 6
    invoke-virtual {v1, v3, v4, p0}, Le/a/h5/z;->b(Lcom/truecaller/tcpermissions/PermissionRequestOptions;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 7
    :goto_0
    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
