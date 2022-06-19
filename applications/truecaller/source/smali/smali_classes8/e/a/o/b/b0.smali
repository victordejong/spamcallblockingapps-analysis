.class public final Le/a/o/b/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/z;
.implements Lq3/a/i0;


# instance fields
.field public final a:Le/a/o/b/v;

.field public final b:Ls1/w/f;

.field public final c:Le/a/o/b/d;

.field public final d:Le/a/o/b/i0;


# direct methods
.method public constructor <init>(Le/a/o/b/v;Ls1/w/f;Le/a/o/b/d;Le/a/o/b/i0;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "incomingCallContextRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "midCallReasonNotificationStateHolder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/b0;->a:Le/a/o/b/v;

    iput-object p2, p0, Le/a/o/b/b0;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/o/b/b0;->c:Le/a/o/b/d;

    iput-object p4, p0, Le/a/o/b/b0;->d:Le/a/o/b/i0;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/b/b0;->b:Ls1/w/f;

    return-object v0
.end method
