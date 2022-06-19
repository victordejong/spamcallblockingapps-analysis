.class public final Le/a/l/g/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/g/u$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/l/g/q;

.field public final b:Le/a/l/p2/v0;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/g/q;Le/a/l/p2/v0;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "networkHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/g/u;->a:Le/a/l/g/q;

    iput-object p2, p0, Le/a/l/g/u;->b:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/g/u;->c:Ls1/w/f;

    return-void
.end method
