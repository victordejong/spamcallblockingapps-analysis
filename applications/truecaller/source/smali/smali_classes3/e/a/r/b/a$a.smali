.class public final Le/a/r/b/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/b/a;->i(Ljava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/r/b/a$a;->a:I

    iput-object p2, p0, Le/a/r/b/a$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/r/b/a$a;->c:Ljava/lang/Object;

    iput-object p4, p0, Le/a/r/b/a$a;->d:Ljava/lang/Object;

    iput-object p5, p0, Le/a/r/b/a$a;->e:Ljava/lang/Object;

    iput-object p6, p0, Le/a/r/b/a$a;->f:Ljava/lang/Object;

    iput-object p7, p0, Le/a/r/b/a$a;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Le/a/r/b/a$a;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/r/b/a$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/r/b/a;

    .line 2
    iget-object p1, p1, Le/a/r/b/a;->f:Le/a/r/b/h;

    .line 3
    iget-object v1, p0, Le/a/r/b/a$a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/wizard/adschoices/AdsChoice;

    check-cast p1, Le/a/r/b/n;

    invoke-virtual {p1, v1, v0}, Le/a/r/b/n;->Lj(Lcom/truecaller/wizard/adschoices/AdsChoice;Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/r/b/a$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/r/b/a;

    .line 6
    iget-object p1, p1, Le/a/r/b/a;->f:Le/a/r/b/h;

    .line 7
    iget-object v0, p0, Le/a/r/b/a$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/wizard/adschoices/AdsChoice;

    const/4 v1, 0x0

    check-cast p1, Le/a/r/b/n;

    invoke-virtual {p1, v0, v1}, Le/a/r/b/n;->Lj(Lcom/truecaller/wizard/adschoices/AdsChoice;Z)V

    return-void
.end method
