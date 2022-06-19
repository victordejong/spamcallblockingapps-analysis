.class public final Le/a/a/m/f3/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/m/f3/d;

.field public final synthetic c:Le/a/o2/h;


# direct methods
.method public constructor <init>(Le/a/a/m/f3/d;Le/a/o2/h;)V
    .locals 0

    iput-object p1, p0, Le/a/a/m/f3/c;->b:Le/a/a/m/f3/d;

    iput-object p2, p0, Le/a/a/m/f3/c;->c:Le/a/o2/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/a/m/f3/c;->b:Le/a/a/m/f3/d;

    iget-object v0, p0, Le/a/a/m/f3/c;->c:Le/a/o2/h;

    .line 3
    invoke-virtual {p1, v0}, Le/a/a/m/f3/d;->B(Le/a/o2/h;)V

    .line 4
    iget-object p1, p0, Le/a/a/m/f3/c;->b:Le/a/a/m/f3/d;

    const-string v0, "DialerGranted"

    .line 5
    invoke-virtual {p1, v0}, Le/a/a/m/f3/d;->C(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/a/m/f3/c;->b:Le/a/a/m/f3/d;

    const-string v0, "DialerRejected"

    .line 7
    invoke-virtual {p1, v0}, Le/a/a/m/f3/d;->C(Ljava/lang/String;)V

    .line 8
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
