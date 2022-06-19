.class public final synthetic Le/a/a/c/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/w7;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/w7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/v2;->a:Le/a/a/c/w7;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/a/c/v2;->a:Le/a/a/c/w7;

    .line 1
    sget v0, Le/a/a/c/w7;->b:I

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p1, Le/a/a/c/w7;->a:Le/a/a/c/f4;

    invoke-interface {p2}, Le/a/a/c/f4;->t()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p1, Le/a/a/c/w7;->a:Le/a/a/c/f4;

    invoke-interface {p2}, Le/a/a/c/f4;->w()V

    .line 4
    :goto_0
    invoke-virtual {p1}, Ln3/r/a/k;->dismiss()V

    return-void
.end method
