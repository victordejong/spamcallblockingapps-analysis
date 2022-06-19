.class public final Le/a/r/z/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/a0;->b:Le/a/u3/g;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/r/z/a0;->a:Le/m/e/k;

    return-void
.end method
