.class public Le/i/b/e3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ls1/g;

.field public final c:Le/i/b/e2;

.field public final d:Le/i/b/s1/d;


# direct methods
.method public constructor <init>(Le/i/b/e2;Le/i/b/s1/d;)V
    .locals 1

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uniqueIdGenerator"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/e3;->c:Le/i/b/e2;

    iput-object p2, p0, Le/i/b/e3;->d:Le/i/b/s1/d;

    .line 2
    invoke-interface {p1}, Le/i/b/e2;->a()J

    move-result-wide p1

    iput-wide p1, p0, Le/i/b/e3;->a:J

    .line 3
    new-instance p1, Le/i/b/e3$a;

    invoke-direct {p1, p0}, Le/i/b/e3$a;-><init>(Le/i/b/e3;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/i/b/e3;->b:Ls1/g;

    return-void
.end method
