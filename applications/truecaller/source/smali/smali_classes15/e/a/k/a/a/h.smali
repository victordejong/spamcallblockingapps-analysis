.class public final Le/a/k/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c0/h;

.field public final b:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/c0/h;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "experimentRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/a/a/h;->a:Le/a/c0/h;

    iput-object p2, p0, Le/a/k/a/a/h;->b:Le/a/p5/c0;

    return-void
.end method
