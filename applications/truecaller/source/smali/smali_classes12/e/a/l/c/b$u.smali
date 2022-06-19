.class public final Le/a/l/c/b$u;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/b;->Jm(Le/a/l/v2/i/a/d;)V
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
.field public final synthetic b:Le/a/l/c/b;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Le/a/l/v2/i/a/d;


# direct methods
.method public constructor <init>(Le/a/l/c/b;Ljava/util/List;Le/a/l/v2/i/a/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/b$u;->b:Le/a/l/c/b;

    iput-object p2, p0, Le/a/l/c/b$u;->c:Ljava/util/List;

    iput-object p3, p0, Le/a/l/c/b$u;->d:Le/a/l/v2/i/a/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/l/c/b$u;->b:Le/a/l/c/b;

    .line 3
    iget-object v1, v0, Le/a/l/c/b;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Le/a/l/c/b$u;->d:Le/a/l/v2/i/a/d;

    .line 5
    iget-object v2, v2, Le/a/l/v2/i/a/d;->e:Ljava/util/List;

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Le/a/l/c/b;->TA(Landroid/widget/TextView;Ljava/util/List;I)V

    .line 7
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
