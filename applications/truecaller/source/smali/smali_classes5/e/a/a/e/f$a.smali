.class public final Le/a/a/e/f$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/f;-><init>(Landroid/content/Context;Ls1/w/f;Le/a/u3/g;Le/a/p5/c0;Le/a/b0/q/q;Le/a/q2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/e/f$a;->b:I

    iput-object p2, p0, Le/a/a/e/f$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Le/a/a/e/f$a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1
    iget-object v0, p0, Le/a/a/e/f$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/f;

    .line 2
    iget-object v0, v0, Le/a/a/e/f;->h:Le/a/u3/g;

    .line 3
    iget-object v3, v0, Le/a/u3/g;->g5:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x144

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 4
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    move-object v1, v0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Look at how @Truecaller helped me clean up my inbox. Try Inbox Cleaner today!"

    :goto_0
    return-object v1

    .line 5
    :cond_2
    throw v1

    .line 6
    :cond_3
    iget-object v0, p0, Le/a/a/e/f$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/f;

    .line 7
    iget-object v0, v0, Le/a/a/e/f;->h:Le/a/u3/g;

    .line 8
    iget-object v3, v0, Le/a/u3/g;->f5:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x143

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 9
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_4

    move-object v1, v0

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "Look at how Truecaller helped me clean up my inbox. Try Inbox Cleaner today!"

    :goto_1
    return-object v1

    .line 10
    :cond_6
    iget-object v0, p0, Le/a/a/e/f$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/f;

    .line 11
    iget-object v0, v0, Le/a/a/e/f;->h:Le/a/u3/g;

    .line 12
    iget-object v3, v0, Le/a/u3/g;->e5:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x142

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 13
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_7

    move-object v1, v0

    :cond_7
    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    const-string v1, "#TruecallerForSMS"

    :goto_2
    return-object v1
.end method
