.class public abstract Le/a/c/r/j/c;
.super Le/a/c/r/j/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/r/j/c$a;
    }
.end annotation


# instance fields
.field public final b:Le/a/c/a0/e;

.field public final c:Ls1/w/f;

.field public final d:Ls1/w/f;

.field public final e:Le/a/c/e/c;

.field public final f:J

.field public final g:Lcom/truecaller/insights/models/DomainOrigin;


# direct methods
.method public constructor <init>(JLcom/truecaller/insights/models/DomainOrigin;)V
    .locals 1

    const-string v0, "origin"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/c/r/j/f;-><init>()V

    iput-wide p1, p0, Le/a/c/r/j/c;->f:J

    iput-object p3, p0, Le/a/c/r/j/c;->g:Lcom/truecaller/insights/models/DomainOrigin;

    .line 2
    const-class p1, Le/a/c/r/j/c$a;

    const-string p2, "EntryPointAccessors.from\u2026), Injection::class.java)"

    invoke-static {p1, p2}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/r/j/c$a;

    .line 3
    invoke-interface {p1}, Le/a/c/r/j/c$a;->I()Le/a/c/a0/e;

    move-result-object p2

    iput-object p2, p0, Le/a/c/r/j/c;->b:Le/a/c/a0/e;

    .line 4
    invoke-interface {p1}, Le/a/c/r/j/c$a;->a()Ls1/w/f;

    move-result-object p2

    iput-object p2, p0, Le/a/c/r/j/c;->c:Ls1/w/f;

    .line 5
    invoke-interface {p1}, Le/a/c/r/j/c$a;->n()Le/a/c/e/c;

    move-result-object p2

    iput-object p2, p0, Le/a/c/r/j/c;->e:Le/a/c/e/c;

    .line 6
    invoke-interface {p1}, Le/a/c/r/j/c$a;->e()Ls1/w/f;

    move-result-object p1

    iput-object p1, p0, Le/a/c/r/j/c;->d:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/c/r/j/f;->c()Lq3/a/i0;

    move-result-object v0

    new-instance v3, Le/a/c/r/j/c$b;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Le/a/c/r/j/c$b;-><init>(Le/a/c/r/j/c;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public abstract e()V
.end method
