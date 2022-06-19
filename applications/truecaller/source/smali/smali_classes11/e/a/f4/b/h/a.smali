.class public final Le/a/f4/b/h/a;
.super Lp3/a/b;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "installationId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lp3/a/b;-><init>()V

    const-string v0, "Bearer "

    .line 2
    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/f4/b/h/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/b$b;Ljava/util/concurrent/Executor;Lp3/a/b$a;)V
    .locals 1

    const-string v0, "requestInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appExecutor"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "applier"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lp3/a/o0;

    invoke-direct {p1}, Lp3/a/o0;-><init>()V

    .line 2
    sget-object p2, Le/a/f4/b/h/b;->a:Lp3/a/o0$f;

    .line 3
    iget-object v0, p0, Le/a/f4/b/h/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lp3/a/o0;->h(Lp3/a/o0$f;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p3, p1}, Lp3/a/b$a;->a(Lp3/a/o0;)V

    return-void
.end method
