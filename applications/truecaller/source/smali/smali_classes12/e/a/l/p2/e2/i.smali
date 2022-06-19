.class public final Le/a/l/p2/e2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/z0;


# instance fields
.field public final a:Le/a/r5/p0;


# direct methods
.method public constructor <init>(Le/a/r5/p0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "whoViewedMeSetting"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e2/i;->a:Le/a/r5/p0;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/y0;)V
    .locals 2

    const-string v0, "update"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p1, Le/a/l/p2/y0;->b:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/l/p2/e2/i;->a:Le/a/r5/p0;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Le/a/r5/p0;->z2(J)V

    .line 3
    iget-object p1, p0, Le/a/l/p2/e2/i;->a:Le/a/r5/p0;

    invoke-interface {p1, v0, v1}, Le/a/r5/p0;->d2(J)V

    :cond_0
    return-void
.end method
