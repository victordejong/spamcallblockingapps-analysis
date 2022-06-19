.class public final Lq3/b/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lq3/b/i/a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq3/b/e$a;


# direct methods
.method public constructor <init>(Lq3/b/e$a;)V
    .locals 0

    iput-object p1, p0, Lq3/b/d;->b:Lq3/b/e$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lq3/b/i/a;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lq3/b/d;->b:Lq3/b/e$a;

    iget-object v6, v0, Lq3/b/e$a;->c:[Lq3/b/b;

    .line 4
    array-length v7, v6

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v0, v6, v8

    .line 5
    invoke-interface {v0}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lq3/b/i/a;->a(Lq3/b/i/a;Ljava/lang/String;Lq3/b/i/d;Ljava/util/List;ZI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
