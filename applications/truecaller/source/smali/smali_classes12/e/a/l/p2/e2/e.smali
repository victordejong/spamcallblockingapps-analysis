.class public final Le/a/l/p2/e2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/z0;


# instance fields
.field public final a:Le/a/l/p2/o0;


# direct methods
.method public constructor <init>(Le/a/l/p2/o0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumProductsRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e2/e;->a:Le/a/l/p2/o0;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/y0;)V
    .locals 1

    const-string v0, "update"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Le/a/l/p2/y0;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p1, Le/a/l/p2/y0;->b:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Le/a/l/p2/y0;->d:Le/a/l/p2/u0;

    .line 4
    iget-object v0, v0, Le/a/l/p2/u0;->c:Lcom/truecaller/premium/data/ProductKind;

    .line 5
    iget-object p1, p1, Le/a/l/p2/y0;->e:Le/a/l/p2/x;

    .line 6
    iget-object p1, p1, Le/a/l/p2/x;->h:Lcom/truecaller/premium/data/ProductKind;

    if-eq v0, p1, :cond_1

    .line 7
    :cond_0
    iget-object p1, p0, Le/a/l/p2/e2/e;->a:Le/a/l/p2/o0;

    invoke-interface {p1}, Le/a/l/p2/o0;->c()V

    :cond_1
    return-void
.end method
