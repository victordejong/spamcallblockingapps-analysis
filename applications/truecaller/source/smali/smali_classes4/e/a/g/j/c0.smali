.class public final Le/a/g/j/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/j/a0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/c0;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/g/j/c0;->b:Ls1/w/f;

    return-void
.end method
