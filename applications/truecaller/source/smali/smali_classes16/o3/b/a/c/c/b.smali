.class public Lo3/b/a/c/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/a1$b;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo3/b/a/c/c/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lo3/b/a/c/c/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ln3/v/y0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/v/y0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lo3/b/a/c/c/b;->a:Landroid/content/Context;

    const-class v0, Lo3/b/a/c/c/c$a;

    .line 2
    invoke-static {p1, v0}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo3/b/a/c/c/c$a;

    .line 3
    invoke-interface {p1}, Lo3/b/a/c/c/c$a;->Y7()Lo3/b/a/c/a/b;

    move-result-object p1

    .line 4
    check-cast p1, Le/a/r1$c;

    .line 5
    new-instance v0, Le/a/r1$d;

    iget-object p1, p1, Le/a/r1$c;->a:Le/a/r1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/r1$d;-><init>(Le/a/r1;Le/a/h1;)V

    .line 6
    new-instance p1, Lo3/b/a/c/c/c$b;

    invoke-direct {p1, v0}, Lo3/b/a/c/c/c$b;-><init>(Lo3/b/a/b/a;)V

    return-object p1
.end method
