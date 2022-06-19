.class public final Le/a/w3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/w3/f;


# instance fields
.field public final a:Le/a/y/c/b;

.field public final b:Ls1/w/f;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/y/c/b;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "flashManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w3/h;->a:Le/a/y/c/b;

    iput-object p2, p0, Le/a/w3/h;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/w3/h;->c:Ls1/w/f;

    return-void
.end method
