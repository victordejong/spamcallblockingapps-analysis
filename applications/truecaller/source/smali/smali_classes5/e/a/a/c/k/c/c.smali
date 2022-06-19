.class public final Le/a/a/c/k/c/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
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
.field public final synthetic b:Le/a/a/c/k/c/d;


# direct methods
.method public constructor <init>(Le/a/a/c/k/c/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/k/c/c;->b:Le/a/a/c/k/c/d;

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

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/a/c/k/c/c;->b:Le/a/a/c/k/c/d;

    .line 3
    iget-object v0, v0, Le/a/a/c/k/c/d;->d:Le/a/a/c/c5;

    .line 4
    invoke-virtual {v0, p1}, Le/a/a/c/c5;->R0(I)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
