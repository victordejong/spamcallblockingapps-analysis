.class public final Le/a/c/a/m/c/a$b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/a$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/c/w/j;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/m/c/a$b;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/a$b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/a$b$a;->b:Le/a/c/a/m/c/a$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/c/w/j;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/m/c/a$b$a;->b:Le/a/c/a/m/c/a$b;

    iget-object v0, v0, Le/a/c/a/m/c/a$b;->a:Le/a/c/a/m/c/a;

    invoke-static {v0}, Le/a/c/a/m/c/a;->OA(Le/a/c/a/m/c/a;)Le/a/c/a/g/c0;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/c0;->a:Landroid/widget/TextView;

    const-string v1, "bindings.dateResult"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    invoke-virtual {v1, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
