.class public final Le/a/x4/k/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/x4/k/c;


# instance fields
.field public final a:Le/a/x4/j/c/c;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/x4/j/c/c;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "superNovaStubManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x4/k/f;->a:Le/a/x4/j/c/c;

    iput-object p2, p0, Le/a/x4/k/f;->b:Ls1/w/f;

    return-void
.end method
