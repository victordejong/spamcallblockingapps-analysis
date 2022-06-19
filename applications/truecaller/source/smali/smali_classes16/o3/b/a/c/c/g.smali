.class public final Lo3/b/a/c/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/b/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/b/a/c/c/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo3/b/b/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Service;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo3/b/a/c/c/g;->a:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public Yt()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lo3/b/a/c/c/g;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lo3/b/a/c/c/g;->a:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lo3/b/b/b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Hilt service must be attached to an @AndroidEntryPoint Application. Found: %s"

    .line 5
    invoke-static {v1, v3, v2}, Le/q/f/a/d/a;->x(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    const-class v1, Lo3/b/a/c/c/g$a;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/b/a/c/c/g$a;

    .line 7
    invoke-interface {v0}, Lo3/b/a/c/c/g$a;->l0()Lo3/b/a/c/a/d;

    move-result-object v0

    iget-object v1, p0, Lo3/b/a/c/c/g;->a:Landroid/app/Service;

    .line 8
    check-cast v0, Le/a/r1$o;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object v1, v0, Le/a/r1$o;->b:Landroid/app/Service;

    .line 12
    const-class v2, Landroid/app/Service;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    new-instance v1, Le/a/r1$p;

    iget-object v2, v0, Le/a/r1$o;->a:Le/a/r1;

    iget-object v0, v0, Le/a/r1$o;->b:Landroid/app/Service;

    invoke-direct {v1, v2, v0}, Le/a/r1$p;-><init>(Le/a/r1;Landroid/app/Service;)V

    .line 14
    iput-object v1, p0, Lo3/b/a/c/c/g;->b:Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object v0, p0, Lo3/b/a/c/c/g;->b:Ljava/lang/Object;

    return-object v0
.end method
