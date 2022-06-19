.class public final Le/a/f/a/a/o/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/a/o/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/f/a/a/o/d;",
        ">;",
        "Le/a/f/a/a/o/c;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/f/y/c;

.field public final f:Le/a/f/z/x;

.field public final g:Le/a/p5/c0;

.field public final h:Le/a/f/s;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/f/y/c;Le/a/f/z/x;Le/a/p5/c0;Le/a/f/s;)V
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

    const-string v0, "callManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rejectWithMessageHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ringtoneHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/f/a/a/o/f;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/f/a/a/o/f;->e:Le/a/f/y/c;

    iput-object p3, p0, Le/a/f/a/a/o/f;->f:Le/a/f/z/x;

    iput-object p4, p0, Le/a/f/a/a/o/f;->g:Le/a/p5/c0;

    iput-object p5, p0, Le/a/f/a/a/o/f;->h:Le/a/f/s;

    return-void
.end method
