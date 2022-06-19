.class public final Le/a/d/c0/z1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/z1/f;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/d/c0/e;

.field public final c:Le/a/d/p/a;

.field public final d:Le/a/b0/e/l;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/c0/e;Le/a/d/p/a;Le/a/b0/e/l;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callUserResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restApi"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/z1/h;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/z1/h;->b:Le/a/d/c0/e;

    iput-object p3, p0, Le/a/d/c0/z1/h;->c:Le/a/d/p/a;

    iput-object p4, p0, Le/a/d/c0/z1/h;->d:Le/a/b0/e/l;

    return-void
.end method
