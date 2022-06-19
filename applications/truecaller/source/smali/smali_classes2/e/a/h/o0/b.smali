.class public final Le/a/h/o0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/k/b;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/o0/b;->b:Landroid/content/Context;

    .line 2
    new-instance p1, Le/a/h/o0/b$a;

    invoke-direct {p1, p0}, Le/a/h/o0/b$a;-><init>(Le/a/h/o0/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/o0/b;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "channelKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/o0/b;->d()Le/a/i4/e;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/i4/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/o0/b;->d()Le/a/i4/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le/a/i4/e;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "notification"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/o0/b;->d()Le/a/i4/e;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final d()Le/a/i4/e;
    .locals 1

    iget-object v0, p0, Le/a/h/o0/b;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i4/e;

    return-object v0
.end method
