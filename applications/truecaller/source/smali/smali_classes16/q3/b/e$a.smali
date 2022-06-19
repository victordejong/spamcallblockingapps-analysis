.class public final Lq3/b/e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/b/e;-><init>(Ljava/lang/String;Ls1/a/c;[Ls1/a/c;[Lq3/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic b:Lq3/b/e;

.field public final synthetic c:[Lq3/b/b;


# direct methods
.method public constructor <init>(Lq3/b/e;[Lq3/b/b;)V
    .locals 0

    iput-object p1, p0, Lq3/b/e$a;->b:Lq3/b/e;

    iput-object p2, p0, Lq3/b/e$a;->c:[Lq3/b/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lq3/b/i/a;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lq3/b/k/u;->b:Lq3/b/k/u;

    .line 4
    sget-object v2, Lq3/b/k/u;->a:Lq3/b/i/d;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const-string v1, "type"

    move-object v0, p1

    move v4, v6

    move v5, v7

    .line 5
    invoke-static/range {v0 .. v5}, Lq3/b/i/a;->a(Lq3/b/i/a;Ljava/lang/String;Lq3/b/i/d;Ljava/util/List;ZI)V

    const-string v0, "kotlinx.serialization.Sealed<"

    .line 6
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq3/b/e$a;->b:Lq3/b/e;

    .line 7
    iget-object v1, v1, Lq3/b/e;->d:Ls1/a/c;

    .line 8
    invoke-interface {v1}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lq3/b/i/h$a;->a:Lq3/b/i/h$a;

    new-instance v2, Lq3/b/d;

    invoke-direct {v2, p0}, Lq3/b/d;-><init>(Lq3/b/e$a;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lq3/b/i/d;

    invoke-static {v0, v1, v3, v2}, Ls1/a/a/a/v0/f/d;->M(Ljava/lang/String;Lq3/b/i/h;[Lq3/b/i/d;Ls1/z/b/l;)Lq3/b/i/d;

    move-result-object v2

    const/4 v3, 0x0

    const-string v1, "value"

    move-object v0, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lq3/b/i/a;->a(Lq3/b/i/a;Ljava/lang/String;Lq3/b/i/d;Ljava/util/List;ZI)V

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
