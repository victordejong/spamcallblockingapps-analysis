.class public final Le/a/c/a/c/h/l/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/h/l/g;->W4(Le/a/c/a/l/b$g;)V
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
.field public final synthetic b:Le/a/c/a/g/c2;

.field public final synthetic c:Le/a/b0/a/b/a;

.field public final synthetic d:Le/a/c/a/c/h/l/g;

.field public final synthetic e:Le/a/c/a/l/b$g;


# direct methods
.method public constructor <init>(Le/a/c/a/g/c2;Le/a/b0/a/b/a;Le/a/c/a/c/h/l/g;Le/a/c/a/l/b$g;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/l/g$a;->b:Le/a/c/a/g/c2;

    iput-object p2, p0, Le/a/c/a/c/h/l/g$a;->c:Le/a/b0/a/b/a;

    iput-object p3, p0, Le/a/c/a/c/h/l/g$a;->d:Le/a/c/a/c/h/l/g;

    iput-object p4, p0, Le/a/c/a/c/h/l/g$a;->e:Le/a/c/a/l/b$g;

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
    iget-object v0, p0, Le/a/c/a/c/h/l/g$a;->c:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Le/a/b0/a/b/a;->pk(Z)V

    .line 5
    iget-object v0, p0, Le/a/c/a/c/h/l/g$a;->c:Le/a/b0/a/b/a;

    iget-object v2, p0, Le/a/c/a/c/h/l/g$a;->d:Le/a/c/a/c/h/l/g;

    invoke-virtual {v2, p1}, Le/a/c/a/a/a/a/e;->O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Le/a/c/a/c/h/l/g$a;->e:Le/a/c/a/l/b$g;

    .line 7
    iget-object v0, v0, Le/a/c/a/l/b$g;->d:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    .line 9
    iget-object v0, p0, Le/a/c/a/c/h/l/g$a;->d:Le/a/c/a/c/h/l/g;

    iget-object v3, p0, Le/a/c/a/c/h/l/g$a;->e:Le/a/c/a/l/b$g;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, v3, Le/a/c/a/l/b$g;->n:Ljava/lang/String;

    .line 12
    iget-object v4, p1, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eqz v4, :cond_4

    const-string v1, "Credit Card"

    .line 14
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object p1, p1, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    const/16 v2, 0x20

    .line 16
    invoke-static {v1, p1, v2, v0}, Le/d/c/a/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 17
    :cond_3
    iget-object p1, p1, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    if-nez v1, :cond_7

    const-string p1, " Bill"

    .line 19
    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 20
    :cond_7
    iget-object p1, v3, Le/a/c/a/l/b$g;->f:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Ls1/f0/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    :goto_3
    iget-object v0, p0, Le/a/c/a/c/h/l/g$a;->b:Le/a/c/a/g/c2;

    iget-object v0, v0, Le/a/c/a/g/c2;->m:Landroid/widget/TextView;

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
