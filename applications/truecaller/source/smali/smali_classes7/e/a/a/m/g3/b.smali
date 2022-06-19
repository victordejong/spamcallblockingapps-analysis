.class public final Le/a/a/m/g3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/a0;

.field public final b:Le/a/a/m/o2;


# direct methods
.method public constructor <init>(Le/a/p5/a0;Le/a/a/m/o2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "permissionUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unimportantPromoManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/m/g3/b;->a:Le/a/p5/a0;

    iput-object p2, p0, Le/a/a/m/g3/b;->b:Le/a/a/m/o2;

    return-void
.end method
