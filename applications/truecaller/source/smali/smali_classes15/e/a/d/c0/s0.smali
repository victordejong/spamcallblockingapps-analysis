.class public final Le/a/d/c0/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/q0;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/d/c0/j1;

.field public final c:Le/a/d/c0/e;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/c0/j1;Le/a/d/c0/e;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSupport"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callUserResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/s0;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/s0;->b:Le/a/d/c0/j1;

    iput-object p3, p0, Le/a/d/c0/s0;->c:Le/a/d/c0/e;

    return-void
.end method
