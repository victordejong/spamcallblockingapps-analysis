.class public final Le/a/r5/n0$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r5/n0;->b(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r5/n0;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Le/a/r5/n0;Z)V
    .locals 0

    iput-object p1, p0, Le/a/r5/n0$b;->b:Le/a/r5/n0;

    iput-boolean p2, p0, Le/a/r5/n0$b;->c:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r5/n0$b;->b:Le/a/r5/n0;

    .line 2
    iget-object v0, v0, Le/a/r5/n0;->c:Le/a/l/p2/v0;

    .line 3
    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/a/r5/n0$b;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
