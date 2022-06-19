.class public final Le/a/c/a/j/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/c/a/j/b/c;

.field public final synthetic b:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Le/a/c/a/j/b/c;Ls1/z/b/p;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/d;->a:Le/a/c/a/j/b/c;

    iput-object p2, p0, Le/a/c/a/j/e/d;->b:Ls1/z/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/j/e/d;->b:Ls1/z/b/p;

    iget-object v0, p0, Le/a/c/a/j/e/d;->a:Le/a/c/a/j/b/c;

    .line 2
    iget-object v0, v0, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
