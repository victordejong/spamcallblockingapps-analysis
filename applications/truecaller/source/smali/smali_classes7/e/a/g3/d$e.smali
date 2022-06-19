.class public final Le/a/g3/d$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g3/d;->push(Ljava/lang/String;Ljava/util/Map;)V
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
    c = "com.truecaller.clevertap.CleverTapManagerImpl$push$1"
    f = "CleverTapManagerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/g3/d;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Le/a/g3/d;Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g3/d$e;->e:Le/a/g3/d;

    iput-object p2, p0, Le/a/g3/d$e;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/g3/d$e;->g:Ljava/util/Map;

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

    new-instance p1, Le/a/g3/d$e;

    iget-object v0, p0, Le/a/g3/d$e;->e:Le/a/g3/d;

    iget-object v1, p0, Le/a/g3/d$e;->f:Ljava/lang/String;

    iget-object v2, p0, Le/a/g3/d$e;->g:Ljava/util/Map;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/g3/d$e;-><init>(Le/a/g3/d;Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/g3/d$e;->e:Le/a/g3/d;

    iget-object v0, p0, Le/a/g3/d$e;->f:Ljava/lang/String;

    iget-object v1, p0, Le/a/g3/d$e;->g:Ljava/util/Map;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/g3/d;->a:Le/a/g3/b;

    .line 6
    invoke-interface {p1, v0, v1}, Le/a/g3/b;->push(Ljava/lang/String;Ljava/util/Map;)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/g3/d$e;->e:Le/a/g3/d;

    .line 3
    iget-object p1, p1, Le/a/g3/d;->a:Le/a/g3/b;

    .line 4
    iget-object v0, p0, Le/a/g3/d$e;->f:Ljava/lang/String;

    iget-object v1, p0, Le/a/g3/d$e;->g:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Le/a/g3/b;->push(Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
