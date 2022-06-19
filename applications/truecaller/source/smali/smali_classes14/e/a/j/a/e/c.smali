.class public final Le/a/j/a/e/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/animation/Animator;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/j/a/e/b;


# direct methods
.method public constructor <init>(Le/a/j/a/e/b;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/e/c;->b:Le/a/j/a/e/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/animation/Animator;

    .line 2
    iget-object p1, p0, Le/a/j/a/e/c;->b:Le/a/j/a/e/b;

    invoke-static {p1}, Le/a/j/a/e/b;->QA(Le/a/j/a/e/b;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
