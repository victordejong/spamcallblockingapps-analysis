.class public final Le/a/q/a/h;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/q/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/q/a/f;",
        ">;",
        "Le/a/q/a/e;"
    }
.end annotation


# instance fields
.field public d:Z

.field public final e:Ls1/w/f;

.field public final f:Ls1/w/f;

.field public final g:Le/a/k3/j/b;

.field public final h:Le/a/k3/j/i;

.field public final i:Le/a/q/e/a;

.field public final j:Le/a/q/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/k3/j/b;Le/a/k3/j/i;Le/a/q/e/a;Le/a/q/c;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localRawContactDao"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactFeedbackAnalyticsHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFeedbackHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/q/a/h;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/q/a/h;->f:Ls1/w/f;

    iput-object p3, p0, Le/a/q/a/h;->g:Le/a/k3/j/b;

    iput-object p4, p0, Le/a/q/a/h;->h:Le/a/k3/j/i;

    iput-object p5, p0, Le/a/q/a/h;->i:Le/a/q/e/a;

    iput-object p6, p0, Le/a/q/a/h;->j:Le/a/q/c;

    return-void
.end method
