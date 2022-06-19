.class public final Le/a/a/c/p8/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/p8/h;->a:Landroid/content/Context;

    iput-boolean p2, p0, Le/a/a/c/p8/h;->b:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/a/c/p8/h;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->b:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;

    iget-object v0, p0, Le/a/a/c/p8/h;->a:Landroid/content/Context;

    sget-object v1, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;->SHOW:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;

    invoke-static {v0, p1, v1}, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->c(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)Landroid/text/Spannable;

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
