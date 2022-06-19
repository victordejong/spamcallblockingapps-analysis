.class public final Le/a/c/a/j/c/g;
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
.field public final synthetic b:Le/a/c/a/g/s0;

.field public final synthetic c:Le/a/c/a/j/c/j;

.field public final synthetic d:Le/a/c/a/j/b/j;

.field public final synthetic e:Le/a/b0/a/b/a;

.field public final synthetic f:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Le/a/c/a/g/s0;Le/a/c/a/j/c/j;Le/a/c/a/j/b/j;Le/a/b0/a/b/a;Ljava/util/Set;Ls1/z/b/p;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/c/g;->b:Le/a/c/a/g/s0;

    iput-object p2, p0, Le/a/c/a/j/c/g;->c:Le/a/c/a/j/c/j;

    iput-object p3, p0, Le/a/c/a/j/c/g;->d:Le/a/c/a/j/b/j;

    iput-object p4, p0, Le/a/c/a/j/c/g;->e:Le/a/b0/a/b/a;

    iput-object p6, p0, Le/a/c/a/j/c/g;->f:Ls1/z/b/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Le/a/b0/m/a/a;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/j/c/g;->e:Le/a/b0/a/b/a;

    iget-object v1, p0, Le/a/c/a/j/c/g;->c:Le/a/c/a/j/c/j;

    .line 4
    invoke-virtual {v1, p1}, Le/a/c/a/j/c/j;->N4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    invoke-static {v0, v1, v3, v2, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Le/a/c/a/j/c/g;->b:Le/a/c/a/g/s0;

    iget-object v0, v0, Le/a/c/a/g/s0;->e:Landroid/widget/TextView;

    const-string v1, "senderText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move-object v4, p1

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le/a/c/a/j/c/g;->d:Le/a/c/a/j/b/j;

    .line 9
    iget-object v4, p1, Le/a/c/a/j/b/j;->d:Ljava/lang/String;

    .line 10
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Le/a/c/a/j/c/g;->e:Le/a/b0/a/b/a;

    .line 12
    invoke-virtual {p1, v3}, Le/a/b0/a/b/a;->pk(Z)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
