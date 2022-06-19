.class public final Le/a/a/h1/o/o;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/h1/o/n$b;


# direct methods
.method public constructor <init>(Le/a/a/h1/o/n$b;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/o/o;->b:Le/a/a/h1/o/n$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 2
    iget-object v0, p0, Le/a/a/h1/o/o;->b:Le/a/a/h1/o/n$b;

    iget-object v0, v0, Le/a/a/h1/o/n$b;->f:Le/a/a/h1/o/n;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Le/a/a/h1/o/n;->m(FFZ)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
