.class public final synthetic Le/a/e/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/i1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/b;->a:Le/a/e/c/i1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/e/c/b;->a:Le/a/e/c/i1;

    .line 1
    iget-object p2, p1, Le/a/e/c/i1;->g:Le/a/e/c/i1$a;

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p1, Le/a/e/c/i1;->d:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Le/a/e/c/i1;->g()Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    move-result-object p1

    check-cast p2, Le/a/e/g;

    invoke-virtual {p2, v0, p1}, Le/a/e/g;->a(Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;)V

    :cond_0
    return-void
.end method
