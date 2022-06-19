.class public final Le/a/o/b/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/c0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/w/f;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;)V
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

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/e0;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/o/b/e0;->c:Landroid/content/Context;

    .line 2
    new-instance p1, Le/a/o/b/e0$a;

    invoke-direct {p1, p0}, Le/a/o/b/e0$a;-><init>(Le/a/o/b/e0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/o/b/e0;->a:Ls1/g;

    return-void
.end method
