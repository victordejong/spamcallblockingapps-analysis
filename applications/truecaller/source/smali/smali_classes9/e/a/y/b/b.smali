.class public final Le/a/y/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/b/a;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/b/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/b/b;->a:Landroid/content/Context;

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/b/b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a/p5/s0/g;->k0(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method
