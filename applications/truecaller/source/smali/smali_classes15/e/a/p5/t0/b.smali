.class public final Le/a/p5/t0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>(Le/a/p5/t0/a;)V
    .locals 1

    const-string v0, "baseSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/p5/t0/b$a;

    invoke-direct {v0, p1}, Le/a/p5/t0/b$a;-><init>(Le/a/p5/t0/a;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/p5/t0/b;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final b()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Le/a/p5/t0/b;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/p5/t0/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
