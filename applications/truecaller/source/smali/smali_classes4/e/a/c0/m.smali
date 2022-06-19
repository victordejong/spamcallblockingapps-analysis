.class public final Le/a/c0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c0/a;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Le/a/c0/o;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Le/a/c0/a;Landroid/widget/EditText;Le/a/c0/o;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/c0/m;->a:Le/a/c0/a;

    iput-object p2, p0, Le/a/c0/m;->b:Landroid/widget/EditText;

    iput-object p3, p0, Le/a/c0/m;->c:Le/a/c0/o;

    iput-object p4, p0, Le/a/c0/m;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/a/c0/m;->b:Landroid/widget/EditText;

    const-string v0, "variantNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v1, p0, Le/a/c0/m;->a:Le/a/c0/a;

    .line 3
    iget-object v1, v1, Le/a/c0/a;->g:Le/a/b0/h/c;

    if-eqz v1, :cond_3

    .line 4
    iget-object v2, p0, Le/a/c0/m;->c:Le/a/c0/o;

    .line 5
    iget-object v2, v2, Le/a/c0/o;->d:Le/a/c0/g;

    .line 6
    iget-object v2, v2, Le/a/c0/g;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/c0/m;->d:Landroid/widget/TextView;

    const-string v1, "variantValue"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Le/a/c0/m;->c:Le/a/c0/o;

    .line 9
    invoke-virtual {v5}, Le/a/c0/f;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 10
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Value: >%s<"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Le/a/c0/m;->a:Le/a/c0/a;

    .line 12
    iget-object p1, p1, Le/a/c0/a;->i:Le/a/l/p2/o0;

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Le/a/l/p2/o0;->c()V

    return-void

    :cond_2
    const-string p1, "premiumProductsRepository"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "abTestConfigSettings"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
