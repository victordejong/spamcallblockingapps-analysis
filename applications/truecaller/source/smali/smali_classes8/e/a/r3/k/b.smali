.class public final Le/a/r3/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/r3/k/a;

.field public final synthetic b:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;


# direct methods
.method public constructor <init>(Le/a/r3/k/a;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)V
    .locals 0

    iput-object p1, p0, Le/a/r3/k/b;->a:Le/a/r3/k/a;

    iput-object p2, p0, Le/a/r3/k/b;->b:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/r3/k/b;->a:Le/a/r3/k/a;

    .line 2
    iget-object v0, p1, Le/a/r3/k/a;->b:Le/a/r3/k/a$a;

    .line 3
    iget-object v1, p0, Le/a/r3/k/b;->b:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    .line 4
    iget-boolean p1, p1, Le/a/r3/k/a;->c:Z

    .line 5
    invoke-interface {v0, v1, p1}, Le/a/r3/k/a$a;->aa(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Z)V

    return-void
.end method
