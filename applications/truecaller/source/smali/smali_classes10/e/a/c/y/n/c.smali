.class public final Le/a/c/y/n/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/c0;

.field public final b:Le/a/c/b/j;

.field public final c:Le/a/c/y/k;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/c/b/j;Le/a/c/y/k;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartCardSeedManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/y/n/c;->a:Le/a/p5/c0;

    iput-object p2, p0, Le/a/c/y/n/c;->b:Le/a/c/b/j;

    iput-object p3, p0, Le/a/c/y/n/c;->c:Le/a/c/y/k;

    return-void
.end method
