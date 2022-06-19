.class public final Le/a/h/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/e/f;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/e/g;->b:Landroid/content/Context;

    .line 2
    sget-object p1, Le/a/h/e/g$a;->b:Le/a/h/e/g$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/e/g;->a:Ls1/g;

    return-void
.end method
