.class public final Le/a/k/c/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/y;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Lu3/e0;


# direct methods
.method public constructor <init>(Ls1/w/f;Lu3/e0;)V
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

    const-string v0, "httpClient"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/a0;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/k/c/a0;->b:Lu3/e0;

    return-void
.end method
