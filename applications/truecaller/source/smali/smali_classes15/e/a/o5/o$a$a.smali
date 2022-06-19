.class public final Le/a/o5/o$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o5/o$a;->a(Landroid/content/Context;)V
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
    c = "com.truecaller.util.CallLogObserver$Companion$registerOnce$1"
    f = "CallLogObserver.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/TrueApp;

.field public final synthetic f:Landroid/os/Handler;

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/TrueApp;Landroid/os/Handler;Landroid/content/Context;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o5/o$a$a;->e:Lcom/truecaller/TrueApp;

    iput-object p2, p0, Le/a/o5/o$a$a;->f:Landroid/os/Handler;

    iput-object p3, p0, Le/a/o5/o$a$a;->g:Landroid/content/Context;

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

    new-instance p1, Le/a/o5/o$a$a;

    iget-object v0, p0, Le/a/o5/o$a$a;->e:Lcom/truecaller/TrueApp;

    iget-object v1, p0, Le/a/o5/o$a$a;->f:Landroid/os/Handler;

    iget-object v2, p0, Le/a/o5/o$a$a;->g:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/o5/o$a$a;-><init>(Lcom/truecaller/TrueApp;Landroid/os/Handler;Landroid/content/Context;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/o5/o$a$a;->e:Lcom/truecaller/TrueApp;

    iget-object v1, p0, Le/a/o5/o$a$a;->f:Landroid/os/Handler;

    iget-object v2, p0, Le/a/o5/o$a$a;->g:Landroid/content/Context;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p2

    invoke-interface {p2}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object p2

    const-string v0, "app.objectsGraph.callHistoryManager()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Le/a/o5/o;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v3}, Le/a/o5/o;-><init>(Landroid/os/Handler;Le/a/r2/f;Ls1/z/c/f;)V

    .line 6
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 7
    sget-object v1, Le/a/o5/o;->e:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p2, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/o5/o$a$a;->e:Lcom/truecaller/TrueApp;

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object p1

    const-string v0, "app.objectsGraph.callHistoryManager()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/o5/o;

    iget-object v1, p0, Le/a/o5/o$a$a;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Le/a/o5/o;-><init>(Landroid/os/Handler;Le/a/r2/f;Ls1/z/c/f;)V

    .line 4
    :try_start_0
    iget-object p1, p0, Le/a/o5/o$a$a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 5
    sget-object v1, Le/a/o5/o;->e:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
