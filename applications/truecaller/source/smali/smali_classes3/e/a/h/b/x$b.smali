.class public final Le/a/h/b/x$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/x;->d(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/q<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "Ljava/lang/Double;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/b/x;


# direct methods
.method public constructor <init>(Le/a/h/b/x;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/x$b;->b:Le/a/h/b/x;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    .line 2
    iget-object p1, p0, Le/a/h/b/x$b;->b:Le/a/h/b/x;

    .line 3
    iget-boolean p1, p1, Le/a/h/b/x;->i:Z

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
