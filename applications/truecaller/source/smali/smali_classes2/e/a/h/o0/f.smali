.class public final Le/a/h/o0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/c;


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

    iput-object p1, p0, Le/a/h/o0/f;->b:Landroid/content/Context;

    .line 2
    new-instance p1, Le/a/h/o0/f$a;

    invoke-direct {p1, p0}, Le/a/h/o0/f$a;-><init>(Le/a/h/o0/f;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/o0/f;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a()Le/a/j2;
    .locals 1

    iget-object v0, p0, Le/a/h/o0/f;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j2;

    return-object v0
.end method
