.class public final Le/a/f4/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/g;


# instance fields
.field public final a:Le/a/f4/a/d;

.field public final b:Le/a/a/i0;

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/f4/a/d;Le/a/a/i0;Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f4/a/d;",
            "Le/a/a/i0;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "credentialsChecker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/e/a;->a:Le/a/f4/a/d;

    iput-object p2, p0, Le/a/f4/e/a;->b:Le/a/a/i0;

    iput-object p3, p0, Le/a/f4/e/a;->c:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/p0;Lp3/a/c;Lp3/a/d;)Lp3/a/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/p0<",
            "TReqT;TRespT;>;",
            "Lp3/a/c;",
            "Lp3/a/d;",
            ")",
            "Lp3/a/f<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/f4/e/a$a;

    .line 2
    invoke-virtual {p3, p1, p2}, Lp3/a/d;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Le/a/f4/e/a$a;-><init>(Le/a/f4/e/a;Lp3/a/d;Lp3/a/p0;Lp3/a/c;Lp3/a/f;)V

    return-object v0
.end method
