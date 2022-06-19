.class public final Le/a/a/c/k/a/k$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/k/a/k;->t(Le/a/a/c/a7;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/k/a/k;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Le/a/a/c/k/a/k;Z)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/k/a/k$b;->b:Le/a/a/c/k/a/k;

    iput-boolean p2, p0, Le/a/a/c/k/a/k$b;->c:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 2
    iget-object p1, p0, Le/a/a/c/k/a/k$b;->b:Le/a/a/c/k/a/k;

    .line 3
    iget-object p1, p1, Le/a/a/c/k/a/k;->h:Le/a/a/c/k/a/j$b;

    .line 4
    iget-boolean v0, p0, Le/a/a/c/k/a/k$b;->c:Z

    invoke-interface {p1, v0}, Le/a/a/c/k/a/j$b;->u9(Z)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
