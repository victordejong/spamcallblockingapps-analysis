.class public final Le/a/d0/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/z4/d;

.field public final b:Le/a/p5/g;

.field public final c:Le/a/b0/q/l0;

.field public final d:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/z4/d;Le/a/p5/g;Le/a/b0/q/l0;Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "generalSettings"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deviceInfoUtil"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "timestampUtil"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clock"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/d0/s0;->a:Le/a/z4/d;

    iput-object p3, p0, Le/a/d0/s0;->b:Le/a/p5/g;

    iput-object p4, p0, Le/a/d0/s0;->c:Le/a/b0/q/l0;

    iput-object p5, p0, Le/a/d0/s0;->d:Le/a/p5/c;

    return-void
.end method
