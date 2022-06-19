.class public final Le/a/l/c/a/f3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/r5/i0;

.field public final b:Le/a/l/p2/v0;

.field public final c:Le/a/p5/c0;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/r5/i0;Le/a/l/p2/v0;Le/a/p5/c0;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "whoViewedMeManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/f3;->a:Le/a/r5/i0;

    iput-object p2, p0, Le/a/l/c/a/f3;->b:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/c/a/f3;->c:Le/a/p5/c0;

    iput-object p4, p0, Le/a/l/c/a/f3;->d:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/a/f3;->a:Le/a/r5/i0;

    invoke-interface {v0}, Le/a/r5/i0;->b()Z

    move-result v0

    return v0
.end method
