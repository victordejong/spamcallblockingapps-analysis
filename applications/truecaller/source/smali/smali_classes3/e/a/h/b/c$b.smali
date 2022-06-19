.class public final Le/a/h/b/c$b;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/c;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/h/b/c$b;->a:I

    iput-object p2, p0, Le/a/h/b/c$b;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/h/b/c$b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Le/a/h/b/c$b;->a:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Le/a/h/b/c$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/c;

    .line 2
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 3
    iget-object p2, p0, Le/a/h/b/c$b;->c:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Le/a/h/b/j0$a;->O8(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/h/b/c$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/c;

    .line 6
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 7
    iget-object p2, p0, Le/a/h/b/c$b;->c:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Le/a/h/b/j0$a;->K6(Ljava/lang/String;)V

    return-void
.end method
