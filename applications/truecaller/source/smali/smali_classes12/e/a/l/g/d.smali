.class public final Le/a/l/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/q/z;

.field public final b:Landroid/content/Context;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/b0/q/z;Landroid/content/Context;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "phoneNumberHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/g/d;->a:Le/a/b0/q/z;

    iput-object p2, p0, Le/a/l/g/d;->b:Landroid/content/Context;

    iput-object p3, p0, Le/a/l/g/d;->c:Ls1/w/f;

    return-void
.end method
