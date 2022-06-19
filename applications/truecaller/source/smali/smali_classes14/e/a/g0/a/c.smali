.class public final Le/a/g0/a/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/text/Editable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g0/a/b;


# direct methods
.method public constructor <init>(Le/a/g0/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/a/c;->b:Le/a/g0/a/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/text/Editable;

    .line 2
    iget-object p1, p0, Le/a/g0/a/c;->b:Le/a/g0/a/b;

    .line 3
    sget-object v0, Le/a/g0/a/b;->f:[Ls1/a/l;

    .line 4
    invoke-virtual {p1}, Le/a/g0/a/b;->PA()V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
