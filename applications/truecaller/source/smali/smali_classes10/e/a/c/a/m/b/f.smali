.class public final Le/a/c/a/m/b/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/g/y1;


# direct methods
.method public constructor <init>(Le/a/c/a/g/y1;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/b/f;->b:Le/a/c/a/g/y1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "deepLink"

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Le/a/c/a/m/b/f;->b:Le/a/c/a/g/y1;

    iget-object v1, v1, Le/a/c/a/g/y1;->f:Landroid/widget/TextView;

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/c/a/m/b/f;->b:Le/a/c/a/g/y1;

    iget-object p1, p1, Le/a/c/a/g/y1;->f:Landroid/widget/TextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null link"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
