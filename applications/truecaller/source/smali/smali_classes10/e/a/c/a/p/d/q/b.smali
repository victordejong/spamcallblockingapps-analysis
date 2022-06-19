.class public final Le/a/c/a/p/d/q/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
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
.field public final synthetic b:Le/a/c/a/p/d/q/c;

.field public final synthetic c:Le/a/b0/a/b/a;


# direct methods
.method public constructor <init>(Le/a/c/a/p/d/q/c;Le/a/b0/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/d/q/b;->b:Le/a/c/a/p/d/q/c;

    iput-object p2, p0, Le/a/c/a/p/d/q/b;->c:Le/a/b0/a/b/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Le/a/b0/m/a/a;

    const-string v0, "profile"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/p/d/q/b;->c:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Le/a/b0/a/b/a;->pk(Z)V

    .line 5
    iget-object v0, p0, Le/a/c/a/p/d/q/b;->c:Le/a/b0/a/b/a;

    iget-object v2, p0, Le/a/c/a/p/d/q/b;->b:Le/a/c/a/p/d/q/c;

    invoke-virtual {v2, p1}, Le/a/c/a/p/d/q/a;->O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Le/a/c/a/p/d/q/b;->b:Le/a/c/a/p/d/q/c;

    .line 7
    iget-object v0, v0, Le/a/c/a/p/d/q/c;->f:Le/a/c/a/g/q0;

    .line 8
    iget-object v0, v0, Le/a/c/a/g/q0;->d:Landroid/widget/TextView;

    const-string v1, "binding.senderNameTv"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p1, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
