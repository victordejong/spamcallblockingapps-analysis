.class public final Le/a/c/a/a/a/a/j$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/a/a/a/j;->V4(Le/a/c/a/l/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/b0/m/a/a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b0/a/b/a;

.field public final synthetic c:Le/a/c/a/a/a/a/j;


# direct methods
.method public constructor <init>(Le/a/b0/a/b/a;Le/a/c/a/a/a/a/j;Le/a/c/a/l/b$b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/a/a/a/j$a;->b:Le/a/b0/a/b/a;

    iput-object p2, p0, Le/a/c/a/a/a/a/j$a;->c:Le/a/c/a/a/a/a/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Le/a/b0/m/a/a;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/a/a/a/j$a;->b:Le/a/b0/a/b/a;

    iget-object v1, p0, Le/a/c/a/a/a/a/j$a;->c:Le/a/c/a/a/a/a/j;

    invoke-virtual {v1, p1}, Le/a/c/a/a/a/a/e;->O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/a/a/a/j$a;->b:Le/a/b0/a/b/a;

    .line 5
    invoke-virtual {p1, v1}, Le/a/b0/a/b/a;->pk(Z)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
