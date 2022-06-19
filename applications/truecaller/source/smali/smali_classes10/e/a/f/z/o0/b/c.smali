.class public final Le/a/f/z/o0/b/c;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/f/z/o0/b/b;",
        ">;",
        "Le/a/f/z/o0/b/c;"
    }
.end annotation


# instance fields
.field public final b:Le/a/f/y/c;

.field public final c:Le/a/f/y/v;

.field public final d:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final e:Le/a/f/z/m0/a;


# direct methods
.method public constructor <init>(Le/a/f/y/c;Le/a/f/y/v;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/f/z/m0/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ongoingCallHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecorderManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/f/z/o0/b/c;->b:Le/a/f/y/c;

    iput-object p2, p0, Le/a/f/z/o0/b/c;->c:Le/a/f/y/v;

    iput-object p3, p0, Le/a/f/z/o0/b/c;->d:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p4, p0, Le/a/f/z/o0/b/c;->e:Le/a/f/z/m0/a;

    return-void
.end method
