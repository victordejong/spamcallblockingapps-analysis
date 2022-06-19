.class public final Le/a/l/a/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/c2;

.field public final b:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/l/c2;Le/a/l/p2/v0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/w;->a:Le/a/l/c2;

    iput-object p2, p0, Le/a/l/a/w;->b:Le/a/l/p2/v0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/a/w;->b:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/l/a/w;->a:Le/a/l/c2;

    invoke-interface {v0}, Le/a/l/c2;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/l/a/w;->a:Le/a/l/c2;

    invoke-interface {v1}, Le/a/l/c2;->i2()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v0

    .line 3
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Lw3/b/a/e0/c;->i(Lw3/b/a/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
