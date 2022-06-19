.class public final Le/a/l/p2/e2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/z0;


# instance fields
.field public final a:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e2/g;->a:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/y0;)V
    .locals 1

    const-string v0, "update"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/l/p2/y0;->e:Le/a/l/p2/x;

    .line 2
    iget-boolean p1, p1, Le/a/l/p2/x;->j:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/l/p2/e2/g;->a:Le/a/b0/o/a;

    const-string v0, "subscriptionErrorResolveUrl"

    invoke-interface {p1, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/l/p2/e2/g;->a:Le/a/b0/o/a;

    const-string v0, "subscriptionPaymentFailedViewShownOnce"

    invoke-interface {p1, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
