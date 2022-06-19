.class public final Le/a/g5/e0/j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/b0/p/c;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g5/e0/i;


# direct methods
.method public constructor <init>(Le/a/g5/e0/i;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/j;->b:Le/a/g5/e0/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/b0/p/c;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/g5/e0/j;->b:Le/a/g5/e0/i;

    .line 4
    sget-object v1, Le/a/g5/e0/i;->t:[Ls1/a/l;

    .line 5
    invoke-virtual {v0, p1}, Le/a/g5/e0/i;->SA(Le/a/b0/p/c;)Lcom/truecaller/common/tag/TagView;

    move-result-object p1

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Le/a/g5/e0/i;->UA(Lcom/truecaller/common/tag/TagView;Z)V

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
