.class public final Le/a/e/a/j3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/o2/d;

.field public final b:Le/a/o5/f0;

.field public final c:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/l/o2/d;Le/a/o5/f0;Le/a/p5/g;)V
    .locals 1

    const-string v0, "consumablePurchaseManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/j3;->a:Le/a/l/o2/d;

    iput-object p2, p0, Le/a/e/a/j3;->b:Le/a/o5/f0;

    iput-object p3, p0, Le/a/e/a/j3;->c:Le/a/p5/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/e/a/j3;->b:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/e/a/j3;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Le/a/e/a/j3$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/e/a/j3$a;-><init>(Le/a/e/a/j3;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    return-void
.end method
