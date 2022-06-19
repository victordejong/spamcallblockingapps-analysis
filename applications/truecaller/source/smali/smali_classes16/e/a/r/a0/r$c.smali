.class public final Le/a/r/a0/r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a0/r;->tz(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/a0/r;

.field public final synthetic b:Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>(Le/a/r/a0/r;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/r$c;->a:Le/a/r/a0/r;

    iput-object p2, p0, Le/a/r/a0/r$c;->b:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Le/a/r/a0/r$c;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/k/c;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Le/a/r/a0/r$c;->a:Le/a/r/a0/r;

    invoke-virtual {p2}, Le/a/r/a0/r;->RA()Le/a/r/a0/w;

    move-result-object p2

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Le/a/r/a0/z;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "language"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, p1}, Le/a/r/a0/z;->Jj(Ljava/lang/String;)V

    .line 7
    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/r/a0/x;->yr()V

    :cond_0
    return-void
.end method
