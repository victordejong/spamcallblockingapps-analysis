.class public final Le/a/d/c0/x1/f$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/p5/g;Le/a/d/q/v;Le/a/p5/c0;Le/a/p5/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/x1/f;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$a;->b:Le/a/d/c0/x1/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f$a;->b:Le/a/d/c0/x1/f;

    .line 2
    iget-object v0, v0, Le/a/d/c0/x1/f;->e:Ls1/z/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 4
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
