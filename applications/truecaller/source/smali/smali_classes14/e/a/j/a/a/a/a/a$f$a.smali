.class public final Le/a/j/a/a/a/a/a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/a/a$f;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/j/a/a/a/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/a/a/a/a$f;


# direct methods
.method public constructor <init>(Le/a/j/a/a/a/a/a$f;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/a/a/a$f$a;->a:Le/a/j/a/a/a/a/a$f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/j/a/a/a/a/c;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/j/a/a/a/a/c;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Le/a/j/a/a/a/a/a$f$a;->a:Le/a/j/a/a/a/a/a$f;

    iget-object p2, p2, Le/a/j/a/a/a/a/a$f;->f:Le/a/j/a/a/a/a/a;

    .line 3
    sget-object v0, Le/a/j/a/a/a/a/a;->g:[Ls1/a/l;

    .line 4
    invoke-virtual {p2}, Le/a/j/a/a/a/a/a;->RA()Le/a/j/d/c;

    move-result-object p2

    .line 5
    iget-object p2, p2, Le/a/j/d/c;->a:Landroid/widget/TextView;

    const-string v0, "binding.buttonFalse"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Le/a/j/a/a/a/a/c;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Le/a/j/a/a/a/a/a$f$a;->a:Le/a/j/a/a/a/a/a$f;

    iget-object p2, p2, Le/a/j/a/a/a/a/a$f;->f:Le/a/j/a/a/a/a/a;

    .line 9
    invoke-virtual {p2}, Le/a/j/a/a/a/a/a;->RA()Le/a/j/d/c;

    move-result-object p2

    .line 10
    iget-object p2, p2, Le/a/j/d/c;->c:Landroid/widget/TextView;

    const-string v0, "binding.buttonTrue"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p1, Le/a/j/a/a/a/a/c;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p0, Le/a/j/a/a/a/a/a$f$a;->a:Le/a/j/a/a/a/a/a$f;

    iget-object p2, p2, Le/a/j/a/a/a/a/a$f;->f:Le/a/j/a/a/a/a/a;

    .line 14
    invoke-virtual {p2}, Le/a/j/a/a/a/a/a;->RA()Le/a/j/d/c;

    move-result-object p2

    .line 15
    iget-object p2, p2, Le/a/j/d/c;->e:Landroid/widget/TextView;

    const-string v0, "binding.title"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p1, Le/a/j/a/a/a/a/c;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p2, p0, Le/a/j/a/a/a/a/a$f$a;->a:Le/a/j/a/a/a/a/a$f;

    iget-object p2, p2, Le/a/j/a/a/a/a/a$f;->f:Le/a/j/a/a/a/a/a;

    .line 19
    invoke-virtual {p2}, Le/a/j/a/a/a/a/a;->RA()Le/a/j/d/c;

    move-result-object p2

    .line 20
    iget-object p2, p2, Le/a/j/d/c;->d:Landroid/widget/TextView;

    const-string v0, "binding.message"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p1, Le/a/j/a/a/a/a/c;->b:Ljava/lang/String;

    .line 22
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
