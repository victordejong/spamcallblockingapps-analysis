.class public final Le/a/g/a/c/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/c/a;->z6(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/g/a/c/a$a;->b:I

    iput-object p2, p0, Le/a/g/a/c/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/g/a/c/a$a;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 1
    iget-object v1, p0, Le/a/g/a/c/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/c/a;

    invoke-virtual {v1}, Le/a/g/a/c/a;->RA()Le/a/g/a/c/c;

    move-result-object v1

    iget-object v2, p0, Le/a/g/a/c/a$a;->c:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/c/a;

    sget v3, Lcom/truecaller/acs/R$string;->acs_reply_option_two:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.acs_reply_option_two)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/g/a/c/e;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Le/a/g/a/c/e;->Jj(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/g/a/c/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/c/a;

    invoke-virtual {v1}, Le/a/g/a/c/a;->RA()Le/a/g/a/c/c;

    move-result-object v1

    iget-object v3, p0, Le/a/g/a/c/a$a;->c:Ljava/lang/Object;

    check-cast v3, Le/a/g/a/c/a;

    sget v4, Lcom/truecaller/acs/R$string;->acs_reply_option_one:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.acs_reply_option_one)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/g/a/c/e;

    invoke-virtual {v1, v3, v2}, Le/a/g/a/c/e;->Jj(Ljava/lang/String;I)V

    return-object v0
.end method
