.class public final Le/a/m0/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/b0/q/z;

.field public final c:Ls1/w/f;

.field public final d:Le/a/p5/m0;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/b0/q/z;Ls1/w/f;Le/a/p5/m0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/z0;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/m0/z0;->b:Le/a/b0/q/z;

    iput-object p3, p0, Le/a/m0/z0;->c:Ls1/w/f;

    iput-object p4, p0, Le/a/m0/z0;->d:Le/a/p5/m0;

    return-void
.end method
