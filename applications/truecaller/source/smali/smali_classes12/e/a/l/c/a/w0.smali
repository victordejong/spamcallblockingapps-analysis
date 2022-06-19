.class public final Le/a/l/c/a/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/c0/h;

.field public final c:Le/a/l/p2/v0;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/c0/h;Le/a/l/p2/v0;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/w0;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/l/c/a/w0;->b:Le/a/c0/h;

    iput-object p3, p0, Le/a/l/c/a/w0;->c:Le/a/l/p2/v0;

    iput-object p4, p0, Le/a/l/c/a/w0;->d:Ls1/w/f;

    return-void
.end method
