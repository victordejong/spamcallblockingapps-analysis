.class public abstract Le/a/y1;
.super Le/a/b0/g/a;
.source "SourceFile"

# interfaces
.implements Lo3/b/b/b;


# instance fields
.field public final b:Lo3/b/a/c/c/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/b0/g/a;-><init>()V

    .line 2
    new-instance v0, Lo3/b/a/c/c/d;

    new-instance v1, Le/a/y1$a;

    invoke-direct {v1, p0}, Le/a/y1$a;-><init>(Le/a/y1;)V

    invoke-direct {v0, v1}, Lo3/b/a/c/c/d;-><init>(Lo3/b/a/c/c/e;)V

    iput-object v0, p0, Le/a/y1;->b:Lo3/b/a/c/c/d;

    return-void
.end method


# virtual methods
.method public final Yt()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y1;->b:Lo3/b/a/c/c/d;

    .line 2
    invoke-virtual {v0}, Lo3/b/a/c/c/d;->Yt()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/y1;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b2;

    move-object v1, p0

    check-cast v1, Lcom/truecaller/TrueApp;

    invoke-interface {v0, v1}, Le/a/b2;->V1(Lcom/truecaller/TrueApp;)V

    .line 2
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
