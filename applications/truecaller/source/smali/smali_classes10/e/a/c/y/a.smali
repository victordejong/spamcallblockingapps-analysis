.class public abstract Le/a/c/y/a;
.super Le/a/c/r/j/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/y/a$a;
    }
.end annotation


# instance fields
.field public final b:Le/a/c/a0/e;

.field public final c:Ls1/w/f;

.field public final d:Ls1/w/f;

.field public final e:Le/a/c/j/b;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/c/r/j/f;-><init>()V

    .line 2
    const-class v0, Le/a/c/y/a$a;

    const-string v1, "EntryPointAccessors.from\u2026), Injection::class.java)"

    invoke-static {v0, v1}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/y/a$a;

    .line 3
    invoke-interface {v0}, Le/a/c/y/a$a;->I()Le/a/c/a0/e;

    move-result-object v1

    iput-object v1, p0, Le/a/c/y/a;->b:Le/a/c/a0/e;

    .line 4
    invoke-interface {v0}, Le/a/c/y/a$a;->a()Ls1/w/f;

    move-result-object v1

    iput-object v1, p0, Le/a/c/y/a;->c:Ls1/w/f;

    .line 5
    invoke-interface {v0}, Le/a/c/y/a$a;->B()Le/a/c/j/b;

    move-result-object v1

    iput-object v1, p0, Le/a/c/y/a;->e:Le/a/c/j/b;

    .line 6
    invoke-interface {v0}, Le/a/c/y/a$a;->j()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Le/a/c/y/a;->f:Landroid/content/Context;

    .line 7
    invoke-interface {v0}, Le/a/c/y/a$a;->e()Ls1/w/f;

    move-result-object v0

    iput-object v0, p0, Le/a/c/y/a;->d:Ls1/w/f;

    return-void
.end method
