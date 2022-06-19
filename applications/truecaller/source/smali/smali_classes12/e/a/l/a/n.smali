.class public final Le/a/l/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c0/h;

.field public final b:Le/a/p5/c0;

.field public final c:Le/a/l/c2;

.field public final d:Le/a/q2/d1/d;


# direct methods
.method public constructor <init>(Le/a/c0/h;Le/a/p5/c0;Le/a/l/c2;Le/a/q2/d1/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "experimentRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/n;->a:Le/a/c0/h;

    iput-object p2, p0, Le/a/l/a/n;->b:Le/a/p5/c0;

    iput-object p3, p0, Le/a/l/a/n;->c:Le/a/l/c2;

    iput-object p4, p0, Le/a/l/a/n;->d:Le/a/q2/d1/d;

    return-void
.end method
