.class public final Le/a/l/g/o$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/g/o;-><init>(Le/a/p5/c0;Le/a/l/g/d;Le/a/l/g/u;Le/a/l/c2;Le/a/l/p2/e0;ZLjava/lang/String;Ljava/lang/String;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Le/a/l/g/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/g/o;


# direct methods
.method public constructor <init>(Le/a/l/g/o;)V
    .locals 0

    iput-object p1, p0, Le/a/l/g/o$c;->b:Le/a/l/g/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/l/g/j;

    .line 1
    new-instance v1, Le/a/l/g/j;

    iget-object v2, p0, Le/a/l/g/o$c;->b:Le/a/l/g/o;

    .line 2
    iget-object v2, v2, Le/a/l/g/o;->i:Le/a/p5/c0;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f1202ae

    .line 3
    invoke-interface {v2, v5, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resourceProvider.getStri\u2026ftCongratsSendGiftAction)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, La2;

    invoke-direct {v4, v3, p0}, La2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2, v4}, Le/a/l/g/j;-><init>(Ljava/lang/String;Ls1/z/b/a;)V

    aput-object v1, v0, v3

    .line 4
    new-instance v1, Le/a/l/g/j;

    iget-object v2, p0, Le/a/l/g/o$c;->b:Le/a/l/g/o;

    .line 5
    iget-object v2, v2, Le/a/l/g/o;->i:Le/a/p5/c0;

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f1202ac

    .line 6
    invoke-interface {v2, v4, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026iftCongratsDismissAction)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, La2;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, La2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Le/a/l/g/j;-><init>(Ljava/lang/String;Ls1/z/b/a;)V

    aput-object v1, v0, v4

    .line 7
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
