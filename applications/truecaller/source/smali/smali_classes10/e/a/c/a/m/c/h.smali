.class public final Le/a/c/a/m/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/g;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/g;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/h;->a:Le/a/c/a/m/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/c/a/m/c/h;->a:Le/a/c/a/m/c/g;

    .line 2
    sget-object v0, Le/a/c/a/m/c/g;->b:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/c/a/m/c/g;->QA()Le/a/c/a/g/z0;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/c/a/m/c/h;->a:Le/a/c/a/m/c/g;

    .line 5
    iget-object v1, p1, Le/a/c/a/g/z0;->a:Landroid/widget/EditText;

    const-string v2, "appVersion"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p1, Le/a/c/a/g/z0;->b:Landroid/widget/EditText;

    const-string v3, "countryCode"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object p1, p1, Le/a/c/a/g/z0;->d:Landroid/widget/EditText;

    const-string v3, "offsetVersion"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, v2, p1}, Le/a/c/a/m/c/g;->OA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
