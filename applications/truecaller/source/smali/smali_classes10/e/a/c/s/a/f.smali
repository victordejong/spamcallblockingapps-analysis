.class public final Le/a/c/s/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/s/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/s/a/f$a;
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/c/b/e;


# direct methods
.method public constructor <init>(Le/a/c/b/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "environmentHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/s/a/f;->b:Le/a/c/b/e;

    .line 2
    new-instance p1, Le/a/c/s/a/f$b;

    invoke-direct {p1, p0}, Le/a/c/s/a/f$b;-><init>(Le/a/c/s/a/f;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/c/s/a/f;->a:Ls1/g;

    return-void
.end method
