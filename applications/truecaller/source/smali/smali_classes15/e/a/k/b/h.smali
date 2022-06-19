.class public final Le/a/k/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/k/c/i1;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k/c/i1;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/b/h;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/k/b/h;->b:Le/a/k/c/i1;

    return-void
.end method
