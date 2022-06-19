.class public final Le/a/i/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/i/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ads/AdLayoutTypeX;->SMALL:Lcom/truecaller/ads/AdLayoutTypeX;

    sput-object v0, Le/a/i/d/a;->a:Le/a/i/g;

    return-void
.end method

.method public static final a(Le/a/i/d/x;Le/a/u3/g;Le/a/i/d/e;)Le/a/o2/o;
    .locals 5

    const-string v0, "$this$delegateX"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/o2/o;

    const/4 v1, 0x6

    new-array v1, v1, [Le/a/o2/n;

    .line 2
    new-instance v2, Le/a/o2/n;

    .line 3
    invoke-interface {p0}, Le/a/i/d/x;->e()Le/a/i/d/k;

    move-result-object v3

    .line 4
    new-instance v4, Le/a/i/d/a$c;

    invoke-direct {v4, p1, p2}, Le/a/i/d/a$c;-><init>(Le/a/u3/g;Le/a/i/d/e;)V

    const p1, 0x7f0a13d7

    .line 5
    invoke-direct {v2, v3, p1, v4}, Le/a/o2/n;-><init>(Le/a/o2/p;ILs1/z/b/l;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    .line 6
    new-instance v2, Le/a/o2/n;

    .line 7
    invoke-interface {p0}, Le/a/i/d/x;->a()Le/a/i/d/i;

    move-result-object v3

    .line 8
    new-instance v4, Le/a/i/d/a$a;

    invoke-direct {v4, p1, p2}, Le/a/i/d/a$a;-><init>(ILjava/lang/Object;)V

    const p1, 0x7f0a13d8

    .line 9
    invoke-direct {v2, v3, p1, v4}, Le/a/o2/n;-><init>(Le/a/o2/p;ILs1/z/b/l;)V

    const/4 p1, 0x1

    aput-object v2, v1, p1

    .line 10
    new-instance v2, Le/a/o2/n;

    .line 11
    invoke-interface {p0}, Le/a/i/d/x;->c()Le/a/i/d/h;

    move-result-object v3

    .line 12
    new-instance v4, Le/a/i/d/a$a;

    invoke-direct {v4, p1, p2}, Le/a/i/d/a$a;-><init>(ILjava/lang/Object;)V

    const p1, 0x7f0a13b6

    .line 13
    invoke-direct {v2, v3, p1, v4}, Le/a/o2/n;-><init>(Le/a/o2/p;ILs1/z/b/l;)V

    const/4 p1, 0x2

    aput-object v2, v1, p1

    .line 14
    new-instance v2, Le/a/o2/n;

    .line 15
    invoke-interface {p0}, Le/a/i/d/x;->b()Le/a/i/d/j;

    move-result-object v3

    .line 16
    new-instance v4, Le/a/i/d/a$a;

    invoke-direct {v4, p1, p2}, Le/a/i/d/a$a;-><init>(ILjava/lang/Object;)V

    const p1, 0x7f0a13c6

    .line 17
    invoke-direct {v2, v3, p1, v4}, Le/a/o2/n;-><init>(Le/a/o2/p;ILs1/z/b/l;)V

    const/4 p1, 0x3

    aput-object v2, v1, p1

    .line 18
    new-instance p1, Le/a/o2/n;

    .line 19
    invoke-interface {p0}, Le/a/i/d/x;->f()Le/a/i/d/m;

    move-result-object p2

    .line 20
    sget-object v2, Le/a/i/d/a$b;->c:Le/a/i/d/a$b;

    const v3, 0x7f0a13dd

    .line 21
    invoke-direct {p1, p2, v3, v2}, Le/a/o2/n;-><init>(Le/a/o2/p;ILs1/z/b/l;)V

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 22
    new-instance p1, Le/a/o2/n;

    .line 23
    invoke-interface {p0}, Le/a/i/d/x;->d()Le/a/i/d/l;

    move-result-object p0

    .line 24
    sget-object p2, Le/a/i/d/a$b;->d:Le/a/i/d/a$b;

    const v2, 0x7f0a13da

    .line 25
    invoke-direct {p1, p0, v2, p2}, Le/a/o2/n;-><init>(Le/a/o2/p;ILs1/z/b/l;)V

    const/4 p0, 0x5

    aput-object p1, v1, p0

    .line 26
    invoke-direct {v0, v1}, Le/a/o2/o;-><init>([Le/a/o2/n;)V

    return-object v0
.end method
