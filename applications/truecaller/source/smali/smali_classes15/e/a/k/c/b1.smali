.class public final Le/a/k/c/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/a1;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/k/c/r0;

.field public final c:Le/a/k/j;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k/c/r0;Le/a/k/j;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdAvailability"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/b1;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/k/c/b1;->b:Le/a/k/c/r0;

    iput-object p3, p0, Le/a/k/c/b1;->c:Le/a/k/j;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lq3/a/p1;
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/k/c/b1;->a:Ls1/w/f;

    new-instance v4, Le/a/k/c/b1$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/k/c/b1$a;-><init>(Le/a/k/c/b1;Landroid/content/Intent;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/c/b1;->a:Ls1/w/f;

    return-object v0
.end method
