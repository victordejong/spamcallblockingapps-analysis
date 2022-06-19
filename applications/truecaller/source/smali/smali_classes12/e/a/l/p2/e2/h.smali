.class public final Le/a/l/p2/e2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/z0;


# instance fields
.field public final a:Le/a/l/p2/t1;


# direct methods
.method public constructor <init>(Le/a/l/p2/t1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "webBillingPurchaseStateManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e2/h;->a:Le/a/l/p2/t1;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/y0;)V
    .locals 3

    const-string v0, "update"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Le/a/l/p2/y0;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-boolean p1, p1, Le/a/l/p2/y0;->b:Z

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/l/p2/e2/h;->a:Le/a/l/p2/t1;

    .line 4
    iget-object v0, p1, Le/a/l/p2/t1;->a:Le/a/l/p2/v0;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Le/a/l/p2/v0;->X1(J)V

    .line 5
    iget-object v0, p1, Le/a/l/p2/t1;->a:Le/a/l/p2/v0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/l/p2/v0;->X(Z)V

    .line 6
    iget-object p1, p1, Le/a/l/p2/t1;->b:Le/a/l/c2;

    invoke-interface {p1, v1}, Le/a/l/c2;->y0(Z)V

    :cond_1
    return-void
.end method
