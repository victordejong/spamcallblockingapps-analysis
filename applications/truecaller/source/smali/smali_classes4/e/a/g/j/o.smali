.class public final Le/a/g/j/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/e/f;

.field public final b:Le/a/g/j/q;

.field public final c:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/b0/e/f;Le/a/g/j/q;Le/a/l/p2/v0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "regionUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/o;->a:Le/a/b0/e/f;

    iput-object p2, p0, Le/a/g/j/o;->b:Le/a/g/j/q;

    iput-object p3, p0, Le/a/g/j/o;->c:Le/a/l/p2/v0;

    return-void
.end method
