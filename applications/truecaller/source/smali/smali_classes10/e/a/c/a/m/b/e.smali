.class public final Le/a/c/a/m/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/m/b/g$a;

.field public final synthetic b:Lcom/truecaller/insights/models/InsightsReminder;


# direct methods
.method public constructor <init>(Le/a/c/a/m/b/g$a;Lcom/truecaller/insights/models/InsightsReminder;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/b/e;->a:Le/a/c/a/m/b/g$a;

    iput-object p2, p0, Le/a/c/a/m/b/e;->b:Lcom/truecaller/insights/models/InsightsReminder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/m/b/e;->a:Le/a/c/a/m/b/g$a;

    .line 2
    iget-object p1, p1, Le/a/c/a/m/b/g$a;->d:Ls1/z/b/l;

    .line 3
    iget-object v0, p0, Le/a/c/a/m/b/e;->b:Lcom/truecaller/insights/models/InsightsReminder;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
