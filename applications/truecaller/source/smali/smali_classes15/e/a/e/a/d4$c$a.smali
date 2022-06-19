.class public final Le/a/e/a/d4$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/d4$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/d4$c;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Le/a/e/a/d4$c;I)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/d4$c$a;->a:Le/a/e/a/d4$c;

    iput p2, p0, Le/a/e/a/d4$c$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/e/a/d4$c$a;->a:Le/a/e/a/d4$c;

    iget-object p1, p1, Le/a/e/a/d4$c;->a:Le/a/e/a/d4;

    iget p2, p0, Le/a/e/a/d4$c$a;->b:I

    invoke-static {p1}, Le/a/e/a/d4;->RA(Le/a/e/a/d4;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "phoneBusinessSender"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    .line 4
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    const/4 v3, 0x0

    .line 5
    new-instance v4, Le/a/e/a/e4;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v0, v5}, Le/a/e/a/e4;-><init>(Le/a/e/a/d4;ILjava/lang/String;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
