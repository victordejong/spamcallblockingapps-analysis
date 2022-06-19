.class public final Le/a/l/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/a/w;

.field public final b:Le/a/l/a/j0;

.field public final c:Le/a/l/c/n/d;


# direct methods
.method public constructor <init>(Le/a/l/a/w;Le/a/l/a/j0;Le/a/l/c/n/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoAttentionHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "temporaryPromoCardManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumNewFeatureLabelHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/p;->a:Le/a/l/a/w;

    iput-object p2, p0, Le/a/l/a/p;->b:Le/a/l/a/j0;

    iput-object p3, p0, Le/a/l/a/p;->c:Le/a/l/c/n/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/l/a/p;->a:Le/a/l/a/w;

    .line 2
    invoke-virtual {v0}, Le/a/l/a/w;->a()Z

    move-result v1

    const-string v2, "DateTime.now()"

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Le/a/l/a/w;->a:Le/a/l/c2;

    .line 4
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-wide v3, v1, Lw3/b/a/e0/e;->a:J

    .line 7
    invoke-interface {v0, v3, v4}, Le/a/l/c2;->i3(J)V

    .line 8
    :cond_0
    iget-object v0, p0, Le/a/l/a/p;->b:Le/a/l/a/j0;

    .line 9
    invoke-virtual {v0}, Le/a/l/a/j0;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v0, v0, Le/a/l/a/j0;->c:Le/a/l/c2;

    .line 11
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 12
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    .line 14
    invoke-interface {v0, v1, v2}, Le/a/l/c2;->v0(J)V

    .line 15
    :cond_1
    iget-object v0, p0, Le/a/l/a/p;->c:Le/a/l/c/n/d;

    invoke-interface {v0}, Le/a/l/c/n/d;->e()V

    return-void
.end method
