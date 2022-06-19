.class public final Le/a/c/c/f/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/c/d/d0;

.field public final b:Le/a/c/c/d/m0;

.field public final c:Le/a/c/c/d/s;


# direct methods
.method public constructor <init>(Le/a/c/c/d/d0;Le/a/c/c/d/m0;Le/a/c/c/d/s;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pdoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enrichmentDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/k;->a:Le/a/c/c/d/d0;

    iput-object p2, p0, Le/a/c/c/f/k;->b:Le/a/c/c/d/m0;

    iput-object p3, p0, Le/a/c/c/f/k;->c:Le/a/c/c/d/s;

    return-void
.end method
