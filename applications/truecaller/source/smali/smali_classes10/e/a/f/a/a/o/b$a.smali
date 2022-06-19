.class public final Le/a/f/a/a/o/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/a/o/b;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/f/a/a/o/b;

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Le/a/f/a/a/o/b;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/a/o/b$a;->a:Le/a/f/a/a/o/b;

    iput-object p2, p0, Le/a/f/a/a/o/b$a;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/f/a/a/o/b$a;->a:Le/a/f/a/a/o/b;

    .line 2
    iget-object p1, p1, Le/a/f/a/a/o/b;->b:Le/a/f/a/a/o/c;

    .line 3
    iget-object p2, p0, Le/a/f/a/a/o/b$a;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Le/a/f/a/a/o/f;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Le/a/f/a/a/o/f;->e:Le/a/f/y/c;

    invoke-interface {p1, p2}, Le/a/f/y/c;->y(Ljava/lang/String;)V

    return-void
.end method
