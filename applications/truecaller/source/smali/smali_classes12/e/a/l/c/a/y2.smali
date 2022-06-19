.class public final Le/a/l/c/a/y2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/o/a;

.field public final b:Le/a/b0/e/r/a;

.field public final c:Le/a/o5/f0;

.field public final d:Le/a/l/p2/v0;

.field public final e:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/o5/f0;Le/a/l/p2/v0;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/y2;->a:Le/a/b0/o/a;

    iput-object p2, p0, Le/a/l/c/a/y2;->b:Le/a/b0/e/r/a;

    iput-object p3, p0, Le/a/l/c/a/y2;->c:Le/a/o5/f0;

    iput-object p4, p0, Le/a/l/c/a/y2;->d:Le/a/l/p2/v0;

    iput-object p5, p0, Le/a/l/c/a/y2;->e:Le/a/p5/c0;

    return-void
.end method
