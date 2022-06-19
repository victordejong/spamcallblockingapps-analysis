.class public final Le/a/l/p2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/h0;

.field public final b:Le/a/l/u2/a;

.field public final c:Le/a/l/p2/t1;


# direct methods
.method public constructor <init>(Le/a/p5/h0;Le/a/l/u2/a;Le/a/l/p2/t1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productStoreProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webBillingPurchaseStateManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/y;->a:Le/a/p5/h0;

    iput-object p2, p0, Le/a/l/p2/y;->b:Le/a/l/u2/a;

    iput-object p3, p0, Le/a/l/p2/y;->c:Le/a/l/p2/t1;

    return-void
.end method
