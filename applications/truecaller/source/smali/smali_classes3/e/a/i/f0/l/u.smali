.class public final Le/a/i/f0/l/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/i/f0/l/c;

.field public b:I

.field public final c:Le/a/i/f0/m/d;

.field public final d:J


# direct methods
.method public constructor <init>(Le/a/i/f0/m/d;J)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    iput-wide p2, p0, Le/a/i/f0/l/u;->d:J

    .line 2
    check-cast p1, Le/a/i/f0/m/b;

    .line 3
    iget-object p1, p1, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    .line 4
    iput-object p1, p0, Le/a/i/f0/l/u;->a:Le/a/i/f0/l/c;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Le/a/i/f0/l/u;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)Le/a/i/f0/m/d;
    .locals 2

    .line 1
    iget v0, p0, Le/a/i/f0/l/u;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Ad already taken"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    .line 3
    iput p1, p0, Le/a/i/f0/l/u;->b:I

    return-object v0
.end method
