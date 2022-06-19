.class public final Le/a/q/a/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/q/a/b/k;

.field public final synthetic b:Lcom/truecaller/contactfeedback/model/Profile;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Le/a/q/a/b/k;Lcom/truecaller/contactfeedback/model/Profile;I)V
    .locals 0

    iput-object p1, p0, Le/a/q/a/b/j;->a:Le/a/q/a/b/k;

    iput-object p2, p0, Le/a/q/a/b/j;->b:Lcom/truecaller/contactfeedback/model/Profile;

    iput p3, p0, Le/a/q/a/b/j;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/q/a/b/j;->a:Le/a/q/a/b/k;

    .line 2
    iget-object p1, p1, Le/a/q/a/b/k;->c:Le/a/q/a/b/l;

    .line 3
    iget-object v0, p0, Le/a/q/a/b/j;->b:Lcom/truecaller/contactfeedback/model/Profile;

    iget v1, p0, Le/a/q/a/b/j;->c:I

    invoke-interface {p1, v0, v1}, Le/a/q/a/b/l;->a(Lcom/truecaller/contactfeedback/model/Profile;I)V

    return-void
.end method
