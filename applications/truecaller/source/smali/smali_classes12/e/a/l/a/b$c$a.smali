.class public final Le/a/l/a/b$c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/a/b$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/net/Uri;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/a/b$c;


# direct methods
.method public constructor <init>(Le/a/l/a/b$c;)V
    .locals 0

    iput-object p1, p0, Le/a/l/a/b$c$a;->b:Le/a/l/a/b$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/net/Uri;

    const-string v0, "uri"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/l/a/b$c$a;->b:Le/a/l/a/b$c;

    iget-object v0, v0, Le/a/l/a/b$c;->a:Le/a/l/a/b;

    invoke-virtual {v0}, Le/a/l/a/b;->SA()Le/a/p4/b;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/p4/b;->Q(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/l/a/b$c$a;->b:Le/a/l/a/b$c;

    iget-object v0, v0, Le/a/l/a/b$c;->a:Le/a/l/a/b;

    .line 6
    invoke-virtual {v0}, Le/a/l/a/b;->RA()Landroid/widget/EditText;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
